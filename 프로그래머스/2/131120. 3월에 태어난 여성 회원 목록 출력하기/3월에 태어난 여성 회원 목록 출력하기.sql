-- 코드를 입력하세요
SELECT MEMBER_ID, MEMBER_NAME, GENDER, to_char(DATE_OF_BIRTH,'YYYY-MM-DD') DATE_OF_BIRTH
from MEMBER_PROFILE 
where to_char(DATE_OF_BIRTH,'MM')=03 and TLNO is not null and gender ='W'
order by 1