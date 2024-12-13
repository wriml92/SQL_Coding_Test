```sql
select ANIMAL_ID, NAME, date_format(DATETIME, '%Y-%m-%d') '날짜'  -- ANIMAL_ID, NAME, DATETIME을 'YYYY-MM-DD' 형식으로 변환한 값을 선택
from ANIMAL_INS                                                  -- ANIMAL_INS 테이블에서 데이터를 가져오기
order by 1                                                       -- 첫 번째 컬럼(ANIMAL_ID)을 기준으로 오름차순 정렬한다.
```

---

### 상세 설명:

1. **select ANIMAL_ID, NAME, date_format(DATETIME, '%Y-%m-%d') '날짜'**:
   - **ANIMAL_ID**: 동물의 고유 식별자를 반환한다.
   - **NAME**: 동물의 이름을 반환한다.
   - **date_format(DATETIME, '%Y-%m-%d') '날짜'**:
     - `DATETIME` 컬럼의 값을 `YYYY-MM-DD` 형식으로 변환한다.
     - `date_format()` 함수는 날짜 및 시간 데이터를 특정 형식으로 변환할 수 있다.
     - 결과 컬럼명은 `'날짜'`로 표시된다.

2. **from ANIMAL_INS**:
   - `ANIMAL_INS` 테이블에서 데이터를 가져온다.
   - 이 테이블은 동물 보호소에 입소한 동물들의 정보를 저장하고 있다.

3. **order by 1**:
   - 첫 번째 선택된 컬럼(`ANIMAL_ID`)을 기준으로 데이터를 오름차순 정렬한다.
   - `ANIMAL_ID`는 고유 식별자이므로 정렬된 결과는 논리적인 순서를 제공한다.

---

### 실행 결과의 의도:

- 이 쿼리는 **동물의 ID, 이름, 입소 날짜**를 조회하고, 날짜(`DATETIME`)를 **`YYYY-MM-DD` 형식**으로 변환하여 표시한다.
- 결과는 동물의 ID(`ANIMAL_ID`) 순서대로 정렬된다.

---

### 예시:

&emsp;`ANIMAL_INS` 테이블에 다음과 같은 데이터가 있다고 가정해 보자:

| ANIMAL_ID | NAME   | DATETIME           |
|-----------|--------|--------------------|
| A001      | Bella  | 2021-01-03 09:00:00 |
| A002      | Max    | 2021-01-01 10:30:00 |
| A003      | Lucy   | 2021-01-02 11:45:00 |

1. **date_format(DATETIME, '%Y-%m-%d')**:
   - `DATETIME` 값을 `YYYY-MM-DD` 형식으로 변환한다:
     - A001: 2021-01-03
     - A002: 2021-01-01
     - A003: 2021-01-02

2. **order by ANIMAL_ID**:
   - `ANIMAL_ID`를 기준으로 오름차순 정렬한다.

&emsp;최종 결과는 다음과 같다:

| ANIMAL_ID | NAME   | 날짜       |
|-----------|--------|-----------|
| A001      | Bella  | 2021-01-03 |
| A002      | Max    | 2021-01-01 |
| A003      | Lucy   | 2021-01-02 |

---

### 활용 예:

- 입소 날짜(`DATETIME`)를 사람이 읽기 쉬운 **'YYYY-MM-DD' 형식**으로 변환하여 데이터를 정리하고자 할 때 유용하다.
- `ANIMAL_ID`를 기준으로 정렬된 데이터를 통해 동물의 정보를 체계적으로 확인할 수 있다.
- 날짜 형식을 맞춰 보고서 작성이나 데이터 분석 작업을 더 쉽게 할 수 있다.