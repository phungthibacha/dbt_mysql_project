with source as (

    select * from {{ source('atliq_data', 'markets') }}

),

renamed as (

    select
        market,
        sub_zone,
        region

    from source

)

select * from renamed