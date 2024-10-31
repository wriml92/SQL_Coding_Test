SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS,
    if(FREEZER_YN is NULL, 'N', FREEZER_YN) FREEZER_YN
from FOOD_WAREHOUSE
where ADDRESS like '경기%'
order by 1

-- 경기도에 위치한 식품창고 목록 출력하기 (https://school.programmers.co.kr/learn/courses/30/lessons/131114)
-- 경기도에 위치한 창고를 구해야 하므로 where 절에 '경기%'를 주어 조건문 작성
-- 냉동시설 여부가 NULL일 경우 'N'으로 출력해달라 했으므로 if 문을 이용하여 작성
-- 창고 ID(WAREHOUSE_ID) 기준으로 오름차순