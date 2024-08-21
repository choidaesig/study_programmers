-- 코드를 입력하세요
SELECT distinct a.animal_id, a.animal_type, a.name
from ANIMAL_INS a, ANIMAL_OUTS b
where a.ANIMAL_ID = b.ANIMAL_ID and a.sex_upon_intake like 'Intact%' and (b.SEX_UPON_OUTCOME like  'Spayed%' or  b.SEX_UPON_OUTCOME like  'Neutered%')
order by 1 