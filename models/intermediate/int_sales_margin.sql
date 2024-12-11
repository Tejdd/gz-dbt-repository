select 
products_id,
date_date,
orders_id,
revenue,
quantity,
purchase_price,
quantity * purchase_price as purchase_cost,
round(revenue - (quantity * purchase_price),2) as margin
from {{ ref('stg_raw__product')}}
join {{ ref('stg_raw__sales')}}
using (products_id)


