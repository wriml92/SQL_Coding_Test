SELECT ANIMAL_ID, NAME, 
    date_format(DATETIME, '%Y-%m-%d') '날짜'
from ANIMAL_INS
order by 1

-- DATETIME에서 DATE로 형 변환 (https://school.programmers.co.kr/learn/courses/30/lessons/59414)
-- 각 동물의 아이디와 이름, 들어온 날짜를 조회하는 SQL문을 작성
-- 날짜(년-월-일)만 보여줘야 하므로 date_format 함수를 적용