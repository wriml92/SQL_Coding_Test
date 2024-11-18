select customer_id, count(1) count_no_trans
from Visits v left join Transactions t on v.visit_id = t.visit_id
where t.visit_id is null
group by customer_id

-- Customer Who Visited but Did Not Make Any Transactions (https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions)
-- find the IDs of the users who visited without making any transactions and the number of times they made these types of visits