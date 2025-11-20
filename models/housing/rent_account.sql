{{ config(
    materialized = 'table'
) }}

-- Simple typed view over the housing.rent_account source

select
  cast(rent_account_id as string)   as rent_account_id,
  cast(tenancy_id as string)        as tenancy_id,
  cast(charge_date as date)         as charge_date,
  cast(charge_amount as numeric)    as charge_amount,
  cast(payment_amount as numeric)   as payment_amount,
  cast(balance as numeric)          as balance,
  created_at                        as created_at,
  updated_at                        as updated_at
from {{ source('housing', 'rent_account') }};
