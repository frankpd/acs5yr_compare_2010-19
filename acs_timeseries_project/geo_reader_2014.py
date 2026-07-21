# -*- coding: utf-8 -*-
"""
Read Census ACS FTP geography file and filter records and columns for 
specific summary levels - ACS 2014

Differences from 2019: geo template file is xls, not xlsx

Frank Donnelly
June 20, 2025 / rev June 26, 2026
"""

import os, csv, pandas as pd

sumlevels=['010','020','030','040','050','060','140','150','160','170','250',
           '251','256','258','310','330','400','500','795','860']

year='2014'

geofolder=os.path.join('input','data_{}','{}_ACS_Geography_Files').format(year,year)
tempfolder=os.path.join('input','data_{}','{}_5yr_Summary_FileTemplates').format(year,year)
tempfile=os.path.join(tempfolder,'{}_SFGeoFileTemplate.xls'.format(year))

geo_out=os.path.join('output','data_{}','csv_todb','acs{}_geos.txt').format(year,year)
sum_out=os.path.join('output','data_{}','geo_summary_{}.txt').format(year,year)
log_out=os.path.join('output','data_{}','keeprecs_{}.txt').format(year,year)

# Read template file
temp_df=pd.read_excel(tempfile)
temp_df.drop(0,inplace=True) # drop labels row

# Add relevant records to template file based on summary levels
geo_list=[]
stcount=0
for gfile in os.listdir(geofolder):
    if gfile.endswith('.csv'):
        gcsv=os.path.join(geofolder,gfile)
        stusps=1 # state code
        sumcode=2 # summary level code
        compcode=3 # component code
        logrec=4 # logrecno code
        with open (gcsv,'r',encoding='latin-1') as csv_file:
            reader=csv.reader(csv_file)
            for row in reader:
                if row[sumcode] in sumlevels and row[compcode]=='00':
                    row[logrec]=row[stusps].lower()+row[logrec]
                    geo_list.append(row)
        print ('Read data for',row[stusps])
        stcount=stcount+1
print("Read data for {} geofiles".format(stcount))

geo_df=pd.DataFrame(geo_list, columns=temp_df.columns,dtype=object)
   
# Replace empty strings with nulls, delete columns with no values    
nan_value = float("NaN")
geo_df.replace("", nan_value, inplace=True)
geo_df.dropna(how='all', axis=1, inplace=True)
   
geo_df.to_csv(geo_out,sep='\t',header=True,index=False,na_rep='')
geo_df[['LOGRECNO','GEOID']].to_csv(log_out,sep='\t',header=True,index=False,na_rep='')

print('Output data for geodata file')
dfrows,dfcols=geo_df.shape
varcols=dfcols-5
print('Summary level count:')
print(geo_df['SUMLEVEL'].value_counts().sort_index())
print('Wrote {} rows and {} cols ({} with geodata)'.format(dfrows,dfcols,varcols))

with open(sum_out,"w") as sumfile:
    print(geo_df['SUMLEVEL'].value_counts().sort_index(),file=sumfile)

print('Done!')