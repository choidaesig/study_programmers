-- 코드를 작성해주세요
with fish as (
SELECT FISH_TYPE,  ifnull(LENGTH,10) LENGTH
from fish_info  
)
select count(*) FISH_COUNT, max(length) MAX_LENGTH, FISH_TYPE
from fish 
group by FISH_TYPE
having avg(LENGTH) >= 33
order by 3