#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
For debugging purposes, write record for one geography from all data tables
to one file.

Frank Donnelly
July 3, 2025
"""

import os, psycopg2
from prettytable import PrettyTable

year='2019'
geoid='05000US02013' # Aleutians East Borough, Alaska

outfile='summary_acs{}_{}.txt'.format(year,geoid)
outfold=os.path.join('output','data_{}').format(year)
outpath=os.path.join(outfold,outfile)

if os.path.isfile(outpath):
    os.remove(outpath) # delete file if it already exists

pgdb='acs_timeseries' #postgres db name
pguser='postgres'
pgpswd='postgres'
pgport='5432'
pghost='localhost'
pgschema='public' #postgres schema

conpg = psycopg2.connect(database=pgdb, user=pguser, password=pgpswd,
                             host=pghost, port=pgport)
curpg=conpg.cursor()

sqlstr_tables="SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';"
curpg.execute(sqlstr_tables)

# Fetch all table names
tables = curpg.fetchall()

sqlstr="SELECT * FROM {} WHERE geoid='{}';"
sqlstr2="SELECT tab_lbl FROM acs{}_tables WHERE tab_id ='{}';"
skip=('_geos','_variables','_tables')
tables.sort()
i=0
for t in tables:
    if t[0].startswith('acs{}'.format(year)) and not t[0].endswith(skip):  
        sql_select=sqlstr.format(t[0],geoid)
        curpg.execute(sql_select)
        record = curpg.fetchone()
        cols = [desc[0] for desc in curpg.description]
        zipper=zip(cols,record)
        ziplist=list(zipper)
        tabid=cols[7].split('_')[0]
        sql_select2=sqlstr2.format(year,tabid.upper())
        curpg.execute(sql_select2)
        tabname = curpg.fetchone()[0]
        ptable=PrettyTable()
        ptable.field_names=['varID','value']
        ptable.add_rows(ziplist)
        ptable.align['varID']='l'
        ptable.align['value']='r'
        with open(outpath,'a') as txt_file:
            txt_file.write(ptable.get_string(title=tabname)+'\n')
        i=i+1
conpg.close()
print('Done! Wrote',i,'tables to file.')







