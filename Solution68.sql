SELECT b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY,
    sum(bs.SALES * b.PRICE) TOTAL_SALES
from AUTHOR a join BOOK b on a.AUTHOR_ID = b.AUTHOR_ID
join BOOK_SALES bs on b.BOOK_ID = bs.BOOK_ID
where date_format(bs.SALES_DATE,'%Y-%m')='2022-01'
group by 1, 3
order by 1, 3 desc

-- 저자 별 카테고리 별 매출액 집계하기 (https://school.programmers.co.kr/learn/courses/30/lessons/144856)
-- 2022년 1월 도서 핀매 데이터 기준(where 절의 date_format 함수 사용)
-- 저자 별, 카테고리 별 매출액(group by b.AUTHOR_ID, b.CATEGORY)
-- 총 매출액은 bs.SALES(판매량) * b.PRICE(판매가)에 sum 함수 적용
-- 저자 ID(b.AUTHOR_ID)를 오름차순(asc은 생략 가능)으로, 저자 ID가 같다면 카테고리(b.CATEGORY)를 내림차순 정렬(desc)