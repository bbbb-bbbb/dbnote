-- p.146
-- 3-1. 모든 도서의 이름과 가격을 검색하라
select bookname, price
from book;

-- 3-2. 모든 도서의 도서번호, 도서 이름, 출판사, 가격을 검색
select bookid, bookname, publisher, price
from book;

-- 3-3. 도서 테이블에 있는 모든 출판사를 검색
select publisher
from book;

-- 3-4. 가격이 20,000원 미만인 도서를 검색
select * --bookname
from book
where price < 20000 ;

-- 3-5. 가격이 10,000인 이상 20,000원 이하인 도서를 검색하시오.
select *
from book
where  price between 10000 and 20000; 

select * 
from book
where 10000 <= price and price <= 20000;

-- 3-6. 출판사가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색
select *
from book
where publisher='굿스포츠' or publisher='대한미디어';

--!!!!!!!!!!!!!!!!!!!
-- 3-7. '축구의 역사'를 출간한 출판사를 검색
select publisher 
from book
where bookname='축구의 역사';

select bookname, publisher
from book
where bookname like '축구의 역사';

-- 3-8. 도서이름에 '축구'가 포함된 출판사를 검색.
select bookname, publisher, 
from book
where bookname like '%축구%';

-- 3-9. 도서이름의 왼쪽 두번째 위치에 '구'라는 문자열을 갖는 도서를 검색
select *
from book
where bookname like '_구%';

-- 3-10. 축구에 관한 도서 중 가격이 20000원 이상인 도서를 검색
select *
from book
where bookname like '%축구%' and price >= 20000;

-- 3-11. 출판사가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색
select *
from book
where publisher='굿스포츠' or publisher='대한미디어';

-- 3-12. 도서를 이름순으로 검색하시오
select *
from book
order by bookname;

-- 3-13. 도서를 가격순으로 검색, 가격이 같으면 이름순으로 검색
select *
from book
order by price, bookname;

!!!!!!!!!!!!!!!
-- 3-14. 도서를 가격의 내림차순으로 검색, 가격이 같다면 출판사의 오름차순으로 검색
select *
from book
order by price desc, publisher asc;

-- 3-15. 고객이 주문한 도서의 총 판매액?
select sum(salesprice)
from orders;

insert into orders values (1, 1, 1, 6000, to_date('2014-07-01', 'yyyy-mm-dd'));
insert into orders values (2, 1, 3, 21000, to_date('2014-07-03', 'yyyy-mm-dd'));
insert into orders values (3, 2, 5, 8000, to_date('2014-07-03', 'yyyy-mm-dd'));
insert into orders values (4, 3, 6, 6000, to_date('2014-07-04', 'yyyy-mm-dd'));
insert into orders values (5, 4, 7, 20000, to_date('2014-07-05', 'yyyy-mm-dd'));
insert into orders values (6, 1, 2, 12000, to_date('2014-07-07', 'yyyy-mm-dd'));
insert into orders values (7, 4, 8, 13000, to_date('2014-07-07', 'yyyy-mm-dd'));
insert into orders values (8, 3, 10, 12000, to_date('2014-07-08', 'yyyy-mm-dd'));
insert into orders values (9, 2, 10, 7000, to_date('2014-07-09', 'yyyy-mm-dd'));
insert into orders values (10, 3, 8, 13000, to_date('2014-07-10', 'yyyy-mm-dd'));

-- 3-16. 2번 김연아 고객이 주문한 도서의 총 판매액?
select sum(salesprice)
from orders
where custid=2;

-- 3-17. 고객이 주문한 도서의 총 판매액, 평균값, 최저가, 최고가를 구하시오.
select sum(salesprice), avg(salesprice), min(salesprice), max(salesprice)
from orders;

-- 3-18. 마당서점의 도서 판매 건수를 구하시오.
select count(*)
from orders;

-- 3-19. 고객별로 주문한 도서의 총 수량과 총 판매액을 구하시오.
select custid, sum(orderid), sum(salesprice)
from orders
group by custid;

-- 3-20. 가격이 8000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총 수량을 구하시오.
--       단, 두 권 이상 구매한 고객만 구하시오.
select 