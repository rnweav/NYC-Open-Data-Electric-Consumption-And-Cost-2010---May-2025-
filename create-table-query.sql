#Create dimension tables 

#dim_building table

CREATE TABLE fabled-ranger-421314.electric_consumption.dim_building(
  building_key INT64 NOT NULL,
  tds_number STRING,
  location STRING,
  development_name STRING,
  borough STRING,
  amp_number STRING,
  funding_source STRING
);

#dim_building date

CREATE TABLE fabled-ranger-421314.electric_consumption.dim_date(
  date_key INT64 NOT NULL,
  revenue_month STRING
);

#dim_meter table

CREATE TABLE fabled-ranger-421314.electric_consumption.dim_meter(
  meter_key INT64 NOT NULL,
  meter_number STRING,
  meter_scope STRING,
  meter_amr STRING,
  account_name STRING
);

#dim_vendor table

CREATE TABLE fabled-ranger-421314.electric_consumption.dim_vendor(
  vendor_key INT64 NOT NULL,
  vendor_name STRING
);

#fact_electric_consumption table


CREATE TABLE fabled-ranger-421314.electric_consumption.fact_electric_consumption(
  consumption_key INT64 NOT NULL,
  building_key INT64,
  date_key INT64,
  meter_key INT64,
  vendor_key INT64,
  umis_bill_id STRING,
  consumption_kwh FLOAT64,
  consumption_kw FLOAT64,
  current_charges FLOAT64,
  kwh_charges FLOAT64,
  kw_charges FLOAT64,
  other_charges FLOAT64,
  number_days INT64,
  estimated_flag BOOL,
  bill_analyzed_flag BOOL,
  service_start_date DATE,
  service_end_date DATE,
  rate_class STRING
  
)

