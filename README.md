# ACS Data for Change Over Time 2010-14 to 2015-19

This repository contains summary data for the forthcoming paper "The Feasibility of Comparing 5-year American Community Survey Estimates Over Time", to be published in the *Journal of the American Planning Association*. Using Census American Community Survey (ACS) estimates from 2010-14 and 2015-19, the study compared 317 variables (309 that are distinct) from 25 data tables for 19 geographic summary levels. Almost 406,000 individual geographies were compared between the two time periods, for a total of 110.5 million data points (of which 108 million were distinct, as some variables were published in more than one table). ACS estimates are published at a 90% confidence interval with a margin of error. Change and percent change were calculated for each pair of estimates, which were evaluated to determine if they were statistically different and thus could be compared. If they were different, the coefficent of variation (CV) was calcuated for the change estimate to measure it's precision. Ultimately, 90% of the estimates were not statistically different from each other and thus could not be compared over time, and of the 10% that were different, 90% had CV values that were of low reliability. 

This repository includes:

1. Summary output that was used for the final analysis
2. Python scripts and SQL transactions written for the whole project
3. Documentaton that outlines the entire workflow

This repository does NOT include:

1. The original input data (the ACS estimates from both time periods)
2. The project database, which includes the processed data and computed change, difference, and CV values used to create the summaries
3. The journal article, as it's currently being processed for publication

The input data and project database are too large to be archived in GitHub.

[ACS Data for Change Over Time 2010-14 to 2015-19](https://github.com/frankpd/acs5yr_compare_2010-19)</a> © 2026 by Frank Donnelly is licensed under a Creative Commons Attribution Non-Commercial License [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)<img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/nc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;">

# Scripts and Workflow

Python scripts written for the project are included in the root project directory, and were written to read and process files from the input and output directories below them, and from the PostgreSQL database. SQL transactions are stored in a separate subfolder. The README file documents the workflow in detail, referencing each script and its inputs and outputs. Database objects and naming conventions are also described. Since much of the source data is not included in this repository, the only scripts that will function with the data bundled here are in part III, the Data Analysis section.

# Summary Output

Summary output is stored in the output / summary analysis folder, but for convenience links to most of the individual output tables are found below. The files consist of counts of estimates (one variable compared between two time periods) summarized by tables, geographic summary levels, variables, and variable types. 

- The Report option displays data in pretty-printed tables for readability, as well as footnotes for interpreting the data
- The Data option is a tab-delimited text file that can be imported into programs for analysis
- Filtered and sorted files display the percentage of the total that falls in a certain category, sorted from highest to lowest

## Metadata

Lists of geographic summary levels, tables, and variables included in the study

| Summary by | All Records |      |
|------------|-------------|------|
| Geography  | [Report](acs_timeseries_project/output/summary_analysis/reports/meta_summary_levels.txt)   | [Data](acs_timeseries_project/output/summary_analysis/sumdata/meta_summary_levels.tsv) |
| Tables     | [Report](acs_timeseries_project/output/summary_analysis/reports/meta_table_names.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/meta_table_names.tsv) |
| Variables  | [Report](acs_timeseries_project/output/summary_analysis/reports/meta_variable_names.txt)   | [Data](acs_timeseries_project/output/summary_analysis/sumdata/meta_variable_names.tsv) |

## Summary Data for Significant Difference

Results for the number of estimates that are significantly different

Variable types include: 
 - all estimates
 - universe variables (the first variable in each table, the denominator from which other table variables are drawn)
 - summary variables (represent means, medians, and indicies)

### Share of Records

The percentage of total estimates included in each category. 

| Summary by    | All Records |      |
|---------------|-------------|------|
| Geography     | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_share_geo.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_share_geo.tsv) |
| Table         | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_share_tab.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_share_tab.tsv) |
| Variable      | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_share_var.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_share_var.tsv) | 
| Variable Type | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_share_vartype.txt)  | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_share_vartype.tsv) |

### Results

The percentage of total estimates that are significantly different. Filtered options are sorted by category for the percentage of the total that are true.

- Values that are significantly different are coded as:
 - true (result > 1.645 Z value)
 - false (result <= 1.645 Z value)
 - null

