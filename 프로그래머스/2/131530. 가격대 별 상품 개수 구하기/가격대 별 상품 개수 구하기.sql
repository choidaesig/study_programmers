-- 코드를 입력하세요
with price as (
SELECT floor(price/10000) *10000 PRICE_GROUP, product_id
from product
)
select p.PRICE_GROUP  , count(*) PRODUCTS
from price p , product pp
where p.product_id = pp.product_id
group by p.price_group
order by 1