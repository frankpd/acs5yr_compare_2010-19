#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Access the summary views in the database and create flat files that contain
significant difference boolean and CV for change. Each record contains geo IDs,
table and variable labels.

NOT USED because of memory issues, wrote summary_creator.py instead
Frank Donnelly
July 2025
"""

import os, csv, psycopg2

suffix='sd_tf'
label='sig_dif'
dtype='boolean'

#suffix='c_cv_cat'
#label='change_cv'
#dtype='text'

def tabloader(con,cur,table,reclist,inserts): # Insert records into table
    # mogrify is more efficient than executemany(), but eats up more memory
    argstr='({})'.format(inserts)
    args = ','.join(cur.mogrify(argstr, i).decode('utf-8') for i in reclist)
    cur.execute("INSERT INTO {} VALUES ".format(table)+(args))
    con.commit()
    print('Inserted', cur.rowcount,'records in table',table) 

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

sqlstr_create='''DROP TABLE IF EXISTS {tab};
CREATE TABLE {tab} (
geovar_id text PRIMARY KEY,
geoid text,
sumlevel varchar(3),
stusab varchar(2),
tabid text,
varid text,
{var} {dtype}
);'''

tabname='flat_'+label
fcreate=sqlstr_create.format(tab=tabname,var=label,dtype=dtype)
curpg.execute(fcreate)

sqlstr_tables='''SELECT table_name FROM information_schema.tables 
WHERE table_schema = 'public' AND table_name LIKE '%_cvsummary';'''
curpg.execute(sqlstr_tables)
tables = [ts[0] for ts in curpg.fetchall()]
tables.sort()

sqlstr_select=''' SELECT * FROM {}'''

for t in tables[0:3]:
    flat_records=[]
    col_idxs=[]
    keep_cols=[]
    fselect=sqlstr_select.format(t)
    curpg.execute(fselect)
    result = curpg.fetchall()
    cols = [desc[0] for desc in curpg.description]
    for i,v in enumerate(cols): # find the cols to keep and save their index and label
        if v.endswith(suffix):
            col_idxs.append(i)
            keep_cols.append(v)
    for r in result:
        record = [r[i] for i in col_idxs] # list of data values to keep for one record
        zipper=list(zip(keep_cols,record)) # associate column names with record values
        for z in zipper:
            tabid=z[0].split('_')[0] # get table ID from column name
            varid=z[0][:-5] # get root variable ID from column name
            uid=r[0]+'_'+varid # create a unique ID
            flatrec=list(r[0:3]) # get geo identifiers for that record
            flatrec.insert(0,uid)
            flatrec.extend([tabid,varid,z[1]]) # append other IDs and data value
            flat_records.append(flatrec) # append flat record to list
    colcount=len(flatrec)
    pholder='%s,'*colcount
    pholder=pholder[:-1] # strip final comma from placeholder string
    midpoint=len(flat_records)//2
    firsthalf=flat_records[:midpoint]
    secondhalf=flat_records[midpoint:]
    flat_records.clear()
    tabloader(conpg,curpg,tabname,firsthalf,pholder)
    del firsthalf
    tabloader(conpg,curpg,tabname,secondhalf,pholder)
    del secondhalf
    print('Processed records for',tabid)
curpg.close()

  
print('Done! Processed data for',label)
