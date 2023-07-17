with all_orders as (
Select * from {{ ref('StgOrders') }}
)

Select ORDERID,sum(ORDERSELLINGPRICE) as sellingpricecheck from all_orders
group by ORDERID  
having sellingpricecheck <0
