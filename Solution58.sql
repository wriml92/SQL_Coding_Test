SELECT a.APNT_NO, p.PT_NAME, p.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
from APPOINTMENT a join DOCTOR d on a.MDDR_ID = d.DR_ID
    join PATIENT p on a.PT_NO = p.PT_NO
where date_format(APNT_YMD, '%Y-%m-%d') = '2022-04-13'
    and a.APNT_CNCL_YMD is NULL and a.MCDP_CD = 'CS'
order by 6

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/132204
-- 세 테이블을 조인할 때에도 join문을 써서 연결
-- where 조건문에 date_format 함수로 날짜 형식 바꿈
-- order by 절에 a.APNT_YMD 대신 6으로 대체