SELECT concat('/home/grep/src/', ugf.BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) FILE_PATH
from USED_GOODS_BOARD ugb join USED_GOODS_FILE ugf on ugb.BOARD_ID = ugf.BOARD_ID
where VIEWS = (select max(VIEWS) from USED_GOODS_BOARD)
order by FILE_ID desc

-- 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/164671
-- 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회
-- FILE_PATH는 FILE_ID 기준으로 내림차순 정렬
-- FILE_PATH는 기본 경로에 게시글 ID, 파일 ID, 파일 이름, 파일 확장자로 구성