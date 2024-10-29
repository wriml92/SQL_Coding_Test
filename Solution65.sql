SELECT CART_ID
from CART_PRODUCTS
where NAME in ('Milk', 'Yogurt')
group by 1
having count(distinct NAME) = 2
order by 1

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/62284
-- NAME에 Milk와 Yogurt가 존재해야 하므로 where 절에 in 연산자를 이용하여 작성
-- 또한 Milk 또는 Yogurt 둘 중 NAME이 중복되지 않도록 distinct 사용한 다음 count 함수 사용