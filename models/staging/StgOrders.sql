Select   {{ dbt_utils.surrogate_key(['o.orderid', 'o.customerid', 'o.productid']) }} as sk_orders, 
        o.ORDERID,
        o.ORDERDATE,
        o.SHIPDATE,
        o.SHIPMODE,
        o.ORDERCOSTPRICE,
        o.ORDERSELLINGPRICE,
        o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE as Profit, 
        p.PRODUCTID,
        p.CATEGORY,
        p.SUBCATEGORY,
        c.CUSTOMERID,
        c.CUSTOMERNAME,
        c.SEGMENT,
        c.COUNTRY,
        c.STATE
     --   D.DELIVERY_TEAM
               

from {{ ref('RawOrders') }} o
    left join  {{ ref('RawProducts') }} p
on o.PRODUCTID= p.PRODUCTID
    left join   {{ ref('RawCustomer') }} c
on o.CUSTOMERID = c.CUSTOMERID
--left join {{ ref('DeliveryTeam') }} D
 --   on o.SHIPMODE = D.SHIPMODE