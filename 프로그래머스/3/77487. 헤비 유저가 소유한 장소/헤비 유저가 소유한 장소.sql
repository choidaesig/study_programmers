-- 코드를 입력하세요
with heavy as (
SELECT HOST_ID, COUNT(*)
FROM PLACES
GROUP BY HOST_ID
HAVING COUNT(*) >=2
)
select a.id, a.name, a.host_id
from places a, heavy b
where a.host_id = b.host_id
order by 1 