-- 코드를 입력하세요
SELECT a.REST_ID,a.REST_NAME, a.FOOD_TYPE,a.FAVORITES, a.ADDRESS,round(avg(b.REVIEW_SCORE),2) SCORE
from rest_info a, rest_review b
where a.REST_ID	=b.REST_ID	 and substr(a.address,1,2)= '서울'
group by  a.ADDRESS
order by 6 desc, 4 desc