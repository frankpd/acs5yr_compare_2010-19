#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Read in list of tables and variables, and generate create table statements by
obtaining datatypes for variables from the census API. Tables have the same names 
as the CSV data files generated from the previous script. Read each of the CSVs
and insert their records into the appropriate table. 

Frank Donnelly
July 2, 2025, revised July 3, 2025
"""

import os, csv, requests, psycopg2, pandas as pd

#year='2014'
year='2019'

# Database connection parameters
pgdb='acs_timeseries' #postgres db name
pguser='postgres'
pgpswd='postgres'
pgport='5432'
pghost='localhost'
pgschema='public' #postgres schema

infold=os.path.join('input','data_{}').format(year)
outfold=os.path.join('output','data_{}').format(year)
tabfold=os.path.join('output','data_{}','csv_todb').format(year)

geo_file=os.path.join(tabfold,'acs{}_geos.txt').format(year)
varskeep_file=os.path.join(infold,'ACS{}_Table_Shells.xlsx').format(year)

# FUNCTIONS

def varfixer(var):
    if '_' not in var:
        dashvar=var[:-3]+'_'+var[-3:] # insert dash between table and variable in ID
    else:
        dashvar=var
    return dashvar

def tabfixer(create_str,table_name,table_dict): # fix the end of the Create statement
    replacers={'int':'integer','float':'real','string':'text'} # replace with postgres types
    for old, new in replacers.items():
        create_str=create_str.replace(old,new)
    create_str=create_str.strip(',\n') # get rid of last comma
    create_str=create_str+');\n' # replace with correct table ending
    table_dict[table_name]=create_str
       
def tabloader(con,cur,table,reclist,inserts): # Insert records into table
    # mogrify is more efficient than executemany(), but eats up more memory
    argstr='({})'.format(inserts)
    args = ','.join(cur.mogrify(argstr, i).decode('utf-8') for i in reclist)
    cur.execute("INSERT INTO {} VALUES ".format(table)+(args))
    con.commit()
    print('Inserted', cur.rowcount,'records in table',table) 

# This block MUST read the SAME file used in previous scripts that created data CSVs
        
tables={} # tables and variables we want to keep
vars_df=pd.read_excel(varskeep_file)
vars_df.dropna(subset=['KEEP'],inplace=True)
for idx, row in vars_df.iterrows():
    if row['Table ID'] not in tables:
        dashvar=varfixer(row['UniqueID'])
        tables[row['Table ID']]=[dashvar]
    else:
        dashvar=varfixer(row['UniqueID'])
        tables[row['Table ID']].append(dashvar)

# MAKE CREATE TABLE STATEMENTS

sqldict={} # table name key, sql create statement value

# Table for lists of variables
vartab='acs{}_variables'.format(year) # same name as CSV files!
varcreate='''CREATE TABLE {} (
VAR_ID varchar(11) PRIMARY KEY,
VAR_LBL text);
'''.format(vartab)
sqldict[vartab]=varcreate

# Table for lists of data tables
tabtab='acs{}_tables'.format(year) # same name as CSV files!
tabcreate='''CREATE TABLE {} (
TAB_ID varchar(11) PRIMARY KEY,
TAB_LBL text);
'''.format(tabtab)
sqldict[tabtab]=tabcreate

# Table for geographies
geotab='acs{}_geos'.format(year) # same name as CSV files!
geocreate='''CREATE TABLE {} (
FILEID varchar(5),
STUSAB varchar(2),
SUMLEVEL	 varchar(3),
COMPONENT varchar(2),
LOGRECNO Varchar(9) PRIMARY KEY,
'''.format(geotab)

with open(geo_file,'r') as csv_file:
    reader=csv.reader(csv_file,delimiter='\t')
    header=next(reader) # Need this row to get list of variables

for h in header[5:]: # Omit the five standard vars already hardcoded
    newline=h+' string,\n'
    geocreate=geocreate+newline
tabfixer(geocreate,geotab,sqldict)

# All of the data tables
tabhead='''CREATE TABLE {} (
FILEID varchar(5),
FILETYPE varchar(6),
STUSAB varchar(2),
CHARITER varchar(3),
SEQUENCE varchar(4),
LOGRECNO varchar(9) PRIMARY KEY,
GEOID text UNIQUE,
'''
    
# Data types can vary, must get them from census API
for k,v in tables.items():
    datadict={}
    tabname='acs{}_{}'.format(year,k) # same name as CSV files!
    tabstr=tabhead.format(tabname)
    vars_url = f'https://api.census.gov/data/{year}/acs/acs5/groups/{k}.json'
    response=requests.get(vars_url)
    var_data=response.json()
    datadict.update(var_data['variables'])
    for var in v:
        var=var+'E' # estimates
        dtype=datadict[var]['predicateType']
        newline=var+' '+dtype+',\n'
        tabstr=tabstr+newline
    for var in v:
        var=var+'M' # margin of error (not always present, must check)
        if var in datadict:
            dtype=datadict[var]['predicateType']
            newline=var+' '+dtype+',\n'
            tabstr=tabstr+newline
        else: # exceptions are sample counts, give them a generic number type
            newline=var+' numeric,\n'
            tabstr=tabstr+newline
    tabfixer(tabstr,tabname,sqldict)
    
# INSERT RECORDS INTO DATABASE

checkstr="SELECT EXISTS (SELECT FROM pg_tables WHERE schemaname='{}' AND tablename = '{}')"

for k2,v2 in sqldict.items(): # table name key and create statement value
    conpg = psycopg2.connect(database=pgdb, user=pguser, password=pgpswd,
                             host=pghost, port=pgport)
    curpg=conpg.cursor()
    curpg.execute(checkstr.format(pgschema,k2))
    exists = curpg.fetchone()[0]
    if exists is True: # Do not overwrite existing tables, skip processing
        print('Table',k2,'already exists')
    else:
        try:
            tabfile=os.path.join(tabfold,k2+'.txt') 
            with open(tabfile,'r') as csv_file:
                records=[]
                reader=csv.reader(csv_file,delimiter='\t')
                header=next(reader)
                for r in reader:
                    cleanrow=[item if item !='' else None for item in r]
                    records.append(cleanrow) # postgres will not accept '' in numeric cols
                colcount=len(header)
                pholder='%s,'*colcount
                pholder=pholder[:-1] # strip final comma from placeholder string
                curpg.execute(v2)
                if colcount<=60:
                    tabloader(conpg,curpg,k2,records,pholder)
                else: # To avoid running out of memory, split big tables into two record sets
                    midpoint=len(records)//2
                    firsthalf=records[:midpoint]
                    secondhalf=records[midpoint:]
                    tabloader(conpg,curpg,k2,firsthalf,pholder)
                    tabloader(conpg,curpg,k2,secondhalf,pholder)
        except psycopg2.DatabaseError as e:
            print('Problem with',k2)
            print (e)
        finally:
            if conpg:
                conpg.close()
print('Done!')

    
    