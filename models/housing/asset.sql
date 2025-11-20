with asset_stg as (

select
  cast(asset_id as string)       as asset_id,
  asset_ref                      as asset_ref,
  address_line1                  as address_line1,
  postcode                       as postcode,
  asset_type                     as asset_type,
  cast(bedrooms as int64)        as bedrooms,
  cast(build_date as date)       as build_date,
  created_at                     as created_at,
  updated_at                     as updated_at
from {{ source('housing', 'asset') }})

select * from asset_stg
