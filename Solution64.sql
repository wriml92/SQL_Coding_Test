select * from PLACES
where HOST_ID in (
    select HOST_ID from PLACES
    group by 1
    having count(ID) >= 2
)
order by ID

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/77487
-- 헤비 유저가 공간을 두개 이상 등록한 사람이라고 정의하고 있음.
-- 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회
-- 헤비 유저에 해당하는 유저들을 먼저 찾음.
-- 찾아온 헤비 유저의 HOST_ID를 바탕으로 PLACES 테이블에서 일치하는 행들을 ID 순으로 정렬