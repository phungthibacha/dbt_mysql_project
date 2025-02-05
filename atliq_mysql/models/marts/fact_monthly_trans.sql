select
    date,
    {{get_year_part('date')}} as year,
    {{get_month_part('date')}} as month,
    product_code,
    customer_code,
    sold_quantity
from
    {{ref('stg_atliq__monthly_trans')}}