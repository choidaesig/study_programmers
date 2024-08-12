-- 코드를 입력하세요
SELECT ORDER_ID,PRODUCT_ID,to_char(OUT_DATE,'YYYY-MM-DD'), 
    CASE WHEN to_char(OUT_DATE,'YYYY-MM-DD') <= '2022-05-01' THEN '출고완료' 
    WHEN to_char(OUT_DATE,'YYYY-MM-DD') > '2022-05-01' then '출고대기'
    ELSE '출고미정' 
    END "출고여부"
from FOOD_ORDER 
order by 1
