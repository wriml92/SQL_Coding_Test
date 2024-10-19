SELECT ugu.USER_ID, ugu.NICKNAME,
    concat(ugu.CITY," ",ugu.STREET_ADDRESS1," ",ugu.STREET_ADDRESS2) "전체주소",
    concat(substr(ugu.TLNO,1,3),"-",substr(ugu.TLNO,4,4),"-",substr(ugu.TLNO,8,4)) "전화번호"
from USED_GOODS_BOARD usb join USED_GOODS_USER ugu
on usb.WRITER_ID = ugu.USER_ID
group by 1
having count(1) >= 3
order by 1 desc

# SELECT ~ from 구문으로 USED_GOODS_USER(ugu) 테이블의 USER_ID, NICKNAME을 불러오고
# ugu 테이블의 CITY와 STREET_ADDRESS1 그리고 STREET_ADDRESS2를 합친 전체주소, 그리고
# 조건에 맞춰 TLNO의 양식을 조정한 전화번호 컬럼을 조회한다.
# concat 함수를 통하여 여러 개 문자열을 하나의 문자열로 합칠 수가 있으며,
# substr 함수를 통하여 문자열을 슬라이싱 할 수 있다.

# ugu 테이블과 USED_GOODS_BOARD(ugb) 테이블을 join 한다.
# 조인 조건으로 ugu 테이블의 USER_ID와 ugb 테이블의 WRITER_ID가 같은 경우에 조인하도록 한다. (on)
# USER_ID를 기준으로 group by 구문으로 그룹화한다. (USER_ID 대신 1로 대체)
# having 구문을 이용하여 COUNT(1)를 통하여 구한 ugb 테이블의 WRITER_ID 개수가 3개 이상인 경우에만 그룹화하도록 한다.
# order by 구문으로 USER_ID를 기준으로 내림차순 정렬한다. (USER_ID를 1로 대체)