SELECT count(distinct NAME) count
from ANIMAL_INS
where NAME is not NULL

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- distinct는 중복되는 값을 하나로 인식