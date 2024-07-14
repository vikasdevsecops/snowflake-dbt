
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
where  data = 12
union
select 1
from {{ ref ('my_first_dbt_model')}}

