SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where ANIMAL_TYPE = 'Dog' and NAME like '%el%'
order by 2

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 이름이 'el'이 들어간 개를 찾아야 하므로 and로 where 절 완성
-- order by 절에 2가 NAME 대신 들어감