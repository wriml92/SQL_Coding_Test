SELECT DR_NAME, DR_ID, MCDP_CD, 
    date_format(HIRE_YMD, '%Y-%m-%d') HIRE_YMD
from DOCTOR
where MCDP_CD in ('CS', 'GS')
order by 4 desc, 1

-- 흉부외과 또는 일반외과 의사 목록 출력하기 (https://school.programmers.co.kr/learn/courses/30/lessons/132203)
-- 진료과가 흉부외과(CS)이거나 일반외과(GS)만 추출해야 하므로 where 조건절 지정
-- 고용일자를 기준으로 내림차순, 다음으로 이름을 기준으로 오름차순