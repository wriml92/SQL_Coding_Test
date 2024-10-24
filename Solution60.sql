SELECT year(SALES_DATE) YEAR, month(SALES_DATE) MONTH, GENDER, count(distinct ui.USER_ID) USERS
from USER_INFO ui join ONLINE_SALE os on ui.USER_ID = os.USER_ID
where ui.GENDER is not null
group by 1, 2, 3
order by 1, 2, 3

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/131532
-- year, month : 년도와 월을 구하는 함수
-- 문제 내 동일한 날짜, 회원 ID, 상품 ID 조합에 대해서는 하나의 판매 데이터만 존재한다 했으므로 distinct 통해 중복제거
-- 정보가 없는 경우 결과에서 제외해 달라 했으므로 is not null을 이용해 제거
-- 년, 월, 성별 순서로 상품을 구매한 회원수 집계(group by 문)