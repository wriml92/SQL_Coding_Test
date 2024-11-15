select u.unique_id, e.name
from Employees e left join EmployeeUNI u on e.id=u.id

-- Replace Employee ID With The Unique Identifier (https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/)
-- show the unique ID of each user, If a user does not have a unique ID replace just show null