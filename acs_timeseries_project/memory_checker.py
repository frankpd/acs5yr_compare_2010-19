#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Compare memory useage between dataframe and nested list
Frank Donnely
July 30, 2025

"""

import os, csv, pandas as pd, sys

data_file=os.path.join('output','data_2019','csv_todb','acs2019_B03002.txt')

df=pd.read_csv(data_file,delimiter='\t')

data=[]
with open(data_file,'r') as csv_file:
    reader=csv.reader(csv_file,delimiter='\t')
    header=next(reader)
    for row in reader:        
        data.append(row)
        
print(sys.getsizeof(df))

print(sys.getsizeof(data))

