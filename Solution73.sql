set @HOUR = -1; -- @HOUR 변수에 -1 할당 (@는 행 바뀔 때마다 +1씩 증가)
select (@HOUR := @HOUR+1) HOUR,
    (select count(1)
    from ANIMAL_OUTS
    where hour(DATETIME)=@HOUR) COUNT
from ANIMAL_OUTS
where @hour < 23; -- 22까지

-- 실패한 코드
SELECT hour(DATETIME) HOUR, count(1) COUNT
from ANIMAL_OUTS
group by 1
order by 1

-- 입양 시각 구하기(2) (https://school.programmers.co.kr/learn/courses/30/lessons/59413)
-- 문제에서 0시부터 23시까지 출력을 하라고 했는데 해당 데이터는 7시부터 데이터가 존재하기 때문에 0시부터 6시까지의 결과가 출력되지 않음
-- 0시부터 6시까지의 데이터를 따로 생성해줘야 함
-- 다른 분의 코드를 보고 참고하였음
-- set 명령어는 어떤 변수에 특정 값을 할당할 때 사용
-- HOUR 변수를 -1로 선언해서 22까지 1씩 더해줌.
-- -1부터 더했기 때문에 0부터 23까지 생성
-- ANIMAL_OUTS 테이블에 있는 DATETIME 변수와 @HOUR 변수가 동일한 순간 카운트 진행