/*제약조건은 주는 이유는 무결점을 지키기 위해*/

/*

○ Github 
github : 공동작업을 하며 버전 관리를 할 수 있는 도구
         인터넷 상의 나의 작업을 올려서 언제 어느곳에서나 액세스 하고 
         다른 사람들과 자료를 공유할 수 있다. 

이걸 하려면 주소창에 http://github.com 을 쳐본다.
github를 할때는 크롬 브라우저를 써야됨.
github id : bb-bb-bb@hanmail.net / pw: st3568pkt

Repository  : 작업을 하고 인터넷상에다가 저장을 한다는 의미

organization 

md=mark down
#을 하나 쓰면 큰 글씨, # 뒤에 공백이 있어야 인식이됨 
글자 크기를 점점 작게하려면 #을 여러개 쓰면 된다.
내꺼 계정 보려면 github.com/bbbb-bbbb 들어가면 된다.

개발한 것들이나 강의 노트들을 github에다가 계속 반영을 할 것이다.

https://desktop.github.com/ : 
     작업하는 걸 내 PC에서 편집하고, 변경되어지는 것을 반영할 수 있음. 
     기트허브에 일일이 안 들어가도 되고.
     그래서 그걸 다운로드 받음. 그리고 기트허브 아이디 로그인. 
     clone a repository from the internet : 인터넷에다가 만든거를 내쪽으로 가져오는 것.
     add ~ drive : 내 컴퓨터에서 한 것을 인터넷에다가 올리는 것.
     bbbb-bbbb 클릭하고 clone 클릭. bbb-bbbb 클릭하고 저장 주소 쓰고 clone 씀.
     그래서 만들어진 github 폴더에다가 내 파일을 옮기고 summary 쓰고 commit 누르기.
     push origin을 누르면 내가 쓴 게 인터넷 상에 올라감.
     그래서 인터넷상에 올라간 거 확인.
     이런 작업들을 통해 내가 만든 웹페이지들을 인터넷 상에 공유를 할 수가 있음.
     repository 지우기 : setting - option - danger zone- delete repository - repository이름 입력-확인
     readme.md 는 메모장으로 연결해서 쓸 수 있음.
     
숙제 : 여태까지 썻던 노트필기 주말동안 정리해서 github에 올리기
      github 계정에 올리고 교수님한테 톡 주기 

md : markdown 파일
구글에서 ' markdown 문법 ' 쳐서 사용법 찾아보기

메모장에서 파일형식 : 모든파일 / 인코딩 : ansi -> utf-8 로 저장

3-3. 데이터조작어-검색 질의 실습 
like 개념 부족.
내일 사야할 것 : 가디건(검) , 나시(목 덜 파이고 품 넉넉 / 흰,검) , 다이소 토이스토리 파우치
주말에 할 것   : 오라클 강의나 유투브 강의 들어보기 . 연습문제 많이 풀어보기. 교수님 숙제하기
varchar와 varchar2의 차이는?


*/



---ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ제약 조건이 전혀 없는 테이블 생성
create table ex(
    id number(3),
    name varchar(30),
    salary number(7)
    );
    
insert into ex values (1, '홍길동', 100);
insert into ex values (1, '홍길동', 200);

select * from ex;

--결과값이 중복됨. 따라서 이 테이블은 정상적으로 작동되는 테이블이 아님.

drop table ex;


--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ제약조건이 있는 테이블 생성
create table ex(
    id number(3),
    name varchar(30),
    salary number(7),
    primary key (id)
    );
    
insert into ex values (1, '홍길동', 100);
insert into ex values (1, '홍길동', 200);
-- primary 키 지정 했기 때문에 중복을 허용할 수가 없어서 이렇게 하면 오류가 뜸

insert into ex values (1, '홍길동', 100);
insert into ex values (2, '홍길동', 200);
-- 이렇게 하면 됨 :)

drop table ex;
--테이블 삭제


--name에 unique 조건 추가
create table ex(
    id number(3),
    name varchar(30) unique,
    salary number(7),
    primary key (id)
    );

--데이터 입력
insert into ex values (1, '홍길동', 100);
insert into ex values (2, '홍길동', 200);
--홍길동이 중복되어서 제대로 안 들어감
--그래서 데이터가 입력되게 하려면 이름 수정해야함
insert into ex values (1, '홍길동', 100);
insert into ex values (2, null, 200);

--새로운 데이터 입력, unique와 primary 키의 차이점
--primary = unique + not null
--unique : null값 허용
insert into ex values (null, '성춘향', 300);

-- 테이블 삭제
drop table ex;

--check  
create table ex(
    id number(3),
    name varchar(30) unique,
    salary number(7) check(salary between 300 and 1000),
    primary key (id)
    );
    
--입력
insert into ex values (1, '홍길동', 100);
--오류뜸 왜냐면 check 제한을 걸었기 떄문

--입력
insert into ex values (1, '홍길동', 300);
--실행 완료

--입력
insert into ex values (2, '박문수', 2000); --이건 오류뜸, check 제한에 위배했기 때문
insert into ex values (3, '성춘향', 500); --실행 완료

/*제약 조건은 결과물 탭에 제약조건을 보면 뭘 걸었는지 알 수 있음.
constraint name이 sys 00000인 이유는 따로 우리가 설정하지 않았기 때문이다.
그래서 만약 오류가 뜨면 그 sys0000(제한 이름)을 가지고 
어떤 constriant이 위배가 되었는지 체크할 수 있음.*/

--제약조건이 있는 테이블들의 목록이 뜸
select constraint_name 
from user_constraints;
--이왕이면 이 이름을 우리가 아는 이름으로 붙여주면 좋기때문에 한 번 해보겠다.

drop table ex;


-- 제약조건의 이름을 지정
create table ex(
    id number(3),
    name varchar(30) constraint name_unique unique,
    salary number(7) constraint name_check check(salary between 300 and 1000),
    primary key (id)
    );

insert into ex values (1, '홍길동', 300);
insert into ex values (2, '박문수', 2000);
insert into ex values (3, '성춘향', 500);
-- 하면 질의결과에 내가 지정한 제약조건 이름이 뜸

select constraint_name 
from user_constraints;
--내가 만든 이름이 잘 들어가있나 확인



--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ 스키마 수정 p. 182
/*스키마 수정할 줄 알면 굳이 테이블을 삭제하고 만들어낼 필요 X
스키마를 수정 할때 기존자료에 어떤 영향을 가는지 생각을 해야됨
어떤 컬럼을 날려도 되는지를 신중하게 생각해야함*/

--테이블 이름 변경
rename ex to example;
rename example to ex; 

--테이블에 컬럼 추가
--alter table add(새로운 컬럼 이름, 새로운 컬럼 타입, 제약조건 등,,)

alter table ex add(dept_id number(3));
--괄호 사이에 , 들어가면 안됨
desc ex;

--컬럼 수정
alter table ex modify(name number);

--컬럼 삭제
alter table ex drop column dept_id;

--기존의 컬럼 이름 수정
alter table ex rename column salary to pay;


--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ 서브쿼리 (부속질의) p.219 




