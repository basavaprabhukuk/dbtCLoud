Select  * , ORDERSELLINGPRICE-ORDERCOSTPRICE as Profit
from {{ ref('RawOrders') }}