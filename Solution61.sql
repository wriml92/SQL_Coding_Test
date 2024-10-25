SELECT ri.REST_ID, ri.REST_NAME, ri.FOOD_TYPE, ri.FAVORITES, ri.ADDRESS,
    round(avg(REVIEW_SCORE),2) SCORE
from REST_INFO ri join REST_REVIEW rr on ri.REST_ID = rr.REST_ID
where ADDRESS like '서울%'
group by 1
order by 6 desc, 4 desc

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/131118
-- 역시 문제는 끝까지 꼼꼼히 읽어야 한다. 3자리에서 반올림을 해야 한다는 걸 안 읽어서 시간이 좀 치제되었다.
-- 서울에 있는 식당만 가져와야만 하므로 where 절에 like를 써서 조건 작성
-- 반올림 함수는 round로 2자리까지만 출력해야하므로 점수 뒤에 2를 붙임
-- 1 = ri.REST_ID, 6 = SCORE, 4 = ri.FAVORITES