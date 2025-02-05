with obt as (

    select 
        customer_code,
        customer_name,
        date,
        sold_quantity
    from {{ ref('obt_atliq_monthly_trans') }}

),

customer_orders as (

    select
        customer_code,
        customer_name,
        min(date) as first_month_order,
        max(date) as most_recent_month_order,
        count(sold_quantity) as total_number_of_sold_quantity
    from obt
    group by customer_code, customer_name

)

select * from customer_orders
