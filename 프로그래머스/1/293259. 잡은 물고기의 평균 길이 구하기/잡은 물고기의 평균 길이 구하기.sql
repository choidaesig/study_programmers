-- 코드를 작성해주세요

with age as(
SELECT IFNULL(LENGTH, '10') LENGTH
FROM FISH_INFO
)
select round(avg(LENGTH),2) AVERAGE_LENGTH
from age

