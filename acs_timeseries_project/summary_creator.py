#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Access the summary views in the database and create flat files that contain
significant difference boolean and CV category for change. Each record represents counts
a category (true / false or 3 cv categories, including nulls) for a summary level by
and variable. CV files calculated for all records, and just for records where
estimates were statistically different.

Frank Donnelly
July 17, 2025 / rev July 18, 2025
"""

import os, csv, psycopg2

# *** VARIABLES ***

#Comment these variables on / off to run process for one versus the other
suffix='sd_tf'
label='sig_dif'
description='sig_dif'
sql=1

# sql variable indicates whether to run operation on all records - 1
# or just sig different records - 2

# suffix='c_cv_cat'
# label='change_cv'
# description='chg_cv_all'
# sql=1
# description='chg_cv_only_sigdf'
# sql=2

# Tables for which block group data is not tabulated, will drop these records
tabs_no_blkgrp=['b05002','b07204','b08006','b13002','b14001','b19083','b26001']
blkgrp_sumlevs=['150','258']

colname=label+'_count'

outfile='recordsummary_{}.txt'.format(description)
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
WHERE table_schema = 'public' AND table_name LIKE '%_cvsummary';'''
curpg.execute(sqlstr_tables)
tables = [ts[0] for ts in curpg.fetchall()]
tables.sort()

sqlstr_getone=''' SELECT * FROM {} LIMIT 1'''

sqlstr_group='''SELECT sumlevel, {var}, 
COUNT(CASE WHEN {var} IS NULL THEN 1 ELSE 1 END) AS {sumvar}
FROM {table}
GROUP BY sumlevel, {var}
ORDER BY sumlevel, {var};
'''

sqlstr_where='''SELECT sumlevel, {var}, 
COUNT(CASE WHEN {var} IS NULL THEN 1 ELSE 1 END) AS {sumvar}
FROM {table}
WHERE {var2}sd_tf IS TRUE
GROUP BY sumlevel, {var}
ORDER BY sumlevel, {var};
'''

all_records=[]
header=['table','variable','sumlevel',label,colname]

for t in tables:
    tabid=t.split('_')[1]
    fgetone=sqlstr_getone.format(t)
    curpg.execute(fgetone)
    result = curpg.fetchone()
    cols = [desc[0] for desc in curpg.description]
    for c in cols: #
        if c.endswith(suffix):
            varid=c.removesuffix(suffix) # get root variable ID from column name
            if sql==1:
                fgroup=sqlstr_group.format(var=c,sumvar=colname,table=t)
            elif sql==2:
                fgroup=sqlstr_where.format(var=c,sumvar=colname,var2=varid,table=t)
            else:
                quit()
            curpg.execute(fgroup)
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

