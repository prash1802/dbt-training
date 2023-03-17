select a.paymentmethod,sum(a.diffid) difference
from {{ ref('stg_orders') }}  a
group by a.paymentmethod
