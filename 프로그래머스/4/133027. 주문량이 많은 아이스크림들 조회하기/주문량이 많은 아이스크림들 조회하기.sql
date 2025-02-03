-- 코드를 입력하세요
with ranking as(
SELECT a.FLAVOR ,sum(a.total_order)
from first_half a, july b
where a.FLAVOR = b.FLAVOR 
group by a.FLAVOR
order by 2 desc
)
select flavor
from ranking
where rownum <=3