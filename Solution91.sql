select *
from Cinema
where id % 2 = 1 and description != "boring"
order by rating desc

-- 
"""
문제 해설:

LeetCode 620번 "Not Boring Movies" 문제는 영화 목록에서 특정 조건을 만족하는 영화를 필터링하는 SQL 쿼리를 작성하는 것입니다. 이 문제를 해결하기 위해서는 다음의 조건을 만족하는 영화를 선택해야 합니다:

1. `id`가 홀수인 영화만 선택합니다.
2. 영화의 후기('description`)이 "boring"이 아닌 경우만 선택합니다.
3. 결과를 평점 내림차순으로 정렬합니다.

SQL 쿼리 설명:

1. `SELECT *`:
   - 영화의 모든 열을 선택합니다.

2. `FROM Cinema`:
   - 데이터가 저장된 테이블인 `Cinema`로부터 정보를 가져옵니다.

3. `WHERE id % 2 = 1 AND description != "boring"`:
   - `id % 2 = 1`은 영화의 `id`가 홀수인지 확인하는 조건입니다. `id`를 2로 나눈 나머지가 1인 경우 홀수로 판단합니다.
   - `description != "boring"`은 영화의 후기가 "boring"이 아닌 경우를 필터링합니다.
   - 두 조건은 **`AND`** 연산자로 결합되어 둘 다 만족하는 경우에만 선택됩니다.

4. `ORDER BY rating DESC`:
   - `rating`을 기준으로 내림차순(`DESC`) 정렬하여 높은 평점의 영화가 먼저 나오도록 합니다.

예시:

- 예를 들어 `Cinema` 테이블에 다음과 같은 데이터가 있다고 가정합시다:

  | id | movie      | description        | rating |
  |----|------------|--------------------|--------|
  | 1  | War        | Great 3D           | 8.9    |
  | 2  | Science    | Fiction            | 8.5    |
  | 3  | Irish      | Boring Movie       | 6.2    |
  | 4  | Ice Song   | Fantasy Movie      | 8.6    |
  | 5  | House Card | Interesting Series | 9.1    |

- 위의 쿼리를 적용하면 `id`가 홀수이고 후기가 "boring"이 아닌 영화들만 선택됩니다:

  | id | movie      | description        | rating |
  |----|------------|--------------------|--------|
  | 1  | War        | Great 3D           | 8.9    |
  | 3  | Irish      | Boring Movie       | 6.2    |
  | 5  | House Card | Interesting Series | 9.1    |

- 최종 결과는 `rating` 내림차순으로 정렬되며 다음과 같습니다:

  | id | movie      | description        | rating |
  |----|------------|--------------------|--------|
  | 5  | House Card | Interesting Series | 9.1    |
  | 1  | War        | Great 3D           | 8.9    |
  | 3  | Irish      | Boring Movie       | 6.2    |

주요 포인트:

- 홀수 판별을 위해 `%` 연산자를 사용하여 `id % 2 = 1` 조건을 사용합니다.
- 후기 조건은 단순히 `!=` 연산자로 아닌 것을 추출합니다.
- `ORDER BY`를 사용해 결과를 원하는 순서로 정렬할 수 있습니다 (`DESC`는 내림차순).

이와 같은 쿼리를 작성하여 문제를 해결할 수 있습니다.
"""