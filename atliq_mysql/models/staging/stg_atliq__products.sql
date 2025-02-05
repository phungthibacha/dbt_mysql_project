with source as (

    select * from {{ source('atliq_data', 'products') }}

),

renamed as (

    select
        product_code,
        division,
        segment,
        category,
        product,
        variant

    from source

)

select * from renamed