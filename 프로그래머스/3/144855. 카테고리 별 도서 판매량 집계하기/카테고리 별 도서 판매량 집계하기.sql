-- 2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요.

select CATEGORY, sum(sales)
from book a, book_sales b
where a.book_id=b.book_id and to_char(b.SALES_DATE,'YYYY') = '2022' and to_char(b.SALES_DATE,'MM') = '01'
group by CATEGORY
order by 1 
