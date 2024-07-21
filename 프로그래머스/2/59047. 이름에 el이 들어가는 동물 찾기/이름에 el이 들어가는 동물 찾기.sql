select ANIMAL_ID, NAME
from animal_ins
where upper(name) like '%EL%' AND animal_type = 'Dog'
ORDER BY 2