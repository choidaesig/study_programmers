-- 코드를 입력하세요

SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME in ('Milk','Yogurt')
group by cart_id
having count(DISTINCT NAME)>=2
order by 1