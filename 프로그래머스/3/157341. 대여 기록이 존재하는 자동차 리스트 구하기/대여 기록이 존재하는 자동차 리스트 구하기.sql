-- 코드를 입력하세요
SELECT distinct car.car_id
from CAR_RENTAL_COMPANY_CAR car, CAR_RENTAL_COMPANY_RENTAL_HISTORY his
where car.car_id = his.car_id and car.car_type='세단' and
to_char(START_DATE,'MM')=10
order by 1 desc