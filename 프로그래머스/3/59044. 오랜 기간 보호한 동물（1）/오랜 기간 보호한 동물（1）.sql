-- 코드를 입력하세요
with animal as (
select name, datetime
from animal_ins
where animal_id not in (select animal_id from animal_outs)
order by 2
)
select * from animal where rownum<=3
