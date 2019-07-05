/*���������� �ִ� ������ �������� ��Ű�� ����*/

/*

�� Github 
github : �����۾��� �ϸ� ���� ������ �� �� �ִ� ����
         ���ͳ� ���� ���� �۾��� �÷��� ���� ����������� �׼��� �ϰ� 
         �ٸ� ������ �ڷḦ ������ �� �ִ�. 

�̰� �Ϸ��� �ּ�â�� http://github.com �� �ĺ���.
github�� �Ҷ��� ũ�� �������� ��ߵ�.
github id : bb-bb-bb@hanmail.net / pw: st3568pkt

Repository  : �۾��� �ϰ� ���ͳݻ󿡴ٰ� ������ �Ѵٴ� �ǹ�

organization 

md=mark down
#�� �ϳ� ���� ū �۾�, # �ڿ� ������ �־�� �ν��̵� 
���� ũ�⸦ ���� �۰��Ϸ��� #�� ������ ���� �ȴ�.
���� ���� ������ github.com/bbbb-bbbb ���� �ȴ�.

������ �͵��̳� ���� ��Ʈ���� github���ٰ� ��� �ݿ��� �� ���̴�.

https://desktop.github.com/ : 
     �۾��ϴ� �� �� PC���� �����ϰ�, ����Ǿ����� ���� �ݿ��� �� ����. 
     ��Ʈ��꿡 ������ �� ���� �ǰ�.
     �׷��� �װ� �ٿ�ε� ����. �׸��� ��Ʈ��� ���̵� �α���. 
     clone a repository from the internet : ���ͳݿ��ٰ� ����Ÿ� �������� �������� ��.
     add ~ drive : �� ��ǻ�Ϳ��� �� ���� ���ͳݿ��ٰ� �ø��� ��.
     bbbb-bbbb Ŭ���ϰ� clone Ŭ��. bbb-bbbb Ŭ���ϰ� ���� �ּ� ���� clone ��.
     �׷��� ������� github �������ٰ� �� ������ �ű�� summary ���� commit ������.
     push origin�� ������ ���� �� �� ���ͳ� �� �ö�.
     �׷��� ���ͳݻ� �ö� �� Ȯ��.
     �̷� �۾����� ���� ���� ���� ������������ ���ͳ� �� ������ �� ���� ����.
     repository ����� : setting - option - danger zone- delete repository - repository�̸� �Է�-Ȯ��
     readme.md �� �޸������� �����ؼ� �� �� ����.
     
���� : ���±��� ���� ��Ʈ�ʱ� �ָ����� �����ؼ� github�� �ø���
      github ������ �ø��� ���������� �� �ֱ� 

md : markdown ����
���ۿ��� ' markdown ���� ' �ļ� ���� ã�ƺ���

�޸��忡�� �������� : ������� / ���ڵ� : ansi -> utf-8 �� ����

3-3. ���������۾�-�˻� ���� �ǽ� 
like ���� ����.
���� ����� �� : �����(��) , ����(�� �� ���̰� ǰ �˳� / ��,��) , ���̼� ���̽��丮 �Ŀ�ġ
�ָ��� �� ��   : ����Ŭ ���ǳ� ������ ���� ���� . �������� ���� Ǯ���. ������ �����ϱ�
varchar�� varchar2�� ���̴�?


*/



---�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ����� ������ ���� ���� ���̺� ����
create table ex(
    id number(3),
    name varchar(30),
    salary number(7)
    );
    
insert into ex values (1, 'ȫ�浿', 100);
insert into ex values (1, 'ȫ�浿', 200);

select * from ex;

--������� �ߺ���. ���� �� ���̺��� ���������� �۵��Ǵ� ���̺��� �ƴ�.

drop table ex;


--�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ����������� �ִ� ���̺� ����
create table ex(
    id number(3),
    name varchar(30),
    salary number(7),
    primary key (id)
    );
    
