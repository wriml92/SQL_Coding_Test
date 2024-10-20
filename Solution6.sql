SELECT NAME, count(1) COUNT
from ANIMAL_INS
where NAME is not null
group by 1
having COUNT >= 2
order by 1

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- group by 절과 order by 절의 NAME 대신 1로 작성
-- count 함수의 조건은 where절이 아닌 having 절에 적음