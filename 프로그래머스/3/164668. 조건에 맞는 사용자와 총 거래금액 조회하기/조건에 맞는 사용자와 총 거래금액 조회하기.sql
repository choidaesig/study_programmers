-- 코드를 입력하세요
SELECT u.USER_ID, u.NICKNAME, sum(b.PRICE) as TOTAL_SALES
from USED_GOODS_BOARD b ,USED_GOODS_USER u 
where  u.USER_ID=b.writer_id and  b.STATUS = 'DONE'
group by u.USER_ID, u.NICKNAME
having sum(b.PRICE) >= 700000
order by 3 