insert into ex values (1, 'ȫ�浿', 100);
insert into ex values (1, 'ȫ�浿', 200);
-- primary Ű ���� �߱� ������ �ߺ��� ����� ���� ��� �̷��� �ϸ� ������ ��

insert into ex values (1, 'ȫ�浿', 100);
insert into ex values (2, 'ȫ�浿', 200);
-- �̷��� �ϸ� �� :)

drop table ex;
--���̺� ����


--name�� unique ���� �߰�
create table ex(
    id number(3),
    name varchar(30) unique,
    salary number(7),
    primary key (id)
    );

--������ �Է�
insert into ex values (1, 'ȫ�浿', 100);
insert into ex values (2, 'ȫ�浿', 200);
--ȫ�浿�� �ߺ��Ǿ ����� �� ��
--�׷��� �����Ͱ� �Էµǰ� �Ϸ��� �̸� �����ؾ���
insert into ex values (1, 'ȫ�浿', 100);
insert into ex values (2, null, 200);

--���ο� ������ �Է�, unique�� primary Ű�� ������
--primary = unique + not null
--unique : null�� ���
insert into ex values (null, '������', 300);

-- ���̺� ����
drop table ex;

--check  
create table ex(
    id number(3),
    name varchar(30) unique,
    salary number(7) check(salary between 300 and 1000),
    primary key (id)
    );
    
--�Է�
insert into ex values (1, 'ȫ�浿', 100);
--������ �ֳĸ� check ������ �ɾ��� ����

--�Է�
insert into ex values (1, 'ȫ�浿', 300);
--���� �Ϸ�

--�Է�
insert into ex values (2, '�ڹ���', 2000); --�̰� ������, check ���ѿ� �����߱� ����
insert into ex values (3, '������', 500); --���� �Ϸ�

/*���� ������ ����� �ǿ� ���������� ���� �� �ɾ����� �� �� ����.
constraint name�� sys 00000�� ������ ���� �츮�� �������� �ʾұ� �����̴�.
�׷��� ���� ������ �߸� �� sys0000(���� �̸�)�� ������ 
� constriant�� ���谡 �Ǿ����� üũ�� �� ����.*/

--���������� �ִ� ���̺���� ����� ��
select constraint_name 
from user_constraints;
--�̿��̸� �� �̸��� �츮�� �ƴ� �̸����� �ٿ��ָ� ���⶧���� �� �� �غ��ڴ�.

drop table ex;


-- ���������� �̸��� ����
create table ex(
    id number(3),
    name varchar(30) constraint name_unique unique,
    salary number(7) constraint name_check check(salary between 300 and 1000),
    primary key (id)
    );

insert into ex values (1, 'ȫ�浿', 300);
insert into ex values (2, '�ڹ���', 2000);
insert into ex values (3, '������', 500);
-- �ϸ� ���ǰ���� ���� ������ �������� �̸��� ��

select constraint_name 
from user_constraints;
--���� ���� �̸��� �� ���ֳ� Ȯ��



--�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ� ��Ű�� ���� p. 182
/*��Ű�� ������ �� �˸� ���� ���̺��� �����ϰ� ���� �ʿ� X
��Ű���� ���� �Ҷ� �����ڷῡ � ������ ������ ������ �ؾߵ�
� �÷��� ������ �Ǵ����� �����ϰ� �����ؾ���*/

--���̺� �̸� ����
rename ex to example;
rename example to ex; 

--���̺� �÷� �߰�
--alter table add(���ο� �÷� �̸�, ���ο� �÷� Ÿ��, �������� ��,,)

alter table ex add(dept_id number(3));
--��ȣ ���̿� , ���� �ȵ�
desc ex;

--�÷� ����
alter table ex modify(name number);

--�÷� ����
alter table ex drop column dept_id;

--������ �÷� �̸� ����
alter table ex rename column salary to pay;


--�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤ� �������� (�μ�����) p.219 




