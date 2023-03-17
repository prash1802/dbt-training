select id,first_name,last_name,
sum(diffid) as difference
from {{ ref('stg_orders') }}
group by id,first_name,last_name