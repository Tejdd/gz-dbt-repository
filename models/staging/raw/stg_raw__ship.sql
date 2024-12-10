with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        log_cost,
        CAST(ship_cost as FLOAT64) 

    from source

)

select * from renamed
