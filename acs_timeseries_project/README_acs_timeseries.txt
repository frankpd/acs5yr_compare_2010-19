ACS Time Series Project Workflow
Summer 2025 / revised Summer 2026
Frank Donnelly

* 0 INDEX *

FOLDERS

- acs_timeseries_project: all Python scripts, and this README document
    - database_dump: a PostgreSQL backup file that contains the project database
    - fairfax_acs_tools: spreadsheets macros used for quality control
    - input:
        - data_2014: original FTP summary files for 2010-14, table shell to identify variables to keep
        - data_2019: original FTP summary files for 2015-19, table shell to identify variables to keep
        - geo_fixing: notes and files related to reconciling differences between 2014 and 2019 geography
        - orig_shells: original, unmodified table shells, listing every table and variable
    - mapping: GIS data for exploring results and creating figures
    - output:
        - data_2014: tables, variables, and geography extracted from FTP files for loading in the database
        - data_2019: tables, variables, and geography extracted from FTP files for loading in the database
        - summary_analysis: Jupyter notebooks for data exploration, summary counts, counts of results by geography, correlation tables
            - geocounts: one-off summary counts for specific geographies
            - metatables: metadata tables for use in the Jupyter Notebooks
            - reports: pretty-printed summary tables with footnotes
                - filtered_sorted: pretty printed summary tables sorted by a subset of values
            - sumdata: tab-delimited text files for summary data analysis
                - filtered_sorted: tab-delimited text files sorted by a subset of values
        -test_reports: holds summary extracts of records to check for quality control purposes
    - sql_transactions: SQL transaction files for modifying database tables, creating calculated values
    
POSTGRESQL DATABASE

Tables named for the year and table ID contain all variables and geographies that were extracted from the census FTP files. The suffix "mod" indicates tables that were modfied to adjust dollar values for inflation (2014 dollars converted to 2019), or where variables were combined or dropped as they were presented differently between the two time periods, or were not tabulated in one period. When present, modified tables were used for all calculations and summaries. The acs_geos_join table was used to bridge geographies from the two time periods together. It contains modified records to associate geographies whose ID codes changed bewteen the two periods, and omits records that cannot be compared because the composition of the geography changed (58 core based statistical areas, all congressional districts in FL, NC, PA, and VA, and approximately 100 other geographies with no match). Tracts and block groups that consisted entirely of bodies of water were also dropped from the join table. The change and cvs tables were created by comparing estimates from each table (a modified table when present) joined via the acs_geos_join table to include only matching geographies. A cvsummary view was generated from the output tables to code signficant difference results as true / false / null, and CV values reliability as low (>30) / medium (15 to 30) / (<15) / null. 

Tables

- acs[YEAR]_[TABLID]: 5-year ACS table, as extracted from ACS FTP files
- acs[YEAR]_[TABLID]_mod: 5-year ACS table modified, adjusted for inflation or variables modified
- acs[YEAR]_geos: geography table, as extracted from ACS FTP files
- acs[YEAR]_tables: original table names and IDs
- acs[YEAR]_variables: original variable names and IDS
- acs[YEAR]_variables_mod: modified variable names and IDS, matches modified tables
- acs_[TABLID]_change: change, percent change, and signficant difference between two estimates from each time period
- acs_[TABLID]_cvs: coefficient of variation for 1st and 2nd estimate, change and percent change estimate
- acs_geos_join: relational table that ties geographies from each time period together
- geos_metros_drop: metro areas dropped from acs_geos_join as they changed over the time period
- geos_update_missing: geographic crosswalk table for areas that changed, incorporated into acs_geos_join

Views

- acs_[TABLID]_cvsummary: coded values for CVs and significant difference for estimates for each time period
- corr_vars: variables used for calculating correlation coefficients against sig dif and CV counts
- geos2014_missing: geographies from 2014 that are not in the 2019 tables
- geos2019_missing: geographies from 2019 that are not in the 2014 tables
- geonames_differ: geographies from each time period where names have changed

Caveats

- Tables acs2014_b00001, acs2014_b00002, acs2019_b98001, and acs2019_b98003 contain counts of the number of sample records that were collected in each survey. They were omitted from all calculations.
- Table ID b09001 and b09020 for both time periods contain variables for just the total population and one age group (under 18 and over 65). Calculations were generated for this data, but were not used in the final analysis.
- Data for Consolidated Statistical Areas (CSAs, summary level 330) were included in the original and modified tables, but they were dropped from the analysis as too many had changed between the two time periods. No calculations were performed for them.
- Values for change, percent change, and CVs were calculated for all estimates, even if the estimates from each time period were not statistically different from each other. In the final paper, analysis of CVs was based only on estimates that were statistically different.
          
