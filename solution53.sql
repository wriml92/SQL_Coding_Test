SELECT USER_ID, PRODUCT_ID
from ONLINE_SALE
group by 1, 2  # USER_ID, PRODUCT_ID
having count(PRODUCT_ID) > 1
order by 1, 2 desc  # USER_ID, PRODUCT_ID