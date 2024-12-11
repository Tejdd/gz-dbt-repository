Select 
o.date_date,
o.orders_id,
round(o.margin + s.shipping_fee - (s.log_cost - s.ship_cost),2) as opertional_margin,
o.revenue,
o.quantity,
o.purchase_cost,
o.margin,
s.shipping_fee,
s.log_cost,
s.ship_cost
FROM {{ref("int_orders_margin")}} o
LEFT JOIN {{ref("stg_raw__ship")}} s
USING (orders_id)
ORDER BY orders_id desc 
