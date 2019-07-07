# 7월 2일
######  - 오라클과 sql 설치하는법
######  - 최고관리자 계정을 들어가 hr계정 권한을 변경한 후, sql develop 프로그램 접속, hr 계정 로그인.
######  - 데이터베이스의 기본정의, 특징, 테이블 용어
######  - selcet 기본 구문 : 
######  -- select column / from table / where / group by / having / order by 등


# 7월 3일~5일
######  - 데이터베이스 관련 홈페이지
## - 기초 select문 작성법
######  - 주석처리 하는 법 : --메모 (한줄용) , /*메모*/ (//안에 별 표시 넣었는데 표시가 안되네요.)   
######  - 연산자 : 별표, -, +, / 
######  - null : 0과 space과는 다른 개념, 정의되지 않은 값
######  - 컬럼의 별칭 : as 나 employee e와 같은 방식으로 별칭을 지정하여 구문을 좀 더 깔끔하게 표시할 수 있음.
######  - || 연결연산자 : 두 컬럼을 붙여서 산출해내는 기능을 하며, || 사이에 ''을 넣고 ''안에 넣고 싶은 내용을 기입하면 됨.
######  - where : 검색할 때 조건을 다는 것. 
######  -- 기타 연산자 : 
######  --- (1)between a and b(a와 b의 사이값), 
######  ---             (2)in(정확히 일치, in 쓰고 괄호안에 조건 값 입력) 
######  ---             (3)like(문자의 패턴 비슷, (%)와 (_)를 이용해 검색)
######  ---             (4)is null(값이 null)
######  -- 논리연산자 : and, or, not  
######  -- order by : 순서대로 정렬 , 기본이 오름차순, desc은 내림차순
##  - 단일행 함수
######  - 문자함수, 숫자함수, 날짜함수 등
######  - 변환함수
######  -- (1) to_char : 날짜,숫자를 문자로
######  -- (2) to_number : 문자를 숫자로
######  -- (3) to_date : 문자를 날짜로
######  - 일반함수
######  -- (1) nyl(a,b) : a가 null이면 b로 대체
######  -- (2) nvl2(a,b,c) : a가 null이면 b로 대체, 아니면 c
######  -- (3) nullif(a,b) : a,b 둘 서로가 같으면 null, 아니면 a값 대체
######  -- (4) coalesce(a,b,c,...) : a값이 있으면 a로 출력, 없으면 b, b도 없으면 c .... 이런식
##  - 그룹함수 
######  - 그룹함수의 유형 : avg, sum, max, min, count ... 사용법은 그룹함수(컬럼명)
######  - 그룹함수는 null이 있으면 연산 X, 그래서 nvl 함수 이용
## - Group by ★ ★★이해 어려움
######  - ~~별(부서별, 직업별) 이런 말 있으면 group by ,
######  - group by에 대한 조건을 where 절로 걸으면 안됨.
## - having ★ ★★이해 어려움
######  - group by에 대한 조건을 거는 것. 그룹함수와 함께 사용함.
## - Join ★ ★★이해 어려움
######  - 두 개 이상의 테이블로부터 데이터를 검색하는 것
######  - equi join(inner join) : 테이블 양쪽에 같은 속성을 갖는 컬럼이 있을 때
######  - 3개 이상의 테이블을 조인할 때 : n개의 테이블을 조인한다면 n-1개의 조건이 있어야함
######  - cross join : 왼쪽 테이블의 값을 오른쪽테이블에 다 곱하는 것. 거의 안 씀. 
######  - natural join : equi join에서 중복된 결과가 나오지 않도록 두번째 속성을 제거
######  - outer join : 두 개 이상의 테이블을 조인하는데, 한 쪽에서는 데이터가 있고 한 쪽에서는 데이터가 없을 때 쓰는 기법
######  -- letf join, right join, full outer join
## - 서브쿼리 ★ ★★이해 어려움
######  - 두 번 이상의 질의가 필요할 때, 하나의 질의 구문으로 해결한다.
######  - 주의사항 : 반드시 괄호에 감싸서 수행, 비교 연산자의 우측에 위치, 메인쿼리보다 먼저 수행
######  - 서브쿼리의 유형
######  -- 1. 단일행/다중행 서브쿼리
######  --- (1) 단일행  : 서브쿼리 결과값이 하나
######  --- (2) 다중행  : 서브쿼리 결과값이 둘 이상, in 연산자 사용
######  -- 2. select, from, where
## - Table
######  - 제작 기본 구문 : 
''''html
create tablespace 데이터 스페이스 이름
datefile '데이터 파일 경로'
size 초기사이즈 
autoextend on next 자동증가사이즈
maxsize 최대사이즈;
''''
######  - 삭제 : drop tablespace 이름
######  - 사용자계정 만들기 : create user 아이디 identified by 비밀번호
default tablespace 테이블스페이스이름
######  - 권한 부여하기 : grant 권한리스트 to 아이디 
######  -- 권한 리스트 : connect (로그인 권한), resource(자원을 사용할 수 있는 권한),  dba(db 관리자 권한)
######  - 테이블 생성하기
````html
create table schema_name.table_name
(colunm_1 date_type colunm_constraint,
colunm_2 data_type colunm_constraint,.....)
table_constraint);
ex : 
create table book(
bookid          number not null(null값 허용X),
bookname        varchar2(50:글자수) not null,
publisher       varchar2(10:글자수) not null,
price           number
primary key(bookid)(프라이머리 키는 어떤걸로 쓸지 괄호안에 적어주면 됨));
````
###### - insert 삽입 구문
###### -- insert into tablename values (....값 리스트, 값, 값, 값....);
###### - update 수정 구문
###### -- update 테이블 set 컬럼명= 20000 where 조건
###### - delete 삭제 구문
###### -- delete from 테이블 where 조건
###### - 주요키(primary key) : 
###### -- (1) primary 키 지정할 때 컬럼명 옆에 지정하거나(단, primary key값이 하나일때) primary key를 따로 밑줄에다가 적어도 된다.
###### -- (2) primary 키를 지정하면 중복된 값 허용 X (primary = unique + not null)
###### -- (2-1) 중복된 값을 허용하려면 unique를 사용. create 구문에서 컬럼명 옆에 constrain 으로 기입.
###### - 외래키(foreign key) : primary 키 밑에 foreign key 외래키 속성명 reference 테이블이름(해당테이블의 속성이름)
###### - commit , rollback 구문 
###### -- set auto on 상태에선 롤백이 제대로 역할을 못하니 set auto off를 실행시켜야함
###### -- commit : 여기까지는 정상적으로 저장, 처리 하겠다. 변경된 내용을 영구저장.
###### -- rollback : 이전으로 되돌리는 것. 이전 commit 전에만 되돌려짐.

## - Github 
###### - 공동작업을 하며 관리 할 수 있는 도구. 인터넷 상의 나의 작업을 올려서

언제 어디서나 접근하고 다른사람들과 자료를 공유할 수 있다.
###### - www.github.com와 desktop github를 이용해 작업

## - 스키마 수정
###### - 테이블 이름 변ㄱ여 : rename 원래테이블이름 to 바꾸려는테이블이름
###### - 테이블 컬럼 추가 : alter table 테이블이름 add(새로운컬럼이름, 컬럼타입, 제약조건 등,,)
###### - 컬럼 수정 : alter table 테이블 이름 modigy(컬럼명 수정내용)
###### - 컬럼 삭제 : alter table 테이블 이름 drop column 컬럼명
###### - 기존 컬럼 이름 수정 : alter table 테이블 이름 rename column 원래컬럼이름 to 새로운컬럼이름 
