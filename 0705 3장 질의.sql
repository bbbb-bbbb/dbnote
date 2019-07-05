-- p.146
-- 3-1. ��� ������ �̸��� ������ �˻��϶�
select bookname, price
from book;

-- 3-2. ��� ������ ������ȣ, ���� �̸�, ���ǻ�, ������ �˻�
select bookid, bookname, publisher, price
from book;

-- 3-3. ���� ���̺� �ִ� ��� ���ǻ縦 �˻�
select publisher
from book;

-- 3-4. ������ 20,000�� �̸��� ������ �˻�
select * --bookname
from book
where price < 20000 ;

-- 3-5. ������ 10,000�� �̻� 20,000�� ������ ������ �˻��Ͻÿ�.
select *
from book
where  price between 10000 and 20000; 

select * 
from book
where 10000 <= price and price <= 20000;

-- 3-6. ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻�
select *
from book
where publisher='�½�����' or publisher='���ѹ̵��';

--!!!!!!!!!!!!!!!!!!!
-- 3-7. '�౸�� ����'�� �Ⱓ�� ���ǻ縦 �˻�
select publisher 
from book
where bookname='�౸�� ����';

select bookname, publisher
from book
where bookname like '�౸�� ����';

-- 3-8. �����̸��� '�౸'�� ���Ե� ���ǻ縦 �˻�.
select bookname, publisher, 
from book
where bookname like '%�౸%';

-- 3-9. �����̸��� ���� �ι�° ��ġ�� '��'��� ���ڿ��� ���� ������ �˻�
select *
from book
where bookname like '_��%';

-- 3-10. �౸�� ���� ���� �� ������ 20000�� �̻��� ������ �˻�
select *
from book
where bookname like '%�౸%' and price >= 20000;

-- 3-11. ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻�
select *
from book
where publisher='�½�����' or publisher='���ѹ̵��';

-- 3-12. ������ �̸������� �˻��Ͻÿ�
select *
from book
order by bookname;

-- 3-13. ������ ���ݼ����� �˻�, ������ ������ �̸������� �˻�
select *
from book
order by price, bookname;

!!!!!!!!!!!!!!!
-- 3-14. ������ ������ ������������ �˻�, ������ ���ٸ� ���ǻ��� ������������ �˻�
select *
from book
order by price desc, publisher asc;

-- 3-15. ���� �ֹ��� ������ �� �Ǹž�?
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

-- 3-16. 2�� �迬�� ���� �ֹ��� ������ �� �Ǹž�?
select sum(salesprice)
from orders
where custid=2;

-- 3-17. ���� �ֹ��� ������ �� �Ǹž�, ��հ�, ������, �ְ��� ���Ͻÿ�.
select sum(salesprice), avg(salesprice), min(salesprice), max(salesprice)
from orders;

-- 3-18. ���缭���� ���� �Ǹ� �Ǽ��� ���Ͻÿ�.
select count(*)
from orders;

-- 3-19. ������ �ֹ��� ������ �� ������ �� �Ǹž��� ���Ͻÿ�.
select custid, sum(orderid), sum(salesprice)
from orders
group by custid;

-- 3-20. ������ 8000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �� ������ ���Ͻÿ�.
--       ��, �� �� �̻� ������ ���� ���Ͻÿ�.
select 