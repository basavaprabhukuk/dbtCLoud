{%- set furnituretype = "Furniture"  -%}

Select ORDERID,
        category,
        case when category = '{{furnituretype}}' then ORDERCOSTPRICE 
             ELSE 0.00    end as FurnitureCategoryCostPrice  

     from {{ ref('StgOrders') }}