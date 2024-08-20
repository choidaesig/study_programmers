-- 코드를 입력하세요
with food as (
SELECT CATEGORY,max(price) MAX_PRICE
from food_product 
where CATEGORY in ('과자','국','김치','식용유')
group by CATEGORY
order by 1)

select a.CATEGORY	,a.MAX_PRICE	,b.PRODUCT_NAME
from food a, food_product b
where a.category = b.category and a.MAX_PRICE = b.price
order by 2 desc