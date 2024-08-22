-- 코드를 작성해주세요
with air as(
select LOCATION1,LOCATION2,year(YM) YM,PM_VAL1,PM_VAL2
from AIR_POLLUTION 
where  LOCATION2='수원'
)
select ym "YEAR", round(avg(pm_val1),2) "PM10", round(avg(pm_val2),2) "PM2.5"
from air
group by 1
order by 1

