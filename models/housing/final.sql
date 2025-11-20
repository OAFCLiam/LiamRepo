{{config ( 
    materialized="table"
)}}

with asset as ( 
    select * from {{ ref('asset')}}

),

tenancy as ( 
    select * from {{ ref('tenancy')}}

),


Asset_final as (

select
  asset_id,
  asset_type,
  asset_ref,
  address_line1,
 

 from asset


)

select * from Asset_final
