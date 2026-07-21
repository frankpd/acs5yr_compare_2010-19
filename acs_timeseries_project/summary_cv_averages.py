#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Calculates an average CV with standard deviation for summary levels by
variable, for change values that are statistically different.

Frank Donnelly
July 23, 2025

"""

import os, csv, psycopg2

# *** VARIABLES ***

# Tables for which block group data is not tabulated, will drop these records
tabs_no_blkgrp=['b05002','b07204','b08006','b13002','b14001','b19083','b26001']
blkgrp_sumlevs=['150','258']

outfile='recordsummary_avgcv_sigdif_only.txt'
outpath=os.path.join('output','summary_analysis',outfile)

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
WHERE table_schema = 'public' AND table_name LIKE '%_cvs';'''
curpg.execute(sqlstr_tables)
tables = [ts[0] for ts in curpg.fetchall()]
tables.sort()

sqlstr_getone=''' SELECT * FROM {} LIMIT 1'''

sqlstr_avg_geos='''SELECT g.sumlevel2019,
COUNT(CASE WHEN cv.{var}c_cv IS NULL THEN 1 ELSE 1 END) AS {var}c_cv_cnt,
round(AVG(cv.{var}c_cv),1) AS {var}c_cv_avg,
round(stddev_pop(cv.{var}c_cv),1) AS {var}c_cv_sdev
FROM acs_{tab}_cvs cv
INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
INNER JOIN acs_{tab}_change ch ON cv.geoid=ch.geoid
WHERE ch.{var}sd > 1.645 
OR (ch.{var}sd IS NULL AND cv.{var}c_cv =0 AND ch.{var}cm = 0)
GROUP BY g.sumlevel2019
ORDER BY g.sumlevel2019;
'''

all_records=[]
header=['table','variable','sumlevel','change_cv_count','avg_cv','sdev_cv']

for t in tables:
    tabid=t.split('_')[1]
    fgetone=sqlstr_getone.format(t)
    curpg.execute(fgetone)
    result = curpg.fetchone()
    cols = [desc[0] for desc in curpg.description]
    for c in cols: #
        if c.endswith('c_cv'):
            varid=c.removesuffix('c_cv') # get root variable ID from column name
            fgeos=sqlstr_avg_geos.format(var=varid,tab=tabid)
            curpg.execute(fgeos)
            records=curpg.fetchall()
            for r in records:
                # Don't add blockgroup records if table doesn't include them
                if tabid in tabs_no_blkgrp and r[0] in blkgrp_sumlevs:
                    pass
                else:
                    newrec=[tabid,varid]
                    newrec.extend(r)
                    all_records.append(newrec)
    print('Processed summaries for table',t)
            
curpg.close()

with open(outpath,'w') as csv_file:
    writer=csv.writer(csv_file,delimiter='\t',quoting=csv.QUOTE_NONNUMERIC)
    writer.writerow(header)
    writer.writerows(all_records)

print('Done!')

