-- 코드를 작성해주세요

select id, case
when percent_rank() over (order by SIZE_OF_COLONY desc) <= 0.25 then "CRITICAL"
when percent_rank() over (order by SIZE_OF_COLONY desc) <= 0.50 then "HIGH"
when percent_rank() over (order by SIZE_OF_COLONY desc) <= 0.75 then "MEDIUM"
else "LOW" end COLONY_NAME

from ECOLI_DATA 
order by 1 asc