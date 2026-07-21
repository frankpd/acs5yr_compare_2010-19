#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
For every individual geography, counts the number of distinct instances where 
estimates are significantly different, and if different, counts cv categories. 
Calculate percent totals and write to JSON.

Frank Donnelly
July 22, 2025, rev Aug 12, 2025
"""
import os,csv,psycopg2,json

outpath=os.path.join('output','summary_analysis')
geosd_file=os.path.join(outpath,'geosd_count.json')
geocv_file=os.path.join(outpath,'geocv_count.json')

# Tables for which block group data is not tabulated, will drop these records
tabs_no_blkgrp=['b05002','b07204','b08006','b13002','b14001','b19083','b26001']
blkgrp_sumlevs=['150','258']

# These tables had only 1 var for testing purposes. Drop from analysis
droptabs=['b09001','b09020']

# These variables are duplicates, same var in different tables
dupevars={'b01001_001':['b02001_001','b03002_001','b05002_001'],
          'b11001_001':['b19001_001'],
          'b23025_003':['c24030_001'],
          'b25002_002':['b25003_001'],
          'b25003_003':['b25063_001','b25070_001']}

dropvars=[v for lst in dupevars.values() for v in lst]

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

sqlstr_tables='''SELECT table_name FROM information_schema.tables 
WHERE table_schema = 'public' AND table_name LIKE '%_cvsummary';'''
curpg.execute(sqlstr_tables)
tables = [ts[0] for ts in curpg.fetchall()]
tables.sort()

sqlstr_getone=''' SELECT * FROM {} LIMIT 1;'''

sqlstr_getvar='''SELECT sumlevel, geoid, {var}sd_tf, {var}c_cv_cat FROM {tab};'''

curpg.execute('SELECT geo2019 FROM acs_geos_join;')
geos=[g[0] for g in curpg.fetchall()]

geodict_sd={}
geodict_cv={}
for g in geos:
    geodict_sd[g]={True:0,False:0,None:0}
    geodict_cv[g]={'low':0,'medium':0,'high':0,None:0}

for t in tables:
    tabid=t.split('_')[1]
    if tabid in droptabs:
        tables.remove(t)

for t in tables:
    tabid=t.split('_')[1]
    fgetone=sqlstr_getone.format(t)
    curpg.execute(fgetone)
    result = curpg.fetchone()
    cols = [desc[0] for desc in curpg.description]
    for c in cols: #
        if c.endswith('sd_tf'):
            varid=c.removesuffix('sd_tf') # get root variable ID from column name
            fgetvar=sqlstr_getvar.format(var=varid,tab=t)
            curpg.execute(fgetvar)
            records=curpg.fetchall()
            for r in records:
                # Don't add blockgroup records if table doesn't include them
                if tabid in tabs_no_blkgrp and r[0] in blkgrp_sumlevs:
                    pass
                # Only use distinct variables, skip duplicates
                if tabid in dropvars:
                    pass
                else:
                    geo=r[1]
                    sd=r[2]
                    geodict_sd[geo][sd]=geodict_sd[geo][sd]+1
                    if sd is True:
                        cv=r[3]
                        geodict_cv[geo][cv]=geodict_cv[geo][cv]+1
    print('Processed summaries for table',t)
curpg.close()

for i,v in geodict_sd.items():
    tot=sum(v.values())
    v['true_pct']=round(((v[True]/tot)*100),1)
    v['false_pct']=round(((v[False]/tot)*100),1)
    v['null_pct']=round(((v[None]/tot)*100),1)
    
for i,v in geodict_cv.items():
    tot=sum(v.values())
    if tot==0:
        v['low_pct']=None
        v['medium_pct']=None
        v['high_pct']=None
        v['null_pct']=None
    else:
        v['low_pct']=round(((v['low']/tot)*100),1)
        v['medium_pct']=round(((v['medium']/tot)*100),1)
        v['high_pct']=round(((v['high']/tot)*100),1)
        v['null_pct']=round(((v[None]/tot)*100),1)

    
with open(geosd_file, "w") as json_file:
    json.dump(geodict_sd, json_file, indent=4)
with open(geocv_file, "w") as json_file:
    json.dump(geodict_cv, json_file, indent=4)
print('Done!')