with source as (

    select * from {{ source('atliq_data', 'customers') }}

),

renamed as (

    select
        customer_code,
        customer,
        market,
        platform,
        channel

    from source

)

select * from renamed