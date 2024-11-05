SELECT  ugb.TITLE
        , ugb.BOARD_ID
        , ugr.REPLY_ID
        , ugr.WRITER_ID
        , ugr.CONTENTS
        , DATE_FORMAT(ugr.CREATED_DATE, '%Y-%m-%d') CRAETED_DATE
  FROM  USED_GOODS_BOARD AS ugb
  JOIN  USED_GOODS_REPLY AS ugr
    ON  ugb.BOARD_ID = ugr.BOARD_ID
 WHERE  SUBSTR(ugb.CREATED_DATE,1,7) = '2022-10'
-- where date_format(ugb.CREATED_DATE, '%Y-%m-%d') like '2022-10%' 도 가능
order by 6, 1

-- 조건에 부합하는 중고거래 댓글 조회하기 (https://school.programmers.co.kr/learn/courses/30/lessons/164673)