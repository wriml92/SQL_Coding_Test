SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
    case when STATUS = 'SALE' then '판매중'
    when STATUS = 'RESERVED' then '예약중'
    else "거래완료" end 'STATUS'
from USED_GOODS_BOARD
where CREATED_DATE = '2022-10-05' 
order by 1 desc

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- order by 절에 BOARD_ID 대신 1로 짧게 작성
-- case when 조건2 then 값1 when 조건2 then 값2 ... else 값n end 구조
-- case문은 SELECT 절에서 쓰임