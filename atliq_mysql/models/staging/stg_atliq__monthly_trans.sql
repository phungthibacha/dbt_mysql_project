with source as (

    select * from {{ source('atliq_data', 'monthly_transactions') }}

),

renamed as (

    select
        cast(date as date) as date,
        product_code,
        customer_code,
        sold_quantity

    from source

)

select * from renamed