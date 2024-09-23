-- 코드를 작성해주세요

select count(*) FISH_COUNT
from FISH_INFO a,FISH_NAME_INFO b
where a.fish_type = b.fish_type and(b.FISH_NAME= 'BASS' or  b.FISH_NAME= 'SNAPPER') 