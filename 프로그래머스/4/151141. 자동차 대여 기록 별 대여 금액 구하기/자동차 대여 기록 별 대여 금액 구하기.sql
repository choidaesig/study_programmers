-- 코드를 입력하세요
SELECT b.history_id ,case when (b.END_DATE-b.START_DATE+1) >=90 
                             then a.DAILY_FEE*(b.END_DATE-b.START_DATE+1)*(SELECT 1-(DISCOUNT_RATE/100) FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN WHERE CAR_TYPE ='트럭' AND DURATION_TYPE ='90일 이상')
                            when (b.END_DATE-b.START_DATE+1) >=30 
                             then a.DAILY_FEE*(b.END_DATE-b.START_DATE+1)*(SELECT 1-(DISCOUNT_RATE/100) FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN WHERE CAR_TYPE ='트럭' AND DURATION_TYPE  ='30일 이상')
                            when (b.END_DATE-b.START_DATE+1) >=7
                             then a.DAILY_FEE*(b.END_DATE-b.START_DATE+1)*(SELECT 1-(DISCOUNT_RATE/100) FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN WHERE CAR_TYPE ='트럭' AND DURATION_TYPE  ='7일 이상')
                            else a.DAILY_FEE*(b.END_DATE-b.START_DATE+1) end as FEE
from CAR_RENTAL_COMPANY_CAR a, CAR_RENTAL_COMPANY_RENTAL_HISTORY b
where a.car_id  =  b.car_id and  a. car_type= '트럭'
order by 2 desc, 1 desc