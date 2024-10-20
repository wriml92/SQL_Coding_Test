SELECT count(1)
from USER_INFO
where AGE is null

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/131528
-- 총 몇 명이므로 count(1)을 사용. count(*)로도 사용 가능
-- 나이 정보가 없는 회원을 구해야 하므로 where 절에 AGE is null을 사용