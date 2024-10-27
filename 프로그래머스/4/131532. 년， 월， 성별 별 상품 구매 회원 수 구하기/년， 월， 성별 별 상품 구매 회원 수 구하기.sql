-- 코드를 입력하세요
with daily as(
SELECT to_char(b.sales_date,'YYYY') year, to_number(to_char(b.sales_date,'MM')) month,user_id
from  online_sale b
)
select d.year,d.month,a.gender,count(distinct a.user_id) users
from daily d , user_info a
where d.user_id = a.user_id and gender is not null
group by d.year, d.month, a.gender
order by 1,2,3 asc




