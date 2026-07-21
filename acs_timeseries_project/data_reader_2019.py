#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Filter Census ACS variables by looking up the table numbers in a sequence 
data file, matching the records for specific geographies to the correct template
- ACS 2014

Frank Donnelly
June 20, 2025 rev July 3, 2025
"""

import os, csv, time, gc, pandas as pd

year='2019'

infold=os.path.join('input','data_{}').format(year)
outfold=os.path.join('output','data_{}').format(year)

datafold1=os.path.join(infold,'All_Geographies_Not_Tracts_Block_Groups')
datafold2=os.path.join(infold,'Tracts_Block_Groups_Only')
tempfolder=os.path.join(infold,'{}_5yr_Summary_FileTemplates').format(year)
csvfolder=os.path.join(outfold,'csv_todb')

varskeep_file=os.path.join(infold,'ACS{}_Table_Shells.xlsx').format(year)
seq_file=os.path.join(infold,'ACS_5yr_Seq_Table_Number_Lookup.xlsx')
recskeep_file=os.path.join(outfold,'keeprecs_{}.txt').format(year,year)

def data_reader(file_path,datalist):
    with open (file_path,'r') as csv_file:
        reader=csv.reader(csv_file)
        stusps=2
        logrec=5
        for row in reader:
            row[logrec]=row[stusps]+row[logrec] # create unique IDs
            if row[logrec] in keep_ids: # filter by geos we want
                clean_row=['' if x=='.' else x for x in row] # remove footnotes
                datalist.append(clean_row)

# Create list of dfs that will hold variables IDs and labels for all tables
# GEOID is not in the data files, but is inserted later       
meta_df_list=[]
meta_head=['FILEID', 'FILETYPE', 'STUSAB', 'CHARITER', 'SEQUENCE','LOGRECNO','GEOID']
meta_head_df=meta_df=pd.DataFrame(
    {'VAR_ID' : meta_head,
     'VAR_LBL' : meta_head
     })
meta_df_list.append(meta_head_df)

tables={} # tables and variables we want to keep
vars_df=pd.read_excel(varskeep_file)
vars_df.dropna(subset=['KEEP'],inplace=True)
for idx, row in vars_df.iterrows():
    if row['Table ID'] not in tables:
        tables[row['Table ID']]=[row['UniqueID']]
    else:
        tables[row['Table ID']].append(row['UniqueID'])

keep_ids={} # geographies we want to keep
with open(recskeep_file,'r') as csv_file:
    reader=csv.reader(csv_file,delimiter='\t')
    next(reader)
    for row in reader:        
        keep_ids[row[0]]=row[1]

seq={} # relates all tables to sequence files
tabnames={} # keeps JUST table IDs and names we want      
seq_df=pd.read_excel(seq_file)
tabseq_df=seq_df[seq_df['Line Number'].isnull() & seq_df['Start Position'].notnull()]
for idx, row in tabseq_df.iterrows():
    if row['Table ID'] not in seq:
        seq[row['Table ID']]=[str(row['Sequence Number'])]
        if row['Table ID'] in tables:
            tabnames[row['Table ID']]=row['Table Title']
    else:
        seq[row['Table ID']].append(str(row['Sequence Number']))

for k,v in tables.items(): # k is table, v list of sequences
    slist=seq[k] # Get list of all sequence files that hold our table's vars   
    for s in slist:
        tempfile=os.path.join(tempfolder,'seq'+s+'.xlsx')
        temp_df=pd.read_excel(tempfile) # has header IDs and var labels in row 0
        est_list=[]
        moe_list=[]
        if len(s)==1:
            seqstring='000'+str(s)+'000'
        elif len(s)==2:
            seqstring='00'+str(s)+'000'
        else:
            seqstring='0'+str(s)+'000'   
        for root,dirs,files in os.walk(datafold1,topdown=True):
            for f in files:
                if f.startswith('e') and f.endswith(seqstring+'.txt'):
                    # Get estimates data for most geographies
                    fpath=os.path.join(root,f)
                    data_reader(fpath,est_list)
                    # Get margins of error data
                    moefile=f.replace('e2','m2')
                    mfpath=os.path.join(root,moefile)
                    data_reader(mfpath,moe_list)
                    # Get estimates and margins of error for tracts and block groups
                    data1_str='All_Geographies_Not_Tracts_Block_Groups'
                    data2_str='Tracts_Block_Groups_Only'
                    fpath2=fpath.replace(data1_str,data2_str)
                    mfpath2=mfpath.replace(data1_str,data2_str)
                    data_reader(fpath2,est_list)
                    data_reader(mfpath2,moe_list)
                    
        # Convert nested lists to dataframes
        est_df=pd.DataFrame(est_list, columns=temp_df.columns,dtype=object)
        moe_df=pd.DataFrame(moe_list, columns=temp_df.columns,dtype=object)
        keepcols=list(est_df.columns[0:6]) # Create list of generic ID fields
        keepcols.extend(v) # Add list of variables we want for table
        
        # Filter the dataframe columns for vars we want
        # Do intersection to account for tables split across sequences        
        cols_in_both=list(est_df.columns.intersection(keepcols))
        est_short_df=est_df[cols_in_both].copy()
        moe_short_df=moe_df[cols_in_both[5:]].copy()
        temp_short_df=temp_df[cols_in_both].copy()
        
        # Delete full dataframes to save memory
        del est_df
        del moe_df
        gc.collect()
        
        #Combine est and moe dfs
        final_df=pd.merge(est_short_df, moe_short_df, how='inner',
                          on='LOGRECNO', suffixes=(None,'_MOE'))
        
        #Insert GEOID from keep list where k is logrecno and v is geoid
        final_df.insert(6,'GEOID',final_df['LOGRECNO'].map(keep_ids))
        
        # Get variable IDs and Labels for table and append to main meta df list
        tab_meta_df=pd.DataFrame(
            {'VAR_ID' : temp_short_df.columns[6:].tolist(),
             'VAR_LBL' : temp_short_df.iloc[0,6:].tolist()
             })
        meta_df_list.append(tab_meta_df)
        
        # Output table csv, handle if table is in multiple sequence files
        if len(slist)==1:
            outfile='acs{}_{}.txt'.format(year,k)
        else:
            part=str(slist.index(s)+1)
            outfile='acs{}_{}_part{}.txt'.format(year,k,part)
        outpath=os.path.join(csvfolder,outfile)
        final_df.to_csv(outpath,sep='\t',header=True,index=False,na_rep='')
        print('Output data for',outfile)
        dfrows,dfcols=final_df.shape
        varcols=dfcols-7
        origvars=len(v)
        print('Wrote {} rows and {} cols ({} with data), orig ask was {} vars'
              .format(dfrows,dfcols,varcols,origvars))
        time.sleep(3) # pause for memory
                    
meta_df = pd.concat(meta_df_list,ignore_index=True)
metafile='acs{}_variables.txt'.format(year)
metapath=os.path.join(csvfolder,metafile)           
meta_df.to_csv(metapath,sep='\t',header=True,index=False,na_rep='')   

tablefile='acs{}_tables.txt'.format(year)
tablepath=os.path.join(csvfolder,tablefile)
tablehead=['TAB_ID','TAB_LBL']
with open(tablepath,'w') as csv_file:
    writer=csv.writer(csv_file,delimiter='\t')
    writer.writerow(tablehead)
    for tk, tv in tabnames.items():
        writer.writerow([tk,tv])
print('Done!') 
                

                    

    

