#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Create percent totals with different crosstabs of variables, tables, 
variable types, and summary levels. Print output as formatted tables in 
text files, and as CSV. Some variables appear in multiple tables; include them
in all summaries that provide table or variable level records. Otherwise,
exclude them using the distinct version of the sd / cv dataframe, for grand totals
and summaries limited to summary levels alone. Variables are classified into broad 
types: summary statistics, estimates that represent the total universe for a
table, and general estimates. The base level reports and data files are reference tables
with all values; a subset of larger reports and files that have been filtered
and sorted are saved in separate subfolders.

Frank Donnelly
July 18, 2025 / rev Aug 12, 2025
"""

import os, csv, pandas as pd
from prettytable import PrettyTable

outpath_rpts=os.path.join('output','summary_analysis','reports')
outpath_data=os.path.join('output','summary_analysis','sumdata')

outpath_rpts_fs=os.path.join('output','summary_analysis','reports','filtered_sorted')
outpath_data_fs=os.path.join('output','summary_analysis','sumdata','filtered_sorted')

# These tables had only 1 var for testing purposes. Drop from analysis
droptabs=['b09001','b09020']

# These variables are duplicates, same var in different tables
dupevars={'b01001_001':['b02001_001','b03002_001','b05002_001'],
          'b11001_001':['b19001_001'],
          'b23025_003':['c24030_001'],
          'b25002_002':['b25003_001'],
          'b25003_003':['b25063_001','b25070_001']}

# These are summary tables that contain medians, averages, or ratios
sumtabs=('b01002','b19013','b19083','b25010','b25064','b25077')

# Get a flat list of the duplicates variable IDs stored in keys
dropvars=[v for lst in dupevars.values() for v in lst]

dupestr=''
for k,v in dupevars.items():
    dupestr=dupestr+'{}: {}\n'.format(k,', '.join(v))

note_dist='''These summaries include distinct values. Variables that appear in
multiple tables are only counted once.'''
note_dupe='''The following variables represent the same values:\n{}'''.format(dupestr)
note_cv='''These summaries only include values where the estimates from both
time periods were statistically different from each other.'''

# Create a new grouped df where pct totals are created for all records
# flat df, var for grouping, var for sums
def df_totals(df,grpvar,sumvar):
    grp=df.groupby([grpvar],dropna=False,observed=True)[sumvar].sum()
    grpdf=grp.reset_index()
    grpdf['percent']=(grpdf[sumvar] / grpdf[sumvar].sum()*100).round(1)
    return grpdf.copy()
    
# Create a new grouped df where pct totals are created for categories
# flat df, list of vars for grouping, var for sums, list of vars for calc % total
def df_grouper(df,grpvar,sumvar,grppct):
    grp=df.groupby(grpvar,dropna=False,observed=True)[sumvar].sum()
    grpdf=grp.reset_index()
    grpdf['percent']=(grpdf[sumvar] / grpdf.groupby(grppct,dropna=False)[sumvar].transform('sum')*100).round(1)
    return grpdf.copy()

def create_output(df,fname,title,footnotes):
    data=df.values.tolist()
    cols=list(df.columns)
    ptable=PrettyTable()
    ptable.field_names=cols
    ptable.add_rows(data)
    if fname.endswith('_fs'):
        rpath=outpath_rpts_fs
        dpath=outpath_data_fs
    else:
        rpath=outpath_rpts
        dpath=outpath_data
    outrpt=os.path.join(rpath,fname+'.txt')
    with open(outrpt,'w') as rpt_file:
        rpt_file.write(title+'\n\n')
        rpt_file.write(ptable.get_string())
        for note in footnotes:
            rpt_file.write('\n\n'+note)
    outtsv=os.path.join(dpath,fname+'.tsv')
    with open(outtsv,'w') as tsv_file:
        writer=csv.writer(tsv_file,delimiter='\t',quoting=csv.QUOTE_NONNUMERIC)
        writer.writerow(cols)
        writer.writerows(data)
    print('Wrote data for',fname )

infold=os.path.join('output','summary_analysis')

# *** SIG DIFFERENCE ***

sdfile='recordsummary_sig_dif.txt'
sdpath=os.path.join(infold,sdfile)
sd_df=pd.read_csv(sdpath,delimiter='\t',dtype={'sumlevel':object})
droprecs = sd_df[(sd_df['table'].isin(droptabs))].index
sd_df.drop(droprecs, inplace=True)

# Classify variables by type
sd_df['vartype'] = sd_df['variable'].apply(lambda x: 'summary' if x.startswith(sumtabs) else ('universe' if x.endswith('001') else 'estimate'))
# In this version, drop vars that are duplicated in multiple tables
# Use distinct when dfs do NOT include records by variable or table
sd_distinct=sd_df.loc[~sd_df['variable'].isin(dropvars)]

# -- create dataframes --

tot_sigdif=df_totals(sd_distinct,'sig_dif','sig_dif_count')
tot_sd_geo=df_totals(sd_distinct,'sumlevel','sig_dif_count')
tot_sd_tab=df_totals(sd_df, 'table','sig_dif_count')
tot_sd_var=df_totals(sd_df, 'variable','sig_dif_count')
tot_sd_vartype=df_totals(sd_distinct,'vartype','sig_dif_count')

tot_sigdif_nobg=df_totals(sd_distinct.loc[~sd_distinct['sumlevel'].isin(['150','258'])],'sig_dif','sig_dif_count')

sd_pct=df_grouper(sd_df,['variable','table','sumlevel','sig_dif'],'sig_dif_count',['variable','sumlevel'])
sd_by_geo=df_grouper(sd_distinct,['sumlevel','sig_dif'],'sig_dif_count',['sumlevel'])
sd_by_tab=df_grouper(sd_df,['table','sig_dif'],'sig_dif_count',['table'])
sd_by_tabgeo=df_grouper(sd_df,['table','sumlevel','sig_dif'],'sig_dif_count',['table','sumlevel'])
sd_by_var=df_grouper(sd_df,['variable','sig_dif'],'sig_dif_count',['variable'])

sd_by_vtype=df_grouper(sd_distinct,['vartype','sig_dif'],'sig_dif_count',['vartype'])
sd_by_vtypegeo=df_grouper(sd_distinct,['vartype','sumlevel','sig_dif'],'sig_dif_count',['vartype','sumlevel'])

# -- create reports --

stat_title='Statistically Significant Difference: '
create_output(tot_sigdif,'sigdif_total_grand',stat_title+'Grand Total',[note_dist])
create_output(tot_sd_geo,'sigdif_share_geo',stat_title+'Share by Summary Level',[note_dist])
create_output(tot_sd_tab,'sigdif_share_tab',stat_title+'Share by Table',[note_dupe])
create_output(tot_sd_var,'sigdif_share_var',stat_title+'Share by Variable',[note_dupe])
create_output(tot_sd_vartype,'sigdif_share_vartype',stat_title+'Share by Variable Type',[note_dist])

create_output(sd_pct,'sigdif_pct_all',stat_title+'Percent Total by All Categories',[note_dupe])
create_output(sd_by_geo,'sigdif_pct_geo',stat_title+'Percent Total by Summary Level',[note_dist])
create_output(sd_by_tab,'sigdif_pct_tab',stat_title+'Percent Total by Table',[note_dupe])
create_output(sd_by_tabgeo,'sigdif_pct_tabgeo',stat_title+'Percent Total by Table and Summary Level',[note_dupe])
create_output(sd_by_var,'sigdif_pct_var',stat_title+'Percent Total by Variable',[note_dupe])

create_output(sd_by_vtype,'sigdif_pct_vtype',stat_title+'Percent Total by Variable Type',[note_dist])
create_output(sd_by_vtypegeo,'sigdif_pct_vtypegeo',stat_title+'Percent Total by Variable Type and Summary Level',[note_dist])

# filtered and sorted

sd_by_geo_fs=sd_by_geo.loc[sd_by_geo['sig_dif']==True].sort_values(by='percent',ascending=False)
sd_by_tab_fs=sd_by_tab.loc[sd_by_tab['sig_dif']==True].sort_values(by='percent',ascending=False)
sd_by_tabgeo_fs=sd_by_tabgeo.loc[sd_by_tabgeo['sig_dif']==True].sort_values(by=['sumlevel','percent'],ascending=False)
sd_by_var_fs=sd_by_var.loc[sd_by_var['sig_dif']==True].sort_values(by='percent',ascending=False)
sd_by_vtypegeo_fs=sd_by_vtypegeo.loc[sd_by_vtypegeo['sig_dif']==True].sort_values(by=['vartype','percent','sig_dif_count'],ascending=False)

stat_title_fs='Statistically Significant Difference (filtered and sorted for True values): '
create_output(sd_by_geo_fs,'sigdif_pct_geo_fs',stat_title_fs+'Percent Total by Summary Level',[note_dist])
create_output(sd_by_tab_fs,'sigdif_pct_tab_fs',stat_title_fs+'Percent Total by Table',[note_dupe])
create_output(sd_by_tabgeo_fs,'sigdif_pct_tabgeo_fs',stat_title_fs+'Percent Total by Table and Summary Level',[note_dupe])
create_output(sd_by_var_fs,'sigdif_pct_var_fs',stat_title_fs+'Percent Total by Variable',[note_dupe])
create_output(sd_by_vtypegeo_fs,'sigdif_pct_vtypegeo_fs',stat_title_fs+'Percent Total by Variable Type and Summary Level',[note_dist])

# *** CVS ***

cvfile='recordsummary_chg_cv_only_sigdf.txt'
cvpath=os.path.join(infold,cvfile)
cv_df=pd.read_csv(cvpath,delimiter='\t',dtype={'sumlevel':object})
droprecs = cv_df[(cv_df['table'].isin(droptabs))].index
cv_df.drop(droprecs, inplace=True)

# Fixes the sort order
sortcat=['low','medium','high']
cv_df['change_cv']=pd.Categorical(cv_df['change_cv'],categories=sortcat,ordered=True)
# Classify variables by type
cv_df['vartype'] = cv_df['variable'].apply(lambda x: 'summary' if x.startswith(sumtabs) else ('universe' if x.endswith('001') else 'estimate'))
# In this version, drop vars that are duplicated in multiple tables
# Use distinct when dfs do NOT include records by variable or table
cv_distinct=cv_df.loc[~cv_df['variable'].isin(dropvars)]

# -- create dataframes --

tot_cv=df_totals(cv_distinct,'change_cv','change_cv_count')
tot_cv_geo=df_totals(cv_distinct,'sumlevel','change_cv_count')
tot_cv_tab=df_totals(cv_df, 'table','change_cv_count')
tot_cv_var=df_totals(cv_df, 'variable','change_cv_count')
tot_cv_vartype=df_totals(cv_distinct,'vartype','change_cv_count')


tot_cv_nobg=df_totals(cv_distinct.loc[~cv_distinct['sumlevel'].isin(['150','258'])],'change_cv','change_cv_count')


cv_pct=df_grouper(cv_df,['variable','table','sumlevel','change_cv'],'change_cv_count',['variable','sumlevel'])
cv_by_geo=df_grouper(cv_distinct,['sumlevel','change_cv'],'change_cv_count',['sumlevel'])
cv_by_tab=df_grouper(cv_df,['table','change_cv'],'change_cv_count',['table'])
cv_by_tabgeo=df_grouper(cv_df,['table','sumlevel','change_cv'],'change_cv_count',['table','sumlevel'])
cv_by_var=df_grouper(cv_df,['variable','change_cv'],'change_cv_count',['variable'])

cv_by_vtype=df_grouper(cv_distinct,['vartype','change_cv'],'change_cv_count',['vartype'])
cv_by_vtypegeo=df_grouper(cv_distinct,['vartype','sumlevel','change_cv'],'change_cv_count',['vartype','sumlevel'])

# -- create reports --

cv_title='Coefficient of Variation for Change: '
create_output(tot_cv,'change_cv_total_grand',cv_title+'Grand Total',[note_cv,note_dist])
create_output(tot_cv_geo,'change_cv_share_geo',cv_title+'Share by Summary Level',[note_cv,note_dist])
create_output(tot_cv_tab,'change_cv_share_tab',cv_title+'Share by Table',[note_cv,note_dupe])
create_output(tot_cv_var,'change_cv_share_var',cv_title+'Share by Variable',[note_cv,note_dupe])
create_output(tot_cv_vartype,'change_share_vartype',cv_title+'Share by Variable Type',[note_dist])


create_output(cv_pct,'change_cv_pct_all',cv_title+'Percent Total by All Categories',[note_cv,note_dupe])
create_output(cv_by_geo,'change_cv_pct_geo',cv_title+'Percent Total by Summary Level',[note_cv,note_dist])
create_output(cv_by_tab,'change_cv_pct_tab',cv_title+'Percent Total by Table',[note_cv,note_dupe])
create_output(cv_by_tabgeo,'change_cv_pct_tabgeo',cv_title+'Percent Total by Table and Summary Level',[note_cv,note_dupe])
create_output(cv_by_var,'change_cv_pct_var',cv_title+'Percent Total by Variable',[note_cv,note_dupe])

create_output(cv_by_vtype,'change_cv_pct_vtype',cv_title+'Percent Total by Variable Type',[note_dist])
create_output(cv_by_vtypegeo,'change_cv_pct_vtypegeo',cv_title+'Percent Total by Variable Type and Summary Level',[note_dist])

# filtered and sorted

cv_by_geo_fs=cv_by_geo.loc[cv_by_geo['change_cv'].isin(['medium','high'])].groupby(
    by='sumlevel')[['change_cv_count','percent']].sum().reset_index().sort_values(by='percent',ascending=False)
cv_by_tab_fs=cv_by_tab.loc[cv_by_tab['change_cv'].isin(['medium','high'])].groupby(
    by='table')[['change_cv_count','percent']].sum().reset_index().sort_values(by='percent',ascending=False)
cv_by_tabgeo_fs=cv_by_tabgeo.loc[cv_by_tabgeo['change_cv'].isin(['medium','high'])].groupby(
    by=['table','sumlevel'])[['change_cv_count','percent']].sum().reset_index().sort_values(by=['sumlevel','percent'],ascending=False)
cv_by_var_fs=cv_by_var.loc[cv_by_var['change_cv'].isin(['medium','high'])].groupby(
    by='variable')[['change_cv_count','percent']].sum().reset_index().sort_values(by='percent',ascending=False)
cv_by_vtypegeo_fs=cv_by_vtypegeo.loc[cv_by_vtypegeo['change_cv'].isin(['medium','high'])].groupby(
    by=['vartype','sumlevel'])[['change_cv_count','percent']].sum().reset_index().sort_values(by=['vartype','percent','change_cv_count'],ascending=False)

dflist=[cv_by_geo_fs,cv_by_tab_fs,cv_by_tabgeo_fs,cv_by_var_fs,cv_by_vtypegeo_fs]
for df in dflist:
    df['percent']=round(df['percent'],1)

cv_title_fs='Coefficient of Variation for Change: (sorted for estimates of high and medium precision combined): '
create_output(cv_by_geo_fs,'change_cv_pct_geo_fs',cv_title_fs+'Percent Total by Summary Level',[note_dist])
create_output(cv_by_tab_fs,'change_cv_pct_tab_fs',cv_title_fs+'Percent Total by Table',[note_dupe])
create_output(cv_by_tabgeo_fs,'change_cv_pct_tabgeo_fs',cv_title_fs+'Percent Total by Table and Summary Level',[note_dupe])
create_output(cv_by_var_fs,'change_cv_pct_var_fs',cv_title_fs+'Percent Total by Variable',[note_dupe])
create_output(cv_by_vtypegeo_fs,'change_cv_pct_vtypegeo_fs',cv_title_fs+'Percent Total by Variable Type and Summary Level',[note_dist])

