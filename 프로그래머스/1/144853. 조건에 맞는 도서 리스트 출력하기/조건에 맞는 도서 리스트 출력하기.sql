-- 코드를 입력하세요
SELECT book_id, to_char(published_date,'YYYY-MM-DD') published_date
from book
where category='인문' and to_char(published_date,'YY') = 21
order by 2