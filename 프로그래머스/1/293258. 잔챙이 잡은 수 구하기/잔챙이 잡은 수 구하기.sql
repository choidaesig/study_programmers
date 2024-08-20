-- 코드를 작성해주세요

select count(*) FISH_Count
from fish_info
where length < 10 or length is null
