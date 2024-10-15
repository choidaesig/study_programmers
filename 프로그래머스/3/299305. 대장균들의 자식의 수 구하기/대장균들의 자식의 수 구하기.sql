select a.id, count(b.parent_id) CHILD_COUNT
from ECOLI_DATA a left join ECOLI_DATA b on a.ID = b.PARENT_ID	
group by a.id
order by 1