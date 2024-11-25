SELECT p.product_id, IFNULL(round(SUM(p.price*u.units)/sum(u.units),2),0) as average_price
FROM Prices p 
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND 
u.purchase_date BETWEEN p.Start_date and p.end_date
GROUP BY p.product_id

-- Average Selling Price (https://leetcode.com/problems/average-selling-price/description/)
-- find the average selling price for each product. average_price should be rounded to 2 decimal places
-- If a product does not have any sold units, its average selling price is assumed to be 0