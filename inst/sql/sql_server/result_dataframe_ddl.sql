--DDL to create dqdashboard_results table.

IF OBJECT_ID('@resultsDatabaseSchema.@tableName', 'U') IS NOT NULL
	DROP TABLE @resultsDatabaseSchema.@tableName;    
    
CREATE TABLE @resultsDatabaseSchema.@tableName
(
  num_violated_rows     bigint,
  pct_violated_rows     float,
  num_denominator_rows  bigint,
  execution_time        varchar(255),
  query_text            varchar(8000),
  check_name            varchar(255),
  check_level           varchar(255),
  check_description     varchar(8000),
  cdm_table_name        varchar(255),
  cdm_field_name        varchar(255),
  concept_id            varchar(255),
  unit_concept_id       varchar(255),
  sql_file              varchar(255),
  category              varchar(255),
  subcategory           varchar(255),
  context               varchar(255),
  warning               varchar(255),
  error                 varchar(8000),
  checkid               varchar(1024),
  is_error              integer,
  not_applicable        integer,
  failed                integer,
  passed                integer,
  not_applicable_reason varchar(8000),  
  threshold_value       integer,
  notes_value           varchar(8000)
);