```sql
select count(1) USERS          -- AGE 값이 null인 레코드 수를 계산하고, 결과를 USERS라는 컬럼명으로 표시.
from USER_INFO                 -- USER_INFO 테이블에서 데이터를 로드.
where AGE is null              -- AGE 컬럼의 값이 null인 레코드만 포함.
```

---

### 상세 설명:

1. **select count(1) USERS**:
   - `count(1)`은 조건에 만족하는 레코드의 개수를 계산한다.
   - 계산된 결과는 `USERS`라는 이름의 컬럼으로 반환된다.

2. **from USER_INFO**:
   - `USER_INFO` 테이블에서 데이터를 가져온다.
   - 이 테이블은 사용자 정보와 관련된 데이터를 저장하고 있다.

3. **where AGE is null**:
   - `AGE` 컬럼의 값이 `null`인 레코드만 필터링한다.
   - `null`은 값이 없는 상태를 의미하므로, 나이에 대한 정보가 없는 사용자들만 포함된다.

---

### 실행 결과의 의도:

- 이 쿼리는 `USER_INFO` 테이블에서 **나이(AGE) 정보가 없는 사용자 수**를 계산하여 반환한다.

---

### 예시:

&emsp;`USER_INFO` 테이블에 다음과 같은 데이터가 있다고 가정해 보자:

| USER_ID | NAME     | AGE  |
|---------|----------|------|
| 1       | Alice    | 25   |
| 2       | Bob      | null |
| 3       | Charlie  | 30   |
| 4       | Diana    | null |

1. **where AGE is null**:
   - `AGE` 컬럼의 값이 `null`인 사용자만 필터링:
     - USER_ID: 2 (Bob)
     - USER_ID: 4 (Diana)

2. **count(1)**:
   - 필터링된 레코드 수를 계산:
     - 결과: 2

&emsp;최종 결과는 다음과 같다:

| USERS |
|-------|
| 2     |

---

### 활용 예:

- 사용자 데이터에서 특정 정보(`AGE`)가 누락된 사용자의 수를 확인할 때 유용하다.
- 데이터 품질 관리를 위해 누락된 데이터를 파악하거나, 이를 기반으로 수정 또는 보완 작업을 진행할 수 있다.