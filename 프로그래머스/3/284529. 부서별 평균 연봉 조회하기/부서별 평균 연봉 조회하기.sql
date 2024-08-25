-- 코드를 작성해주세요

select d.dept_id, d.DEPT_NAME_EN, round(avg(SAL)) AVG_SAL
from HR_DEPARTMENT d , HR_EMPLOYEES e
where d.dept_id= e.dept_id
group by d.DEPT_NAME_EN,d.dept_id
order by 3 desc
