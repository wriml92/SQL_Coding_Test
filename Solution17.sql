SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
from FOOD_FACTORY
where ADDRESS like '강원%'
order by 1

-- 강원도에 위치한 생산공장 목록 출력하기 (https://school.programmers.co.kr/learn/courses/30/lessons/131112)
-- FOOD_FACTORY 테이블에서 강원도에 위치한 식품공장의 공장 ID, 공장 이름, 주소 조회
-- 공장 ID를 기준으로 오름차순 정렬