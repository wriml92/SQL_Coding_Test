SELECT ANIMAL_ID, NAME, DATETIME
from ANIMAL_INS
where NAME is not null
order by NAME, DATETIME

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- NAME이 null인 값도 있으므로 null인 값은 제외.
-- NAME을 우선 정렬하고 NAME이 같을 경우 DATETIME 기준으로 정렬을 함.