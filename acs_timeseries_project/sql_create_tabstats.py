#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Creates SQL transaction files that will generate a table with values for 
change, pct change, and significant difference, a table with CVs for estimates
and change values, and a view with true/false values for significant difference
and categories for cv values. Queries rely on the standardized geography table
that harmonizes geoids between 2014 and 2019, and uses modified tables that
have been adjusted for inflation or harmonized categories.

Frank Donnelly
July 11, 2025 / rev July 21, 2025

"""

import os, psycopg2

# *** VARIABLES ***

year1='2014'
year2='2019'
tabyr1='acs'+year1
tabyr2='acs'+year2

change_sqlfile=os.path.join('sql_transactions','sql_change_tables.sql')
cv_sqlfile=os.path.join('sql_transactions','sql_cv_tables.sql')
cvsum_sqlfile=os.path.join('sql_transactions','sql_cvsum_views.sql')

# These tables have modified values that should be used instead of originals
mod_tables=['acs2014_b19013','acs2014_b25064','acs2014_b25077',
            'acs2014_b05002','acs2019_b25063']

# These tables are unweighted sample counts and must be skipped
skip_tabids=['b98001','b98003','b00001','b00002']

# Estimates in these tables are decimal values that must be handled differently
decimal_tables={'b01002':'1','b19083':'4','b25010':'2'}

pgdb='acs_timeseries' #postgres db name
pguser='postgres'
pgpswd='postgres'
pgport='5432'
pghost='localhost'
pgschema='public' #postgres schema

# *** FUNCTIONS TO CREATE SQL STATEMENTS ***

def change_statement(table,varpairs,tabyr1,tabyr2,year1,year2):
    # Creates table with change, pct change, and sig difference
    commands=[]
    sql_create='''DROP TABLE IF EXISTS {tabname} CASCADE;
    CREATE TABLE {tabname} AS'''
    sql_select='SELECT g.geo{y2} AS geoid,'
    sql_change='ROUND(CAST(e2.{est2} - e1.{est1} as numeric),{r}) AS {change}c,'  
    sql_change_moe='ROUND(CAST(SQRT((e1.{moe1}^2)+(e2.{moe2}^2)) AS numeric),{r}) AS {change_moe}cm,'
    sql_pct='ROUND(CAST((e2.{est2} - e1.{est1})/CAST(NULLIF(e1.{est1},0) AS numeric)*100 as numeric),1) AS {pct}p,' 
    sql_pct_moe='ROUND(CAST((SQRT(e2.{moe2}^2+((e2.{est2}/CAST(NULLIF(e1.{est1},0) as numeric))^2*e1.{moe1}^2))/NULLIF(e1.{est1},0))*100 as numeric),1) AS {pct_moe}pm,'
    sql_sigdif='ROUND(CAST(ABS((e2.{est2} - e1.{est1})/NULLIF(SQRT((e1.{moe1}/1.645)^2+(e2.{moe2}/1.645)^2),0)) as numeric),2) AS {sigdif}sd,'
    sql_from='''FROM acs_geos_join g
    INNER JOIN {tab1} e1
    ON g.geo{y1}=e1.geoid
    INNER JOIN {tab2} e2
    ON g.geo{y2}=e2.geoid
    ORDER BY g.geo{y2};'''
    if table in decimal_tables:
        decp=decimal_tables[table]
    else:
        decp='0'
    # format top clauses
    tabname='acs_'+table+'_change'
    fcreate=sql_create.format(tabname=tabname)
    fselect=sql_select.format(y2=year2)
    commands.extend([fcreate,fselect])
    for ke, vm in varpairs.items():
        rootvar=ke[:-1] # remove e or m suffix from variable id
        # calc change
        fchange=sql_change.format(est1=ke,est2=ke,change=rootvar,r=decp)
        # calc change moe
        fchange_moe=sql_change_moe.format(moe1=vm,moe2=vm,change_moe=rootvar,r=decp)
        # calc pct change
        fpct=sql_pct.format(est1=ke,est2=ke,pct=rootvar)
        # calc pct change moe
        fpct_moe=sql_pct_moe.format(est1=ke,est2=ke,moe1=vm,moe2=vm,pct_moe=rootvar)
        # calc significant difference
        fsigdif=sql_sigdif.format(est1=ke,est2=ke,moe1=vm,moe2=vm,sigdif=rootvar)
        commands.extend([fchange,fchange_moe,fpct,fpct_moe,fsigdif])
    commands[-1]=commands[-1].strip(',') # remove comma from final select
    # format from clause   
    ffrom=sql_from.format(tab1=tabyr1,tab2=tabyr2,y1=year1,y2=year2)
    commands.append(ffrom)
    commands_str='\n'.join(commands)
    statements_change.append(commands_str)
    return tabname

def cv_statement(table,varpairs,tabyr1,tabyr2,year1,year2):
    # Creates table with CVS for estimates and new change values
    commands=[]
    sql_create='''DROP TABLE IF EXISTS {tabname};
    CREATE TABLE {tabname} AS'''
    sql_select='SELECT c.geoid,'
    sql_cv='ROUND(CAST(ABS(({moe}/1.645)/CAST(NULLIF({est},0) as numeric))*100 as numeric),1) AS {cv},'
    sql_from='''FROM {changetab} c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN {tab1} e1
    ON j.geo{y1}=e1.geoid
    INNER JOIN {tab2} e2
    ON j.geo{y2}=e2.geoid
    ORDER BY c.geoid;'''
    # format select clause
    tabname='acs_'+table+'_cvs'
    changetab='acs_'+table+'_change'
    fcreate=sql_create.format(tabname=tabname)
    fselect=sql_select
    commands.extend([fcreate,fselect])
    for ke, vm in varpairs.items():
        rootvar=ke[:-1] # remove e or m suffix from variable id
        fcv_est1=sql_cv.format(est='e1.'+ke,moe='e1.'+vm,cv=rootvar+'e1_cv')
        fcv_est2=sql_cv.format(est='e2.'+ke,moe='e2.'+vm,cv=rootvar+'e2_cv')
        fcv_change=sql_cv.format(est=rootvar+'c',moe=rootvar+'cm',cv=rootvar+'c_cv')
        fcv_pct=sql_cv.format(est=rootvar+'p',moe=rootvar+'pm',cv=rootvar+'p_cv')
        commands.extend([fcv_est1,fcv_est2,fcv_change,fcv_pct])
    commands[-1]=commands[-1].strip(',') # remove comma from final select
    # format from clause   
    ffrom=sql_from.format(changetab=changetab,tab1=tabyr1,tab2=tabyr2,y1=year1,y2=year2)
    commands.append(ffrom)
    commands_str='\n'.join(commands)
    statements_cv.append(commands_str)
    return tabname

def cv_summary_statement(table,varpairs,year2):
    # Creates view that has boolean for sig difference and categories for CVs
    commands=[]
    sql_create='''DROP VIEW IF EXISTS {tabname};
    CREATE VIEW {tabname} AS'''
    sql_select='SELECT ch.geoid, g.sumlevel{y2} AS sumlevel, g.stusab{y2} AS stusab,'
    sql_case_cvcat='''
    CASE
    	WHEN cv.{var_id} < 15 Then 'high'
    	WHEN cv.{var_id} >= 15 and {var_id} < 30 Then 'medium'
    	WHEN cv.{var_id} >= 30 Then 'low'
    	ELSE NULL
    END AS {var_id}_cat,'''
    sql_case_sd='''CASE
    WHEN ch.{sd} > 1.645 THEN True
    WHEN ch.{sd} <= 1.645 THEN False
    WHEN ch.{sd} IS NULL AND cv.{chgcv} = 0 AND ch.{chgmoe} = 0 THEN True
    ELSE NULL
    END AS {sd}_tf,'''
    sql_from='''
    FROM {cvtab} cv
    INNER JOIN {changetab} ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo{y2}
    ORDER BY ch.geoid; '''
    # format select clause
    tabname='acs_'+table+'_cvsummary'
    changetab='acs_'+table+'_change'
    cvtab='acs_'+table+'_cvs'
    fcreate=sql_create.format(tabname=tabname)
    fselect=sql_select.format(y2=year2)
    commands.extend([fcreate,fselect])
    for ke, vm in varpairs.items():
        rootvar=ke[:-1] # remove e or m suffix from variable id
        fest1_cat=sql_case_cvcat.format(var_id=rootvar+'e1_cv')
        fest2_cat=sql_case_cvcat.format(var_id=rootvar+'e2_cv')
        fchg_cat=sql_case_cvcat.format(var_id=rootvar+'c_cv')
        fpct_cat=sql_case_cvcat.format(var_id=rootvar+'p_cv')
        fsd_tf=sql_case_sd.format(sd=rootvar+'sd',chgcv=rootvar+'c_cv',chgmoe=rootvar+'cm')
        commands.extend([fest1_cat,fest2_cat,fchg_cat,fpct_cat,fsd_tf])
    commands[-1]=commands[-1].strip(',') # remove comma from final select
    # format from clause   
    ffrom=sql_from.format(cvtab=cvtab, changetab=changetab,y2=year2)
    commands.append(ffrom)
    commands_str='\n'.join(commands)
    statements_cvsum.append(commands_str)
    
def addkey_statement(tabname,keycol,outlist):
    # Designate primary key to improve efficiency
    sql_addkey='ALTER TABLE {tabname} ADD CONSTRAINT pkey_{tabname} PRIMARY KEY ({key});'
    faddkey=sql_addkey.format(tabname=tabname,key=keycol)
    outlist.append(faddkey)

# *** CONNECT TO DB AND PROCESS ***

conpg = psycopg2.connect(database=pgdb, user=pguser, password=pgpswd,
                             host=pghost, port=pgport)
curpg=conpg.cursor()

sqlstr_tables="SELECT tab_id FROM acs2019_tables;"
curpg.execute(sqlstr_tables)
tabids = [t[0].lower() for t in curpg.fetchall()] # must get lcase table ids
tabids = [x for x in tabids if x not in skip_tabids] # drop skip tables

sql_getone='SELECT * FROM {} LIMIT 1;'
statements_change=[]
statements_addkey_chg=[]
statements_cv=[]
statements_addkey_cv=[]
statements_cvsum=[]

for t in tabids:
    tabyr1='acs'+year1+"_"+t
    # Ensure that we use modified tables where available
    if tabyr1 in mod_tables:
        tabyr1=tabyr1+'_mod'
    tabyr2='acs'+year2+"_"+t
    if tabyr2 in mod_tables:
        tabyr2=tabyr2+'_mod'       
    curpg.execute(sql_getone.format(tabyr2))
    cols = [desc[0] for desc in curpg.description]
    varpairs={} # hold est ID as key and moe ID as value
    for c in cols[6:]:
        if c.endswith('e'):
            cm=c[:-1]+'m'
            varpairs[c]=cm
    # Call functions to create tables
    chg_table=change_statement(t,varpairs,tabyr1,tabyr2,year1,year2)
    addkey_statement(chg_table,'geoid',statements_addkey_chg)
    cv_table=cv_statement(t,varpairs,tabyr1,tabyr2,year1,year2)
    addkey_statement(cv_table,'geoid',statements_addkey_cv)
    cv_summary_statement(t,varpairs,year2)

# *** WRITE OUTPUT ***

with open(change_sqlfile,'w') as outfile:
    outfile.write('-- Create Tables with change, pct change, and significant difference \n')
    outfile.write('BEGIN;\n')
    outfile.writelines(s + '\n\n' for s in statements_change)
    outfile.writelines(s + '\n\n' for s in statements_addkey_chg)
    outfile.write('END;')

with open(cv_sqlfile,'w') as outfile:
    outfile.write('-- Create Tables with cvs \n')
    outfile.write('BEGIN;\n')
    outfile.writelines(s + '\n\n' for s in statements_cv)
    outfile.writelines(s + '\n\n' for s in statements_addkey_cv)
    outfile.write('END;')

with open(cvsum_sqlfile,'w') as outfile:
    outfile.write('-- Create Views with difference true/false and cv categories \n')
    outfile.write('BEGIN;\n')
    outfile.writelines(s + '\n\n' for s in statements_cvsum)
    outfile.write('END;')      
    


