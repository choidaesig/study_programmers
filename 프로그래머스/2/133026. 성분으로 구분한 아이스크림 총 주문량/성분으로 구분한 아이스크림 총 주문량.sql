-- 코드를 입력하세요
with price as (
SELECT ingredient_type,a.FLAVOR, TOTAL_ORDER ,count(*)*TOTAL_ORDER total
from first_half a, icecream_info b
where a.flavor = b.flavor
group by INGREDIENT_TYPE,a.FLAVOR,TOTAL_ORDER
)
select ingredient_type, sum(total) TOTAL_ORDER
from price
group by ingredient_type
order by 2