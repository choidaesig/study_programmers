-- 코드를 작성해주세요
select count(b.FISH_NAME) FISH_COUNT, b.FISH_NAME
from FISH_INFO a ,FISH_NAME_INFO b
where a.FISH_TYPE = b.FISH_TYPE 
group by 2
order by 1 desc