-- 코드를 입력하세요
SELECT ('/home/grep/src/'||b.board_id||'/'||b.file_id||b.file_name||b.file_ext ) file_path
from used_goods_board a,  used_goods_file b
where a.board_id = b.board_id and a.views = (select max(c.views) from used_goods_board c)
order by b.file_id desc 