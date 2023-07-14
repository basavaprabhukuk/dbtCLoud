Select  
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

from {{ ref('RawOrders') }} o
    left join  {{ ref('RawProducts') }} p
on o.PRODUCTID= p.PRODUCTID
    left join   {{ ref('RawCustomer') }} c
on o.CUSTOMERID = c.CUSTOMERID