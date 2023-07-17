{%- set tabletype = "orderstable" -%}


Select ORDERID,
       '{{tabletype}}' as table_type,
       *
     from 
{{ ref('StgOrders') }}