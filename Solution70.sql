SELECT mp.MEMBER_NAME, rr.REVIEW_TEXT, date_format(rr.REVIEW_DATE, "%Y-%m-%d") REVIEW_DATE
from MEMBER_PROFILE mp join REST_REVIEW rr on mp.MEMBER_ID=rr.MEMBER_ID
where mp.MEMBER_ID = (select MEMBER_ID from REST_REVIEW
group by 1
order by count(*) desc limit 1)
order by 3, 2

-- 그룹별 조건에 맞는 식당 목록 출력하기 (https://school.programmers.co.kr/learn/courses/30/lessons/131124)
-- MEMBER_ID를 통하여 두 테이블을 조인
-- 가장 많은 리뷰를 작성한 회원을 찾아야 하므로 where 조건절에서 group by로 묶고, limit 1을 주어 가장 위에 있는 값만 가져옴.
-- 결과는 리뷰 작성일(REVIEW_DATE)을 기준으로 오름차순(asc)
-- 리뷰 작성일이 같다면 리뷰 텍스트(REVIEW_TEXT)를 기준으로 오름차순(asc) 정렬
-- 데이터 포맷이 예제에 나온 결과 데이터와 같아야 하므로 date_format 함수를 이용하여 포맷