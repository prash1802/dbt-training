select 
--from raw orders
o.user_id,
o.id,
o.order_date,
o.status,
o.user_id - o.id as diffid,
--from raw customer
c.first_name,
c.last_name,
--from raw payment
p.paymentmethod,
p.amount,
p.orderid,
{{ markup('orderid','user_id') }} as markup
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.user_id=c.id
left join {{ ref('raw_payment') }} as p 
on o.id=p.orderid

{{ limit_data_in_dev('order_date') }}