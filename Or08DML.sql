/*
파일명 : Or08DML.sql
DML : Data Manipulation Language(데이터 조작어)
설명 : 레코드를 조작할 때 사용하는 쿼리문, 앞에서 학습했던 select문을 비롯하여 
        update(레코드수정), delete(삭제), insert(입력) 문이 있다
*/

--education 계정에서 학습니다.

--새로운 테이블 생성
create table tb_sample(
    no number(10),
    name VARCHAR2(20),
    loc VARCHAR2(15),
    manager VARCHAR2(30)
    );
 desc tb_sample;
 
 /*
 */
 
 --레코드 입력 1 : 컬럼을 지정한 후 insert
insert into tb_sample(no, name, loc, manager)
    values(10,'기획실','서울','유비');
insert into tb_sample(no, name, loc, manager)
    values(20,'전산팀','수원','관우');
select * from tb_sample;
 -- 입력 2 : 컬럼 지정없이 전체 컬럼을 대상으로 insert
insert into tb_sample values(30,'영업팀','대구','장비');
insert into tb_sample values(40,'인사팀','부산','조자룡');
select * from tb_sample;

insert into tb_sample (no,loc,mana)values(30,'영업팀','대구','장비');

commit;
insert into tb_sample (no,loc,mana)values(30,'영업팀','대구','장비');
ROLLBACK;
