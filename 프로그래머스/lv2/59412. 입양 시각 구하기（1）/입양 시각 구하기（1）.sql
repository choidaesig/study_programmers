-- 코드를 입력하세요
SELECT hour(datetime) as HOUR, count(*) AS COUNT
from animal_outs
where hour(datetime)>8 and hour(datetime)<20
group by 1
order by 1