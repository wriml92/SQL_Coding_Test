SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where INTAKE_CONDITION = 'Sick'
group by 1

# 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/59036
# group by 절에 ANIMAL_ID 대신 1로 대체 가능