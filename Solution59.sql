SELECT CAR_ID,
    case when CAR_ID in (select CAR_ID
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where '2022-10-16' between START_DATE and END_DATE) then '대여중'
    else '대여 가능' end AVAILBILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by 1
order by 1 desc

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/157340
-- 아무리 조건을 줘도 정답이 나오지 않아서 다른 분들의 답안을 참고해서 풀었다.
-- 역시 이중 쿼리를 다뤄야 풀리는 답이었다.
-- where '2022-10-16' between START_DATE and END_DATE
-- 이 문장을 WHERE start_date <= '2022-10-16' AND end_date >= '2022-10-16' 이렇게도 표현이 가능하다.