
select car_id, max(case when to_char(start_date,'YYYY-MM-DD') <= '2022-10-16' and to_char(end_date,'YYYY-MM-DD') >= '2022-10-16' then '대여중' else '대여 가능' end )as availablity
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
order by 1 desc