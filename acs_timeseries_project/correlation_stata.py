#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Prepares ratio and nominal variables for analysis. Create statistical difference
and CV summary file counts for individual geographies, assigns them summary level,
division, and region codes. The div and reg codes are derived from three different
sources: geoids for geographies were state code is embedded in the ID, names
for geographies where state USPS code appears in the geo name, and files
created from GIS analysis to assign codes based on intersection of geographic
centroids to states. Files output to tsv, for import to STATA where 
correlation ratios can be computed.

Frank Donnelly
July 30, 2025 / rev July 31, 2025
"""

import os, csv, json, psycopg2, pandas as pd

geo_dir=os.path.join('output','summary_analysis')
div_dir=os.path.join('input','geo_fixing','divs_regions')

# Read the geocount files in
geo_file_sd=os.path.join(geo_dir,'geosd_count.json')
geo_sd=pd.read_json(geo_file_sd,orient='index')
geo_sd.index.name='geoid'
geo_sd['sumlevel']=geo_sd.index.str.slice(stop=3)

geo_file_cv=os.path.join(geo_dir,'geocv_count.json')
geo_cv=pd.read_json(geo_file_cv,orient='index')
geo_cv.index.name='geoid'
geo_cv['sumlevel']=geo_cv.index.str.slice(stop=3)
geo_cv['medhigh']=geo_cv['medium']+geo_cv['high']
geo_cv['medhigh_pct']=geo_cv['medium_pct']+geo_cv['high_pct']

# Create dictionary where key is state fips, value is dict with div and reg codes
div_file=os.path.join(div_dir,'div_reg_codes.txt')
div_dict={}
usps_dict={}
with open(div_file,'r') as csv_file:
    reader=csv.reader(csv_file,delimiter='|')
    header=next(reader)
    for row in reader:        
        div_dict[row[1]]={'div':row[4],'reg':row[7]}
        usps_dict[row[0]]=row[1]

geo_to_div=[] 

# Assign codes where state code is embedded in the geoid
slevs=['040','050','060','140','150','160','170','500','795']
glist=list(geo_sd.index)
for g in glist:
    sl=g[0:3]
    if sl in slevs:
        st=g[7:9]
        if st in div_dict:
            codes=div_dict[st]
            codelst=[g,codes['div'],codes['reg']]
            geo_to_div.append(codelst)
        else:
            pass

# Assign codes where state code is embedded in geo name
# Database connection parameters
pgdb='acs_timeseries' #postgres db name
pguser='postgres'
pgpswd='postgres'
pgport='5432'
pghost='localhost'
pgschema='public' #postgres schema

conpg = psycopg2.connect(database=pgdb, user=pguser, password=pgpswd,
                              host=pghost, port=pgport)
curpg=conpg.cursor()

sql_str='''SELECT * FROM acs_geos_join WHERE sumlevel2019 IN ('310','400');'''

curpg.execute(sql_str)
results = curpg.fetchall()   
conpg.close()

for record in results:
    g=record[0]
    stusps=record[1].split(',')[1][1:3]
    if stusps in usps_dict:
        st=usps_dict[stusps]
        codes=div_dict[st]
        codelst=[g,codes['div'],codes['reg']]
        geo_to_div.append(codelst)
    else:
        pass

# Assign codes where geos were assigned by GIS    
gis_files={'tribal_divs.csv':'250',
           'tribalsubdiv_divs.csv':'251',
           'tribaltract_divs.csv':'256',
           'tribalbgrp_divs.csv':'258',
           'zcta_divs.csv':'860'}

for k,v in gis_files.items():
    fpath=os.path.join(div_dir,k)
    with open(fpath,'r') as csv_file:
        reader=csv.reader(csv_file,delimiter='\t')
        header=next(reader)
        for row in reader:  
            geoid=v+'00US'+row[0]
            region=row[2]
            division=row[3]
            codelst=[geoid,division,region]
            geo_to_div.append(codelst)

# Create final dataframes, with div and region codes    
div_df=pd.DataFrame(geo_to_div,columns=['geoid','division','region'])
div_df.set_index('geoid',inplace=True,drop=True)      

geo_sd['division']=geo_sd.index.map(div_df['division'])
geo_sd['region']=geo_sd.index.map(div_df['region'])
geo_cv['division']=geo_cv.index.map(div_df['division'])
geo_cv['region']=geo_cv.index.map(div_df['region'])

# Records for US, regions, divs, and all recs for Puerto Rico fall out for sd
nulls=geo_sd.loc[geo_sd['division'].isnull()]

final_sd=geo_sd.loc[~geo_sd['division'].isnull(),['true','sumlevel','division','region']].copy().sort_values(by=['true','geoid'])
final_cv=geo_cv.loc[~geo_cv['division'].isnull(),['medhigh','sumlevel','division','region']].copy().sort_values(by=['medhigh','geoid'])

sd_out=os.path.join('output','summary_analysis','geosd_stata.tsv')
final_sd.to_csv(sd_out, sep='\t')
cv_out=os.path.join('output','summary_analysis','geocv_stata.tsv')
final_cv.to_csv(cv_out, sep='\t')