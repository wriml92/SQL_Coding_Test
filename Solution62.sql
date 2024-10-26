SELECT HISTORY_ID, CAR_ID,
    date_format(START_DATE, '%Y-%m-%d') START_DATE,
    date_format(END_DATE, '%Y-%m-%d') END_DATE,
    case when datediff(END_DATE,START_DATE) < 29 then '단기 대여'
    else '장기 대여' end RENT_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where START_DATE like '2022-09%'
order by 1 desc

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/151138
-- date_format을 통해 답안과 같이 년,월,일만 출력
-- datediff을 통해 대여 기간을 구함
-- 대여 기록 ID(HISTORY_ID)로 내림차순 정렬