#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Generate full summary data - both estimates, change, pct change with MOEs, 
CVs and significant difference as values and categories for specific variables
and geographies

Frank Donnelly
July 14, 2025, rev July 15, 2025

"""

import os, psycopg2
from prettytable import PrettyTable

# *** VARIABLES ***

year1='2014'
year2='2019'

# MODIFY the following three variables to generate different reports

geoids=['04000US10','05000US10003','16000US1077580','86000US19703', '06000US3400910270','14000US10003980100'] 
varids=['b01001_001','b23025_005','c24030_030','b25010_001','b25063_023','b25077_001']
description='mix_de_nj_examples'

outfile='recordsummary_{}.txt'.format(description)
outpath=os.path.join('output','test_reports',outfile)
if os.path.isfile(outpath):
    os.remove(outpath) # delete file if it already exists

# These tables have modified values that should be used instead of originals
mod_tables=['acs2014_b19013','acs2014_b25064','acs2014_b25077',
            'acs2014_b05002','acs2019_b25063']

# *** SQL STATEMENTS ***

sql_varname="SELECT var_lbl from acs{}_variables_mod WHERE var_id='{}'"

sql_geoname="SELECT geo{y2}, name{y2} from acs_geos_join WHERE geo{y2} IN ({geolist});"

sql_main='''SELECT g.geo{y2} AS geoid, 
y1.{var}e AS Est{y1}, y1.{var}m AS Moe{y1}, y2.{var}e AS Est{y2}, y2.{var}m AS Moe{y2},
ch.{var}c AS Change, ch.{var}cm AS ChgMOE, ch.{var}p AS PctChg , ch.{var}pm AS PctMOE, 
ch.{var}sd AS SigDif, v.{var}sd_tf AS SigTF,
cv.{var}e1_cv AS Est1CV, cv.{var}e2_cv AS Est2CV, 
v.{var}e1_cv_cat AS CV1Rank, v.{var}e2_cv_cat AS CV2Rank, 
cv.{var}c_cv AS CVchg, cv.{var}p_cv AS CVpct, 
v.{var}c_cv_cat AS CvCRank, v.{var}p_cv_cat AS CVpRank
FROM acs_geos_join g
INNER JOIN {tab1} y1 ON g.geo{y1}=y1.geoid
INNER JOIN {tab2} y2 ON g.geo{y2}=y2.geoid
INNER JOIN acs_{tab}_change ch ON g.geo{y2}=ch.geoid
INNER JOIN acs_{tab}_cvs cv ON g.geo{y2}=cv.geoid
INNER JOIN acs_{tab}_cvsummary v ON g.geo{y2}=v.geoid
WHERE g.geo{y2} IN ({geolist})
ORDER BY g.geo{y2};'''

# *** DB CONNECT ***

pgdb='acs_timeseries' #postgres db name
pguser='postgres'
pgpswd='postgres'
pgport='5432'
pghost='localhost'
pgschema='public' #postgres schema

conpg = psycopg2.connect(database=pgdb, user=pguser, password=pgpswd,
                             host=pghost, port=pgport)
curpg=conpg.cursor()

# *** QUERIES ***

# Get names associated with geographies
geostr=','.join("'{}'".format(g) for g in geoids)
qgeoname=sql_geoname.format(y2=year2,geolist=geostr)
curpg.execute(qgeoname)
gnames = curpg.fetchall()
gdict={} 
for i in gnames:
    gdict[i[0]]=i[1]

# Loop through variables to produce output
for v in varids:
    t=v.split('_')[0]
    tabyr1='acs'+year1+"_"+t
    # Ensure that we use modified tables where available
    if tabyr1 in mod_tables:
        tabyr1=tabyr1+'_mod'
    tabyr2='acs'+year2+"_"+t
    if tabyr2 in mod_tables:
        tabyr2=tabyr2+'_mod'     
    
    # Get labels associated with variables
    qvarname=sql_varname.format(year2,v.upper()) # table ids in uppercase
    curpg.execute(qvarname)
    vname=curpg.fetchone()[0].replace('%',' / ')
    
    # Execeute the main query and write output    
    sql_query=sql_main.format(tab1=tabyr1, tab2=tabyr2, y1=year1,y2=year2,
                              tab=t,var=v,geolist=geostr)
    curpg.execute(sql_query)
    result = curpg.fetchall()    
    cols = [desc[0] for desc in curpg.description]
    for r in result:
        zipper=zip(cols,r) # pivot the data
        ziplist=list(zipper)
        ptable=PrettyTable()
        ptable.field_names=['varID','value']
        ptable.add_rows(ziplist)
        ptable.align['varID']='l'
        ptable.align['value']='r'
        with open(outpath,'a') as txt_file:
            txt_file.write(t.upper() +' '+vname+'\n')
            geolabel=gdict[r[0]] # Use the geoid in record to get geo name
            txt_file.write(geolabel+'\n') # 
            txt_file.write(ptable.get_string()+'\n'+'\n')
print("Wrote summary data for {} variables for {} geographies to {}".format(len(varids),len(geoids), outfile))
conpg.close()