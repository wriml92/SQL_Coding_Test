select name
from Customer
where referee_id != 2 or referee_id is null

-- find-customer-referee (https://leetcode.com/problems/find-customer-referee/)
-- Find the names of the customer that are not referred by the customer with id = 2