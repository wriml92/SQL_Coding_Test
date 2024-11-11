select year(o.SALES_DATE) YEAR,
    month(o.SALES_DATE) MONTH,
    count(distinct u.USER_ID) PURCHASED_USERS,
    round(count(distinct u.USER_ID)/(select count(*) from USER_INFO where year(JOINED)='2021'), 1) PUCHASED_RATIO
from USER_INFO u join ONLINE_SALE o on u.USER_ID=o.USER_ID
where year(u.JOINED)='2021'
group by 1, 2
order by 1, 2

-- 상품을 구매한 회원 비율 구하기 (https://school.programmers.co.kr/learn/courses/30/lessons/131534)