* I. LOAD DATA *

1. Table Shells for 2014 and 2019 ACS 5-year ACS:
    - Checked the variables to include in the study in each spreadsheet, recorded differences in variable IDs and categories over time
        - INPUT & OUTPUT
            - input/data_2014/ACS2014_Table_Shells.xls
            - input/data_2019/ACS2019_Table_Shells.xlsx
    
2. Census FTP site:
    - Downloaded and unzipped files for the entire nation for 2014 and 2019 5-year ACS
        - INPUT & OUTPUT
            - input/data_2014
            - input/data_2019

3. PostgreSQL:
    - Created empty database to hold data for the project

4. Python - geo_reader_2014.py and geo_reader_2019.py:
    - Import the census FTP geography files
    - Relates the files to the header row template
    - Filters rows and columns to include just the summary levels needed for the study
    - Export results to tab-delimited text file
    - Export a file with logrecno and geoid numbers to keep in the study
        - INPUT
            - input/data_2014/2014_ACS_Geography_Files
            - input/data_2014/2014_5yr_summary_FileTemplates/2014_SFGeoFileTemplate.xls         
            - input/data_2019/2019_ACS_Geography_Files
            - input/data_2019/2019_5yr_summary_FileTemplates/2019_SFGeoFileTemplate.xlsx
        - OUTPUT
            - output/data_2014/csv_todb/acs2014_geos.txt
            - output/data_2014/geo_summary_2014.txt
            - output/data_2014/keeprecs_2014.txt
            - output/data_2019/csv_todb/acs2019_geos.txt
            - output/data_2019/geo_summary_2019.txt
            - output/data_2019/keeprecs_2019.txt
                       
5. Python - data_reader_2014.py and data_reader_2019.py:
    - Iterate through the census FTP data and margin of error files
    - Relates the files to the header row template
    - Filters rows to include just the summary levels needed for the study using the keep records file
    - Filters columns using the table shells variable spreadsheet
    - Joins the estimates and margin of error files together in one table
    - Assigns suffixes to disambiguate the estimates and margins of error
    - Adds the geoid to the records
    - Export results to tab-delimited text file named using table ID
    - Export two metadata tables to text, one with variable names and IDs, the other with table names and IDs
    - INPUT
        - input/data_2014/tab4/sumfile/prod/2010thru2014/group1
        - input/data_2014/tab4/sumfile/prod/2010thru2014/group2
        - input/data_2014/2014_5yr_Summary_FileTemplates/seq
        - input/data_2014/ACS2014_Table_Shells.xlsx
        - input/data_2014/ACS_5yr_Seq_table_Number_Lookup.xls
        - input/data_2019/All_geographies_Not_Tracts_Block_Groups
        - input/data_2019/Tracts_Block_Groups_Only
        - input/data_2019/2019_5yr_Summary_FileTemplates/seq
        - input/data_2019/ACS2019_Table_Shells.xlsx
        - input/data_2019/ACS_5yr_Seq_table_Number_Lookup.xlsx
    - OUTPUT
        - output/data_2014/csv_todb
        - output/data_2014/acs2014_variables.txt
        - output/data_2014/acs2014_tables.txt
        - output/data_2014/keeprecs_2014.txt
        - output/data_2019/csv_todb
        - output/data_2019/acs2019_variables.txt
        - output/data_2019/acs2019_tables.txt
        - output/data_2019/keeprecs_2019.txt
       
6. Python - sql_creator.py:
    - Generate simple CREATE TABLE statements for variable and table metadata tables
    - Generate custom CREATE TABLE statement for geo tables, using the column names in the geo file
    - Generate custom CREATE TABLE statements for each of the data tables, using the table shells spreadsheet and the Census Bureau's FTP site to obtain data types for each of the values, convert those types to PostgreSQL types
    - Execute each statement to create empty, well-formed tables in the database
    - Iterate through the files, writing the data and metadata to the appropriate tables
    - INPUT
        - output/data_2014/csv_todb/acs2014_geos.txt
        - output/data_2014/acs2014_variables.txt
        - output/data_2014/acs2014_tables.txt
        - input/data_2014/ACS2014_Table_Shells.xlsx
        - output/data_2014/csv_todb
        - output/data_2019/csv_todb/acs2019_geos.txt
        - output/data_2019/acs2019_variables.txt
        - output/data_2019/acs2019_tables.txt
        - input/data_2019/ACS2019_Table_Shells.xlsx
        - output/data_2019/csv_todb
    - OUTPUT
        - PostgreSQL database tables, named by year and table ID
        - PostgreSQL database tables, geography, table, and variable metadata named by year

