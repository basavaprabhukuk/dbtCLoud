Select 
    SEGMENT,
    COUNTRY,
    STATE,   
    sum(Profit) ProfitByCustomer
     from 
{{ ref('StgOrders') }}
group by   COUNTRY,
   SEGMENT,
    COUNTRY,
    STATE