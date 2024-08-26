-- 코드를 입력하세요
SELECT BOARD_ID,	WRITER_ID,	TITLE,	PRICE,	decode(STATUS,'SALE','판매중','DONE','거래완료','RESERVED','예약중')
from USED_GOODS_BOARD 
WHERE to_char(CREATED_DATE,'YYMMDD') = '221005'
order by 1 desc

