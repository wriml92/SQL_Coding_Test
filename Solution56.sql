SELECT *
from CAR_RENTAL_COMPANY_CAR
where OPTIONS like "%네비게이션%"
order by CAR_ID desc

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/157343
-- 네비게이션이 내용 안에 포함되어야 하므로 where 구문 안에 like 사용