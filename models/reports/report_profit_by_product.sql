Select  
    CATEGORY,
    SUBCATEGORY, 
    PRODUCTID,
    
    sum(Profit) as ProfitByProduct
 from {{ ref('StgOrders') }}
 group by 
    CATEGORY,
    SUBCATEGORY, 
    PRODUCTID