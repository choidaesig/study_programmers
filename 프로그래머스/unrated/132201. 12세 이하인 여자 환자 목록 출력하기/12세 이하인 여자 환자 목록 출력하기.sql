-- 코드를 입력하세요
SELECT pt_name, pt_no, gend_cd, age, ifnull(tlno,"NONE")
from patient
WHERE age<13 and gend_cd="W"
ORDER BY AGE DESC, PT_NAME
