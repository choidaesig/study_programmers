-- 코드를 입력하세요
SELECT mcdp_cd 진료과코드, count(1) 5월예약건수
from appointment
where substr(apnt_ymd,7,1)=5
group by mcdp_cd
order by 2,1