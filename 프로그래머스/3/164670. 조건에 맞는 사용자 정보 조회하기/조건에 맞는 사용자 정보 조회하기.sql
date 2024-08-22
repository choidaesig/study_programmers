-- 코드를 입력하세요
with usersss as(
SELECT u.USER_ID, u.NICKNAME, u.CITY||' '|| u.STREET_ADDRESS1||' '||u.STREET_ADDRESS2 전체주소, REGEXP_REPLACE(TLNO, '(.{3})(.+)(.{4})', '\1-\2-\3') 전화번호
from USED_GOODS_BOARD b, USED_GOODS_USER u
where b.WRITER_ID = u.USER_ID
)
select user_id,NICKNAME,전체주소,전화번호
from usersss
group by user_id, NICKNAME,전체주소,전화번호
having count (*)>=3
order by 1 desc