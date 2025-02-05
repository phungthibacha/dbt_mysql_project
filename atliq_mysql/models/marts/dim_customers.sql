select
    customers.customer_code,
    customers.customer as customer_name,
    trim(customers.market) as market,
    trim(customers.platform) as platform,
    trim(customers.channel) as channel,
    {{ clean_string('markets.sub_zone')}} as sub_zone,
    {{ clean_string('markets.region')}} as region
from
    {{ref('stg_atliq__customers')}} as customers
left join {{ref('stg_atliq__markets')}} as markets
on customers.market = markets.market