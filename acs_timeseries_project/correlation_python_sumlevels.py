#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Calculate spearman's correlation coefficeints between several ratio variables
and count of significant difference and medium / high CVs for sig dif values
for every geography. Draws from a View in the database that collates the 
variables together. This iteration produces results by individual summary levels
and writes results to text file and a pivoted Excel file.

Frank Donnelly
July 29, 2025 / rev Aug 18, 2025
"""

import os, csv, json, psycopg2, pandas as pd
from scipy import stats

geo_dir=os.path.join('output','summary_analysis')

geo_file_sd=os.path.join(geo_dir,'geosd_count.json')
geo_sd=pd.read_json(geo_file_sd,orient='index')
geo_sd.index.name='geoid'

geo_file_cv=os.path.join(geo_dir,'geocv_count.json')
geo_cv=pd.read_json(geo_file_cv,orient='index')
geo_cv.index.name='geoid'
geo_cv['medhigh']=geo_cv['medium']+geo_cv['high']
geo_cv['medhigh_pct']=geo_cv['medium_pct']+geo_cv['high_pct']


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

sql_str='''SELECT * FROM corr_vars;'''

curpg.execute(sql_str)
results = curpg.fetchall()
cols = [desc[0] for desc in curpg.description]
conpg.close()

corvars = pd.DataFrame(results, columns=cols)
corvars.set_index('geoid',inplace=True,drop=True)

# Value for the entire US is a huge outlier
joined_sd=pd.merge(geo_sd,corvars,left_index=True,right_index=True,how='inner')
joined_sd.drop('01000US',inplace=True)
joined_cv=pd.merge(geo_cv,corvars,left_index=True,right_index=True,how='inner')
joined_cv.drop('01000US',inplace=True)

sumlevs = joined_sd['sumlevel'].unique()

# Create rankings for variables
cvars=['sample2014','samplesize_pct','avgpop','popchange','pctchange']
cvars_nr=['sample2014','avgpop','popchange']
rvars=[]
for c in cvars:
    joined_sd[c+'_rank']=joined_sd[c].rank(method='min')
    joined_cv[c+'_rank']=joined_cv[c].rank(method='min')
    rvars.append(c+'_rank')

sdcorr=[]
cvcorr=[]

for s in sumlevs:
    slev_sd=joined_sd.loc[joined_sd['sumlevel']==s].copy()
    slev_cv=joined_cv.loc[joined_cv['sumlevel']==s].copy()

    # Tests on ranked variables
    for v in rvars:
        corr=stats.spearmanr(slev_sd['true'],slev_sd[v],nan_policy='omit')
        cresult=[s,v,str(round(corr.statistic,3)),str(round(corr.pvalue,3))]
        sdcorr.append(cresult)
        print('SD',s,v,corr.statistic,corr.pvalue)
        corr=stats.spearmanr(slev_cv['medhigh'],slev_cv[v],nan_policy='omit')
        cresult=[s,v,str(round(corr.statistic,3)),str(round(corr.pvalue,3))]
        cvcorr.append(cresult)
        print('CV',s,v,corr.statistic,corr.pvalue)
        
    print('\n')
    
    # For comparison, test on unranked integer variables
    # for nr in cvars_nr:
    #     corr=stats.spearmanr(slev_sd['true'],slev_sd[nr],nan_policy='omit')
    #     print('SD',s,nr,corr.statistic,corr.pvalue)
    #     corr=stats.spearmanr(slev_cv['medhigh'],slev_cv[nr],nan_policy='omit')
    #     print('CV',s,nr,corr.statistic,corr.pvalue)

sdcorr.sort(key=lambda x:x[1])
cvcorr.sort(key=lambda x:x[1])
    
outfile=os.path.join(geo_dir,'spearman_results_by_sumlevel.txt')    
with open (outfile,'w') as txt_file:
    txt_file.write("SPEARMAN'S CORRELATIONS AND P VALUES FOR ACS ESTIMATES BY SUMMARY LEVEL\n\n")
    txt_file.write("For Counts of Geographies that are: \n")
    txt_file.write("\nSignificantly Different = True between 2014 and 2019\n")
    for rec in sdcorr:
        txt_file.writelines('\t'.join(rec)+'\n')
    txt_file.write("\nMedium / High CV for Change for Sig Different Values \n")
    for rec in cvcorr:
        txt_file.writelines('\t'.join(rec)+'\n')

dfcols=['sumlevel','var','spcorr','pval']        
sd_df = pd.DataFrame(sdcorr,columns=dfcols)
sd_piv=sd_df.pivot(index='sumlevel', columns='var', values=['spcorr','pval'])
sd_out=os.path.join(geo_dir,'spearman_results_by_sumlevel_sd.xlsx')
sd_piv.to_excel(sd_out,engine='openpyxl')

cv_df = pd.DataFrame(cvcorr,columns=dfcols)
cv_piv=cv_df.pivot(index='sumlevel', columns='var', values=['spcorr','pval'])
cv_out=os.path.join(geo_dir,'spearman_results_by_sumlevel_cv.xlsx')
cv_piv.to_excel(cv_out,engine='openpyxl')

print('Done!')
