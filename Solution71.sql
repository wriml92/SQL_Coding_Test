SELECT date_format(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
from ONLINE_SALE
where month(SALES_DATE) = 3
union
select date_format(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, null as USER_ID, SALES_AMOUNT
from OFFLINE_SALE
where Month(SALES_DATE) = 3
order by SALES_DATE, PRODUCT_ID, USER_ID

-- 오프라인/온라인 판매 데이터 통합하기 (https://school.programmers.co.kr/learn/courses/30/lessons/131537)
-- date_format 함수로 '%Y-%m-%d' 형식으로 포맷
-- union 연산자는 쿼리의 결과를 합치고, 중복된 row는 제거
-- 오프라인 고객은 USER_ID가 없으므로 null 값으로 채움
-- 판매일자가 3월인 모든 데이터를 출력
-- 기준 전부 오름차순(asc 생략) 정렬