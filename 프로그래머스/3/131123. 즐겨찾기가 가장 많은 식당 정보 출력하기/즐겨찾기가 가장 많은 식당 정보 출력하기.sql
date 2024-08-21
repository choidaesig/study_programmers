-- 코드를 입력하세요
with food_max as (
SELECT FOOD_TYPE,max(FAVORITES) price
from REST_INFO 
group by food_type
)
select  r.FOOD_TYPE,	r.REST_ID,	r.REST_NAME,	r.FAVORITES
from rest_info r, food_max f
where r.FOOD_TYPE= f.FOOD_TYPE and f.price = r.FAVORITES
order by 1 desc