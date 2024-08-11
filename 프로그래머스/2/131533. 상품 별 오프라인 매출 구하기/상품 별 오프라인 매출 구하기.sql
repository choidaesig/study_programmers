-- 코드를 입력하세요
SELECT product_code, sum(o.SALES_AMOUNT)*p.price sales
from product p, offline_sale o
where p.product_id = o.product_id
group by p.product_code, p.price
order by 2 desc, 1 
