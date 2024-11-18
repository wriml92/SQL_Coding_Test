select today.id
from Weather as today
    inner join Weather as yesterday 
    			on date_add(yesterday.recordDate, interval 1 day) = today.recordDate
where today.temperature > yesterday.temperature

-- Rising Temperature (https://leetcode.com/problems/rising-temperature/)
-- find all dates' id with higher temperatures compared to its previous dates (yesterday)