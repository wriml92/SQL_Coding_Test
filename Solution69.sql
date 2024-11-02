SELECT month(START_DATE) MONTH, CAR_ID, count(HISTORY_ID) RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where START_DATE>="2022-08-01" and START_DATE<"2022-11-01" and CAR_ID in
    (select CAR_ID from CAR_RENTAL_COMPANY_RENTAL_HISTORY where date_format(START_DATE, "%Y-%m")
    between "2022-08" and "2022-10" group by 1 having count(HISTORY_ID)>4)
group by 1, 2
having records > 0
order by 1, 2 desc

# 처음 내가 작성한 코드 (오류)
SELECT month(START_DATE), CAR_ID, count(1) RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by 2
having count(1) != 0
order by 1, 2 desc

-- 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
-- (https://school.programmers.co.kr/learn/courses/30/lessons/151139)