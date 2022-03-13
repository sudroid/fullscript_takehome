{{ config(materialized='table') }}

with orders_fact as (

    select o_custkey, 
    o_orderstatus, 
    o_orderpriority, 
    o_orderdate,
    o_shippriority, 
    sum(o_totalprice) as totalprice
    from orders
    group by o_custkey
    , o_orderstatus
    , o_orderpriority
    , o_orderdate
    , o_shippriority

)

select *
from orders_fact