* II. PROCESS DATA *
        
7. SQL - sql_transactions/sql_modify_tables.sql:
    - Adjust dollar values in three tables for 2014 to inflation for 2019
    - Adjust variable ID in one table from 2014 to match comparable column in 2019
    - Adjust categories in one table in 2019, aggregating values to match one category in 2014
    - Create new tables to store modified values (original tables kept unchanged)
    - Create modified variables metadata tables for each year
        - INPUT
            - PostgreSQL tables that needed modification
        - OUTPUT
            - Copy of original tables with the suffix _mod
            
8. QGIS and PostgreSQL
    - Identify states where congressional districts changed between 2014 and 2019
    - Identify metropolitan areas that changed between 2014 and 2019, create a table of changed metros to drop
    - Identify geographies that are missing from tables between 2014 and 2019 using a series of left-outer joins, create a relational spreadsheet where 2014 geoids have been modified with their corresponding geographies for 2019 based on information from annual ACS documentation and geography changes and info from the boundary and annexation survey. Simple changes due to renaming, renumbering, or geography recategorization are accounted for
    - OUTPUT
        - input/geo_fixing/geos_metros_todrop.txt
        - input/geo_fixing/geos_missing_bridge.txt
        
9. SQL - sql_transactions/sql_modify_geos.sql:
    - Do an outer join of the two geography tables and save them as a copied table. In the copy, update null fields for 2014 with geoids and names from relational table, creating a bridge table for 2014 to 2019
    - Delete congressional disticts for four states where there were changes, and delete metro areas from the metro drop file
    - Delete records for CSAs, dropping from the study as there are too many changes to reconcile
    - Delete all census tracts and blocks groups that consist entirely of bodies of water
    - Delete all remaining records for which there are no matches
    - INPUT
        - input/geo_fixing/geos_metros_todrop.txt
        - input/geo_fixing/geos_missing_bridge.txt
    - OUTPUT
        - PostgreSQL database table acs_geos_join bridge table
    
10. Python - sql_create_tabstats.py:
    - Generates SQL transaction files that will create: 
        - Tables with change, percent change, margins of error for both, and statistical difference values for each set of 2014 / 2019 tables
        - A table with CV values for the 2014 and 2019 estimates, change, and percent change for each set of 2014 / 2019 tables
        - A view that has the CV high / medium / low for the estimates, change, and pct change, and a boolean True / False for difference values
        - Statistical difference is False if value is less than or equal to 1.645, otherwise it is True. If the value is null and the CV is 0, the boolean is also set to True (these values represent controlled population estimates that have no margin of error, any difference between values will be true)
        - CV categories for values: high <15, medium >=15 and <30, low >= 30, otherwise null
    - Uses modified tables when available, and omits tables that have the raw sample counts
    - Writes transaction files in three separate text files
    - INPUT
        - PostgreSQL database tables for each year
    - OUTPUT
        - sql_transactions/sql_change_tables.sql
        - sql_transactions/sql_cv_tables.sql
        - sql_transactions/sql_cvsum_views_tables.sql
    
11. SQL - sql_change_tables.sql, sql_cv_tables.sql, sql_cvsum_views.sql:
    - Creates the tables and views from the transactions that were built in the previous step in the database
    - INPUT
        - sql_transactions/sql_change_tables.sql
        - sql_transactions/sql_cv_tables.sql
        - sql_transactions/sql_cvsum_views_tables.sql
    - OUTPUT
        - PostgreSQL database tables for change, pct change, and significant difference
        - PostgreSQL database tables for CV
        - PostgreSQL database views with booleans for significant difference and CV
    
12. Python - var_printer.py:
    - For quality control, prints a sample of specific variables and geographies from the database to a text file report. 
    - Includes both estimates, change, percent change, all margins of error, significant difference and cv values and categories
    - INPUT
        - PostgreSQL database tables
    - OUTPUT
        - output/test_reports/recordsummary[LABEL].txt
        
* III. ANALYZE DATA *
        
