#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Create metadata tables to accompany reports and summary data
Frank Donnelly
July 25, 2025
"""

import os, csv, pandas as pd
from prettytable import PrettyTable

outpath_rpts=os.path.join('output','summary_analysis','reports')
outpath_data=os.path.join('output','summary_analysis','sumdata')

def create_output(df,fname,title,footnotes):
    data=df.values.tolist()
    cols=list(df.columns)
    ptable=PrettyTable()
    ptable.field_names=cols
    ptable.add_rows(data)
    ptable.align = "l"
    outrpt=os.path.join(outpath_rpts,fname+'.txt')
    with open(outrpt,'w') as rpt_file:
        rpt_file.write(title+'\n\n')
        rpt_file.write(ptable.get_string())
        for note in footnotes:
            rpt_file.write('\n\n'+note)
    outtsv=os.path.join(outpath_data,fname+'.tsv')
    with open(outtsv,'w') as tsv_file:
        writer=csv.writer(tsv_file,delimiter='\t',quoting=csv.QUOTE_NONNUMERIC)
        writer.writerow(cols)
        writer.writerows(data)
    print('Wrote data for',fname )

# Metadata Tables

sumlev_names={'010':'US','020':'Region','030':'Division','040':'State','050':'County',
             '060':'County Subdiv','140':'Tract','150':'Blk Group','160':'Place','170':'Cons City',
              '250':'Tribal Area','251':'Tribal Subdiv','256':'Tribal Tract','258':'Tribal Blk Group', 
              '310':'CBSA','400':'Urban Area','500':'Cong Dist','795':'PUMA','860':'ZCTA'}
sumlev_df=pd.DataFrame.from_dict(sumlev_names, orient='index').reset_index().rename(columns={'index':'sumcode',0:'sumname'})

tab_names={}
tab_file=os.path.join('output','summary_analysis','metatables','acs_tables.csv')
with open(tab_file, 'r', newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        tab_names[row['tab_id'].lower()]=row['tab_lbl'].title()      
droptables=['b09001','b09020','b98001','b98003']
for k in [k for k in tab_names if k in droptables]: del tab_names[k]
tables_df=pd.DataFrame.from_dict(tab_names, orient='index').reset_index().rename(columns={'index':'tabid',0:'tabname'})

var_names={}
var_file=os.path.join('output','summary_analysis','metatables','acs_variables.csv')
with open(var_file, 'r', newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        var_names[row['var_id'].lower()]=row['var_lbl'].title().strip()
        
dropv=['b09001_001','b09020_001','b98001_002','b98003_001']
for k in [k for k in var_names if k in dropv]: del var_names[k]

var_names_short={}
for k,v in var_names.items():
    short_label=v.split('%')[-2:]
    var_names_short[k]=' - '.join(short_label)  
    
vars_df=pd.DataFrame.from_dict(var_names_short, orient='index').reset_index().rename(columns={'index':'varid',0:'varname'})

s_title='Summary Levels'
create_output(sumlev_df,'meta_summary_levels',s_title,[""])
t_title='Tables'
create_output(tables_df,'meta_table_names',t_title,[""])
v_title='Variables'
create_output(vars_df,'meta_variable_names',v_title,[""])
print("Done!")
