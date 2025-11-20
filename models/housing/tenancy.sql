{{ config(
    materialized = 'table'
) }}

-- Simple typed view over the housing.tenancy source

select
  cast(tenancy_id as string)        as tenancy_id,
  cast(asset_id as string)          as asset_id,
  cast(person_id as string)         as person_id,
  cast(tenancy_start_date as date)  as tenancy_start_date,
  cast(tenancy_end_date as date)    as tenancy_end_date,
  upper(tenancy_status)             as tenancy_status,
  created_at                        as created_at,
  updated_at                        as updated_at
from {{ source('housing', 'tenancy') }};
