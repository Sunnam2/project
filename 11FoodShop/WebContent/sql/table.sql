-- FoodMaster 생성
create user FoodMaster
identified by FoodMaster;
-- resource,connect 권한 부여
grant resource,connect
to FoodMaster;
-- member table 삭제
drop table member;
-- member table 생성
create table member
(
userid varchar2(20) primary key, --유저아이디 중복 불가 기본키 설정
  passwd varchar2(20) not null, --비밀번호
  username varchar2(20) not null, --유저이름
  nickname varchar2(20) not null, --닉네임
  post varchar2(6) not null, --우편번호
  addr1 varchar2(500) not null, --주소1
  addr2 varchar2(500) not null, --주소2
  phone1 varchar2(3) not null, --핸드폰번호 맨앞
  phone2 varchar2(8) not null --핸드폰 뒷번호 8자리
);
create table food --food 테이블 생성
   ( FCode varchar2(20) PRIMARY KEY, --코드명
     FKind varchar2(20) not null, --종류
     FName varchar2(50) not null, --음식명
     FPrice NUMBER(6) not null, --가격
    FImage varchar2(20) not null ); --이미지

