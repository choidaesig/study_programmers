-- 코드를 입력하세요
SELECT outs.animal_id, outs.name
from  animal_ins ins , animal_outs outs
where  ins.datetime> outs.datetime and ins.animal_id = outs.animal_id
order by ins.datetime