-- 코드를 입력하세요
SELECT substr(product_code,1,2),count(*) as products
from product
group by 1