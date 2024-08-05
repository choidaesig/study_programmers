-- 코드를 입력하세요
SELECT a.animal_id, a.name
from ANIMAL_OUTS a
minus
SELECT b.animal_id, b.name
from ANIMAL_INS b;