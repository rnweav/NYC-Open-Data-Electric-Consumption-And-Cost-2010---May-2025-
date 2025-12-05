# NYC-Open-Data-Electric-Consumption-And-Cost-2010---May-2025-

Riley Weaver - CIS 9440 Assignment 2

## Data Source 
- NYC Open Data - Electric Consumption and Cost (2010 - May 2025):
  
[https://data.cityofnewyork.us/Housing-Development/Electric-Consumption-And-Cost-2010-May-2025-/jr24-e7cr/
](url)

## Data Storage 
- Google Cloud Bucket: rweaver-electric-consumption-data

## Data Modeling 
- Star Schema Dimenisional Model (see png) 
- Dataset: electric_consumption_dw
- Table Creation Script: create-table-query

## Eztl Script
The ETL pipeline performs the following:
1. Extract
   - Pulls all records from NYC Open Data using pagination
   - Loads JSON responses into a DataFrame
2. Transform
   -Converts numeric fields (kwh, kw, charges, etc.)
   -Standardizes date fields into date dimension format
   -Creates surrogate keys for dimensions
   -Performs duplicate checks and basic data cleaning
3. Load
   
