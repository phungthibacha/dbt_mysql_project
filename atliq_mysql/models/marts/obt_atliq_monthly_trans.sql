with customers as (

    select * from {{ ref('dim_customers') }}

),

products as (

    select * from {{ ref('dim_products') }}

),

fact_monthly_trans as (

    select * from {{ ref('fact_monthly_trans') }}

),

final as (

    select
        customers.customer_code,
        customers.customer_name,
        customers.market,
        customers.platform,
        customers.channel,
        customers.sub_zone,
        customers.region,
        products.product_code,
        products.product as product_name,
        products.division,
        products.segment,
        products.category,
        products.variant,
        fact_monthly_trans.date,
        fact_monthly_trans.year,
        fact_monthly_trans.month,
        fact_monthly_trans.sold_quantity
    from customers
    left join fact_monthly_trans
        on customers.customer_code = fact_monthly_trans.customer_code
    left join products
        on  products.product_code = fact_monthly_trans.product_code

)

select * from final