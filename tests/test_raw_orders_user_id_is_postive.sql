with
orders as(
    select * from {{ ref('raw_orders') }}
)

select user_id
  from orders
  where user_id<0

