#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
A one-off script to check records that had population change, but have a margin
of error of 0, a cv of 0, and NULL as significant difference (originally). 
These are likely controlled pop estimates that should be marked as TRUE for 
significant difference, as the individual estimates are truly different from 
one another.

Outcome of this test was modification to sql_create_tabstats.py, in the view
section and additional clause was added:
WHEN ch.{sd} IS NULL AND cv.{varid}=0 AND ch.{varid}THEN True

Frank Donnelly
July 21, 2025
"""

import os,csv,psycopg2

pgdb='acs_timeseries' #postgres db name
pguser='postgres'
pgpswd='postgres'
pgport='5432'
pghost='localhost'
pgschema='public' #postgres schema

conpg = psycopg2.connect(database=pgdb, user=pguser, password=pgpswd,
                             host=pghost, port=pgport)
curpg=conpg.cursor()

sql_str='''select c.geoid, g.name2019, c.{var}c, c.{var}cm, c.{var}sd, v.{var}c_cv
from acs_{tab}_change c
inner join acs_geos_join g on c.geoid=g.geo2019
inner join acs_{tab}_cvs v on c.geoid=v.geoid
where c.{var}cm =0 and v.{var}c_cv =0
order by c.geoid;'''

sqlstr_tables='''SELECT table_name FROM information_schema.tables 
WHERE table_schema = 'public' AND table_name LIKE '%_change';'''
curpg.execute(sqlstr_tables)
tables = [ts[0] for ts in curpg.fetchall()]
tables.sort()

sqlstr_getone=''' SELECT * FROM {} LIMIT 1'''

all_results=[]

for t in tables:
    tabid=t.split('_')[1]
    fgetone=sqlstr_getone.format(t)
    curpg.execute(fgetone)
    result = curpg.fetchone()
    cols = [desc[0] for desc in curpg.description]
    for c in cols: #
        if c.endswith('sd'):
            varid=c.removesuffix('sd') # get root variable ID from column name
            fsql=sql_str.format(var=varid,tab=tabid)
            curpg.execute(fsql)
            records = curpg.fetchall()
            if len(records)>0:
                for r in records:
                    newrec=list(r)
                    newrec.insert(0,varid)
                    newrec.insert(0,tabid)
                    all_results.append(newrec)
    print('Finished processing',tabid)
 
unique_vars=set()   
for x in all_results:
    unique_vars.add(x[1])
unique_list=list(unique_vars)
unique_list.sort()
 
header=['tabid','varid','geoid','geoname','change','change_moe','sigdif','change_cv']

outpath=os.path.join('output','test_reports','vars_popest.txt')
with open(outpath,'w') as txt_file:
    writer=csv.writer(txt_file,delimiter='\t',quoting=csv.QUOTE_NONNUMERIC)
    writer.writerow(header)
    writer.writerows(all_results)

print('Variables that may appear to be pop estimates:')    
for u in unique_list:
    print(u)

print('Done!')          
curpg.close()