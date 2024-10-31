SELECT fh.FLAVOR
from FIRST_HALF fh join JULY j on fh.FLAVOR = j.FLAVOR
group by 1
order by sum(fh.TOTAL_ORDER)+sum(j.TOTAL_ORDER) desc
limit 3

-- 내가 처음한 접근 방식
SELECT fh.FLAVOR, sum(fh.TOTAL_ORDER) + sum(j.TOTAL_ORDER) TOTAL_ORDER
from FIRST_HALF fh join JULY j on fh.SHIPMENT_ID = j.SHIPMENT_ID
group by 1
order by 2 desc
limit 3

-- 주문량이 많은 아이스크림들 조회하기 (https://docs.google.com/spreadsheets/d/1ZVlg443mTBi93rqxE-h1tzAzYRGV0xTeHSqlPdofzt4/edit?gid=999123857#gid=999123857)
-- group by로 묶여주었기 때문에 FLAVOR는 한 종류로만 나오게 됨.
-- 상위 3개만 출력해야 하므로 limit 3 적용