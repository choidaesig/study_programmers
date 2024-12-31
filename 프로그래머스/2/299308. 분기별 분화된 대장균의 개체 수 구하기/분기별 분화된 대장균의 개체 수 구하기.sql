-- 코드를 작성해주세요
select concat(quarter(DIFFERENTIATION_DATE),'Q') QUARTER, count(*) ECOLI_COUNT
from ECOLI_DATA 
group by concat(quarter(DIFFERENTIATION_DATE),'Q')
order by 1
