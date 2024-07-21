select WAREHOUSE_ID	,WAREHOUSE_NAME	,ADDRESS, ifnull(FREEZER_YN,'N')
from food_warehouse
where ADDRESS like '경기도 %'