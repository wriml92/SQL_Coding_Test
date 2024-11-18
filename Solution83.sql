select p.product_name product_name, s.year year, s.price price
from Sales s join Product p on s.product_id=p.product_id

-- Product Sales Analysis I (https://leetcode.com/problems/product-sales-analysis-i/)
-- report the product_name, year, and price for each sale_id in the Sales table