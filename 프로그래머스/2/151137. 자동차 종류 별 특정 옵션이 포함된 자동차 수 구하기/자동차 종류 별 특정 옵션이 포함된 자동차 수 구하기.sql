-- 코드를 입력하세요
SELECT car_type, count(*) CARS
from CAR_RENTAL_COMPANY_CAR 
where options like '%시트%'
group by 1
order by car_type