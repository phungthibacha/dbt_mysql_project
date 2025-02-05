select
    product_code,
    trim(division) as division,
    trim(segment) as segment,
    trim(category) as category,
    trim(product) as product,
    trim(variant) as variant
from
    {{ref('stg_atliq__products')}}