-- 코드를 작성해주세요
select sum(c.score) SCORE,c.EMP_NO,b.EMP_NAME,	b.POSITION, b.EMAIL
from HR_DEPARTMENT a,HR_EMPLOYEES b,HR_GRADE  c
where a.DEPT_ID = b.DEPT_ID and b.EMP_NO = c.EMP_NO 
group by c.emp_no, b.EMP_NAME,	b.POSITION, b.EMAIL
order by 1 desc
limit 1