| Summary by                  | All Records |      | Filtered & Sorted |      |
|-----------------------------|-------------|------|-------------------|------|
| Grand Total         | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_total_grand.txt)    | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_total_grand.tsv) | | |
| All Records                       | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_pct_all.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_pct_all.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/sigdif_pct_all.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/sigdif_pct_all.tsv) |
| Geography                   | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_pct_geo.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_pct_geo.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/sigdif_pct_geo.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/sigdif_pct_geo.tsv) |
| Table                       | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_pct_tab.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_pct_tab.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/sigdif_pct_tab.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/sigdif_pct_tab.tsv) |
| Table & Geography           | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_pct_tabgeo.txt)   | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_pct_tabgeo.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/sigdif_pct_tabgeo.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/sigdif_pct_tabgeo.tsv) |
| Variable                    | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_pct_var.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_pct_var.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/sigdif_pct_var.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/sigdif_pct_var.tsv) |
| Variable Type               | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_pct_vtype.txt)    | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_pct_vtype.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/sigdif_pct_vtype.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/sigdif_pct_vtype.tsv) |
| Variable Type and Geography | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/sigdif_pct_vtypegeo.txt) | [Data](acs_timeseries_project/output/summary_analysis/sumdata/sigdif_pct_vtypegeo.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/sigdif_pct_vtypegeo.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/sigdif_pct_vtypegeo.tsv) |

## Summary Data for Coefficient of Variation

Variable types include: 
 - all estimates
 - universe variables (the first variable in each table, the denominator from which other table variables are drawn)
 - summary variables (represent means, medians, and indicies)

### Share of Records

For estimates that were significantly different, the percentage of total estimates included in each category 

| Summary by    | All Records |      |
|---------------|-------------|------|
| Geography     | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_share_geo.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_share_geo.tsv) |
| Table         | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_share_tab.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_share_tab.tsv) |
| Variable      | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_share_var.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_share_var.tsv) | 
| Variable Type | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_share_vartype.txt)  | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_share_vartype.tsv) |

### Results

For estimates that were significantly different, the percentage of total estimates with a CV of low, medium, and high reliability. Filtered options are sorted by category for the percentage of the total that are of satisfactory reliability (sum of medium and high)

- The coefficient of variation for significantly different variables are coded as:
 - low (CV > 30)
 - medium (CV 15 to 30)
 - high (CV < 15)
 - null

| Summary by                  | All Records |      | Filtered & Sorted |      |
|-----------------------------|-------------|------|-------------------|------|
| Grand Total         | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_total_grand.txt)    | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_total_grand.tsv) | | |
| All Records                       | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_pct_all.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_pct_all.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/change_cv_pct_all.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/change_cv_pct_all.tsv) |
| Geography                   | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_pct_geo.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_pct_geo.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/change_cv_pct_geo.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/change_cv_pct_geo.tsv) |
| Table                       | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_pct_tab.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_pct_tab.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/change_cv_pct_tab.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/change_cv_pct_tab.tsv) |
| Table & Geography           | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_pct_tabgeo.txt)   | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_pct_tabgeo.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/change_cv_pct_tabgeo.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/change_cv_pct_tabgeo.tsv) |
| Variable                    | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_pct_var.txt)      | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_pct_var.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/change_cv_pct_var.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/change_cv_pct_var.tsv) |
| Variable Type               | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_pct_vtype.txt)    | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_pct_vtype.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/change_cv_pct_vtype.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/change_cv_pct_vtype.tsv) |
| Variable Type and Geography | [Report](acs_timeseries_project/output/summary_analysis/reports/change_cv_pct_vtypegeo.txt) | [Data](acs_timeseries_project/output/summary_analysis/sumdata/change_cv_pct_vtypegeo.tsv) | [Report](acs_timeseries_project/output/summary_analysis/reports/filtered_sorted/change_cv_pct_vtypegeo.txt)            | [Data](acs_timeseries_project/output/summary_analysis/sumdata/filtered_sorted/change_cv_pct_vtypegeo.tsv) |

## All Summary Data

Flat file on which the previous summary reports and data were generated, contains one summary record for each variable, geographic summary level, and result

- [Significant Difference](acs_timeseries_project/output/summary_analysis/recordsummary_sig_dif.txt): all variables, true / false / null
- [Coefficient of Variation](acs_timeseries_project/output/summary_analysis/recordsummary_chg_cv_only_sigdif.txt): all significant variables, low / medium / high / null

## Counts by Geography

For each individual geography (approx 406k in total), a count of the number of variables and percent total

- [Signficant Difference JSON (zip)](acs_timeseries_project/output/summary_analysis/geosd_count.zip): count of true / false / null and percent totals
- [Coeffecient of Variation JSON (zip)](acs_timeseries_project/output/summary_analysis/geosd_count.zip): count of low / medium / high / null and percent totals



