-- 코드를 작성해주세요

select count(*) FISH_COUNT, max(length) MAX_LENGTH, FISH_TYPE
from FISH_INFO 
group by FISH_TYPE
having avg(LENGTH) >= 33
order by 3