13. Python - summary_creator.py:
    - Creates and executes a GROUP BY summary statement in the database where the result is one record for every variable, geographic summary level, and categorical outcome
    - When program is set to significant difference, outcome is count of True, False, and Null geographies by variable and summary level
    - When program is set to CV, outcome is count of Low, Medium, High, and Null geographies by variable and summary level. There are switches to calculate these values for all records, or only for records where there is a statistical difference between estimates
    - Records for block groups and tribal block groups are dropped for tables where these geographies are not available, to remove null records from the summaries
    - Output is written to tab delimited text files
    - INPUT
        - PostgreSQL database tables
    - OUTPUT
        - output/summary_analysis/recordsummary_sigdif.txt
        - output/summary_analysis/recordsummary_chg_cv_all.txt
        - output/summary_analysis/recordsummary_chg_cv_only_sigdif.txt        
    
14. Python - summary_reports.py and summary_reports_metatable.py:
    - Reads the summary output files created in the previous step, generates different crosstabbed summaries with percent totals
    - Totals function yields simple percent totals of geographies, tables, and variables to illustrate what the summaries are composed of
    - SD and CV functions illustrate frequency that geographies are statisticailly different and reliable estimates by variable, table, summary level, and combininations of categories
    - CV is set to read only estimates that are significantly different
    - Output is generated as data in tab delimited text files, and readable summary reports in text files
    - A variable type category is used to summarize variables in three categories: universe (largest value in each table, denominator for all other estimates in the table), summary (a summary statistic: mean, median, or index), and estimate (all other variables)
    - Dropped the two variables (pop under 18 and pop 65 and over) from tables b09001 and b09020, they were included out of curiousity and shoudln't go in the final results as they account for just 1 variable in a much larger table
    - Total and geographic summaries are for distinct variables (variables dropped when they appear in more than one table). Table and individual variable summaries keep the duplicates
    - The metatable script creates metadata tables with IDs and labels or descriptors to associate with variables, tables, and geographies 
    - INPUT
        - output/summary_analysis/recordsummary_sigdif.txt
        - output/summary_analysis/recordsummary_chg_cv_only_sigdif.txt
    - OUTPUT
        - output/summary_analysis/reports   
        - output/summary_analysis/reports/filtered_sorted
        - output/summary_analysis/sumdata
        - output/summary_analysis/sumdata/filtered_sorted
        - output/summary_analysis/metatables
         
15. Python - geo_counter_summary.py
    - For each individual geoid, counts the number of instances where a signficant difference is true or false, and if true counts instances within each CV category
    - Excludes blockgroups not included in specific tables, duplicate variables, and two variables from tables b09001 and b09020
    - Data output as two JSON files
    - INPUT
        - PostgreSQL database tables
    - OUTPUT
        - output/summary_analysis/geosd_count.json
        - output/summary_analysis/geocv_count.json
    
16. Jupyter Notebooks - uses the summary data files to visualize, explore, and further summarize results. Used to generate most of the tables that would be used in the article.
    - ACS Time Series Summaries provides broad overview
    - ACS Times Series Individual Geographic Areas goes into more detail about geographic areas
    - INPUT
        - output/summary_analysis/sumdata
    - OUTPUT
        - Summary tables for counties and tracts

17. Python - correlation_python.py and correlation_python_sumlevels.py:
    - Calculate spearman's correlation coefficients for several variables
    - Draws from PostgreSQL view that ties together the variables that would be tested from several tables: total population, population change, sample size
    - Uses SciPy to comapre these variables to the number of signficantly different variables and number of reliable CV values for each individual geography
    - Tests the difference between running the statistic on values versus ranks
    - Omits the record for the US as a whole as it's an outlier
    - The sumlevels script generates output for individual summary levels
    - INPUT
        - output/summary_analysis/geosd_count.json
        - output/summary_analysis/geocv_count.json
        - PostgreSQL database table for correlation variables
    - OUTPUT
        - output/summary_analysis/spearman_results_total.txt
        - output/summary_analysis/spearman_results_by_sumlevel.txt
    
* IV. EXTRAS *   
 
a. analysis_summaries.py: create flat files out of database records, not used because of issues with memory and space
b. check_null_sigdif.py: checked records with pop change, and moe and dif values of zero and cv values of null
c. correlation_stata.py: for exporting categorical variables and data for STATA analysis that was later dropped
d. memory_checker.py: compare size of a data table is a dataframe versus a nested list
e. record_printer.py: pretty print all variables for one geography for each data table
f. selecting.sql: statements with hardcoded values to check calculations for difference and CV
g. summary_cv_averages: calculate average cv value for all geographies    
    
   

    
