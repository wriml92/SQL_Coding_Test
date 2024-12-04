```sql
select ANIMAL_ID      -- ANIMAL_ID 컬럼을 선택
from ANIMAL_INS       -- ANIMAL_INS 테이블에서 데이터를 로드
where NAME is not null  -- NAME 값이 null이 아닌 레코드만 선택
order by 1            -- 첫 번째 컬럼(ANIMAL_ID)을 기준으로 정렬
```

&emsp;이 코드는 다음과 같은 작업을 수행한다.

- **select ANIMAL_ID**: `ANIMAL_ID` 컬럼의 값을 선택한다.
- **from ANIMAL_INS**: `ANIMAL_INS` 테이블로부터 데이터를 가져온다.
- **where NAME is not null**: `NAME` 컬럼에 값이 존재하는(즉, null이 아닌) 레코드만 필터링한다.
- **order by 1**: 첫 번째 선택된 컬럼인 `ANIMAL_ID`를 기준으로 오름차순 정렬한다.

&emsp;즉, 이름이 있는 동물들의 `ANIMAL_ID`를 가져와서 `ANIMAL_ID` 순서대로 정렬하여 결과를 반환한다.