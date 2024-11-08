with value as (
    select b.DAILY_FEE, b.CAR_TYPE, a.HISTORY_ID,
           datediff(END_DATE, START_DATE) + 1 PERIOD,
    case 
      when datediff(END_DATE, START_DATE) + 1 >= 90 then '90일 이상'
      when datediff(END_DATE, START_DATE) + 1 >= 30 then '30일 이상'
      when datediff(END_DATE, START_DATE) + 1 >= 7 then '7일 이상'
      else 'NONE' end DURATION_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY a
join CAR_RENTAL_COMPANY_CAR b on a.car_id = b.car_id
where b.car_type = '트럭') -- 자동차 종류가 '트럭'인 차  

select value.history_id, 
    round(value.DAILY_FEE * value.PERIOD * 
          (100 - ifnull(c.discount_rate,0)) / 100) FEE
from value
left join CAR_RENTAL_COMPANY_DISCOUNT_PLAN c
    ON c.duration_type = value.duration_type 
    and c.car_type = value.car_type
order by 2 desc, 1 desc

-- 자동차 대여 기록 별 대여 금액 구하기 (https://school.programmers.co.kr/learn/courses/30/lessons/151141)