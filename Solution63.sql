SELECT CAR_ID, round(avg(datediff(END_DATE, START_DATE)+1), 1) AVERAGE_DURATION
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by 1
having AVERAGE_DURATION >= 7
order by 2 desc, 1 desc

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/157342
-- group by 절을 통해 자동차 ID별 평균 대여 기간 구하기
-- datediff 함수를 이용해 두 날짜를 빼준 후 1을 더하면 총 대여기간이 됨.
-- 소수점 두 번째 자리에서 반올림하라 했으므로 round(컬럼, 1)로 해주면 됨.
-- 평균 대여기간이 group by 통해 구한 값이기 때문에 having 절을 사용해야 됨.(where 절은 X)