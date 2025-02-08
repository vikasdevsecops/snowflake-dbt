

{{ config(materialized='table') }}

WITH tb1 as(
select final_business.*,stg_orders.order_date,concat(stg_customers.first_name,'.',stg_customers.last_name) as customer_data
from {{ ref('final_business') }},{{source('datafeed_shared_schema','stg_orders')}},{{source('datafeed_shared_schema','stg_customers')}}
)

select * from tb1





