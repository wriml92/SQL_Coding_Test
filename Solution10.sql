SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where INTAKE_CONDITION <> 'Aged'
order by 1

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- <>는 같지 않다는 연산자임
-- group by 절에 ANIMAL_ID 대신 1 사용