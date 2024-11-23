select s.user_id, round(avg(case when c.action="confirmed" then 1 else 0 end), 2) confirmation_rate
from Signups s left join Confirmations c using (user_id)
group by 1

---

"""

LeetCode의 1934번 Confirmation Rate 문제는 SQL을 사용하는 문제로, 데이터를 처리하여 특정 통계 결과를 구하는 과제이다. 이 문제를 해결하기 위한 힌트를 드리자면 다음과 같다:

1. 문제 이해:
   이 문제는 특정 기준에 따라 성공률을 계산하는 문제다. 성공률은 일반적으로 어떤 이벤트가 얼마나 자주 성공했는지 비율로 표현된다.

2. 테이블 구조 파악:
   문제에서 제공하는 테이블 구조는 두 개의 테이블로 구성될 수 있다:
   - `Signups` 테이블: 사용자가 등록한 정보를 포함한다. (e.g., `user_id`, `created_at` 등)
   - `Confirmations` 테이블: 사용자가 등록을 확인한 정보를 포함한다. (e.g., `user_id`, `confirmed_at` 등)

3. JOIN 사용:
   이 문제는 두 테이블 간의 관계를 파악하고, 등록한 사용자 중 몇 명이 확인 절차를 완료했는지 계산해야 한다. 이를 위해 두 테이블을 `JOIN` 해야 한다. 
   
   예를 들어:
   - `Signups` 테이블의 `user_id`와 `Confirmations` 테이블의 `user_id`를 기준으로 `LEFT JOIN`을 사용하여 등록했지만 확인하지 않은 사용자도 고려해야 한다.

4. 확인율 계산:
   `LEFT JOIN`을 사용하여 `Signups` 테이블과 `Confirmations` 테이블을 연결한 후, `confirmed_at` 값이 존재하는 사용자의 수를 확인해야 한다. 그 다음 총 등록된 사용자 수 대비 확인한 사용자 수의 비율을 계산한다.

5. SQL의 집계 함수 사용:
   - `COUNT(*)`를 사용하여 전체 등록된 사용자 수를 계산한다.
   - `COUNT(confirmed_at)` 또는 조건부 `SUM`을 사용하여 확인된 사용자 수를 계산할 수 있다.
   - 그런 다음 확인율(Confirmation Rate)을 계산다.

"""