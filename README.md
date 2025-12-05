# NYC-Open-Data-Electric-Consumption-And-Cost-2010---May-2025-

Riley Weaver - CIS 9440 Assignment 2

## Data Source 
- NYC Open Data - Electric Consumption and Cost (2010 - May 2025):
  
[https://data.cityofnewyork.us/Housing-Development/Electric-Consumption-And-Cost-2010-May-2025-/jr24-e7cr/
](url)

## Data Storage 
- Google Cloud Bucket: rweaver-electric-consumption-data

## Data Modeling 
- Dataset: electric_consumption
- Star Schema Dimenisional Model: Assignment 2 Updated Dimensional Model.drawio.png
- Table Creation Script: create-table-query

## ETL Script
ETL Script: electric_consumption_etl_script.py

The ETL pipeline performs the following:
1. Extract
   - Pulls all records from NYC Open Data using pagination
   - Loads JSON responses into a DataFrame
2. Transform
   - Converts numeric fields (kwh, kw, charges, etc.)
   - Standardizes date fields into date dimension format
   - Creates surrogate keys for dimensions
   - Performs duplicate checks and basic data cleaning
3. Load
  - Loads dimension tables with surrogate keys to BigQuery
  - Merges fact table with dimensions to add foreign keys
  - Loads fact table with proper relationships
  - Removes final duplicates and validates data integrity


## Data Transformations/Mapping
- Riley Weaver_Assignment2_Data_Mapping.pdf

## Data Tables 
Link: https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1sfabled-ranger-421314!2selectric_consumption

## Data Visualizations 
Tableau Link: 
https://public.tableau.com/views/NYC_Electric_Consumption_Dashboard/ElectricConsumptionDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

Visualizations:
1. Pie Chart: Electric consumption breakdown by power vendor
2. Column Chart: Total consumption by NYC borough
3. Line Chart: Consumption trends over time by borough (2010-2025)
4. Heat Map: Consumption intensity by borough and year
   
Dashboard can be filtered to a specific year or across multiple years. 
