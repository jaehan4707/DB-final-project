create database project;
use project;
create table student
(
snumber int not null,       #학번
dname varchar(20) not null, #소속 과
sname varchar(20) not null, #학생이름
grade int not null,     #학년
primary key (snumber)  #고유키는 학번으로
);
create table Professor
(
pname varchar(20) not null,  # 교수이름
primary key(pname)
);

create table subject
(
subnum varchar(200) not null,   #과목 코드 
subname varchar(200) not null, #과목 이름
d_name varchar(20) not null, #개설학과
openyear int not null,    #개설년도
semester varchar(20) not null,  #개설학기
s_grade int not null, #학년
stype varchar(20) not null, #교양,전공을 뜻하는 type
c_name varchar(20) not null, #개설 대학
credit int not null,  #학점
lecture int not null, #강의
pratice int not null, #실습
bname varchar(200) not null, #건물이름
p_name varchar(50) not null, # 교슈 테이블 고유키를 외래키로 받을 예정
#time_id int not null, #타임테이블 고유키를 외래키로 받을 예정 multi-value라서 따로뺌.
#호실은 멀티밸류라 따로 뺌.
studquota int not null, #수강정원은 2명이 최대
primary key(subnum) #고유키는 과목코드값
);
create table room #호실 테이블
(
subnum varchar(200) not null, #건물번호
rnumber varchar(200) not null, #강의호실
primary key(subnum,rnumber) #고유키로 건물번호와 강의호실을 묶음.
);
create table register
(
	snum  varchar(200) not null, #과목 코드 외래키
    stuno int not null,  #수강정원
    primary key(snum,stuno)
);

create table subtime #과목 시간 table
(
	s_num varchar(200) not null,  #과목코드
    day varchar(20) not null,  #요일
    time_type varchar(20) not null, #1A, 1B
    primary key(s_num,day,time_type)
);
create table detail_time  #세부 시간 table
(
	time_type varchar(20) not null, #1A , 1B 같은 시간타입
    start_time time not null, #시작시간 
    end_time time not null, #끝나는 시간
    primary key(time_type) 
);

#subject table
##csv 파일 import 해서 subject에 넣어줬음. subject.csv
#insert into subject values("과목코드","과목이름","전공이름","개설년도","개헐학기","학년","교과구분","개설대학","학점","강의","실습","교수이름","건물명","수강정원");

#room 테이블 insert  과목코드와 호실을 묶어서 복합 고유키로 설정  csv 파일 import해서 넣어줬음. room.csv
# insert into room values("과목코드",호실);

#학생 테이블 insert  학번,학과,이름,학년
insert into student(snumber,dname,sname,grade) values(2018111573,"글로벌SW융합전공","이재한",3);
insert into student(snumber,dname,sname,grade) values(2018111886,"글로벌SW융합전공","강창민",3);
insert into student(snumber,dname,sname,grade) values(2018113343,"심화컴퓨터전공","이지언",3);


#교수 테이블  교수이름.
insert into professor(pname) values("구태운");
insert into professor(pname) values("권영우");
insert into professor(pname) values("김경훈");
insert into professor(pname) values("김구진");
insert into professor(pname) values("김도경");
insert into professor(pname) values("김동선");
insert into professor(pname) values("김령환");
insert into professor(pname) values("김명석");
insert into professor(pname) values("김용태");
insert into professor(pname) values("김정근");
insert into professor(pname) values("김정홍");
insert into professor(pname) values("김지영");
insert into professor(pname) values("김진욱");
insert into professor(pname) values("류은경");
insert into professor(pname) values("문재경");
insert into professor(pname) values("박보석");
insert into professor(pname) values("박소은");
insert into professor(pname) values("박혜영");
insert into professor(pname) values("배준현");
insert into professor(pname) values("백낙훈");
insert into professor(pname) values("부희형");
insert into professor(pname) values("서영균");
insert into professor(pname) values("아난드폴");
insert into professor(pname) values("안병준");
insert into professor(pname) values("이성희");
insert into professor(pname) values("이시형");
insert into professor(pname) values("이용주");
insert into professor(pname) values("이원동");
insert into professor(pname) values("이은주");
insert into professor(pname) values("이종택");
insert into professor(pname) values("정기숙");
insert into professor(pname) values("정설영");
insert into professor(pname) values("정순기");
insert into professor(pname) values("정인욱");
insert into professor(pname) values("정창수");
insert into professor(pname) values("조성표");
insert into professor(pname) values("최윤자");
insert into professor(pname) values("최현미");
insert into professor(pname) values("탁병철");
insert into professor(pname) values("홍미주");


# 세부 시간테이블 insert 시간타입 : ex 1A , 시작시간, 끝나는 시간
insert into detail_time(time_type,start_time,end_time) values("1A","09:00","09:30");
insert into detail_time(time_type,start_time,end_time) values("1B","09:30","10:00");
insert into detail_time(time_type,start_time,end_time) values("2A","10:00","10:30");
insert into detail_time(time_type,start_time,end_time) values("2B","10:30","11:00");
insert into detail_time(time_type,start_time,end_time) values("3A","11:00","11:30");
insert into detail_time(time_type,start_time,end_time) values("3B","11:30","12:00");
insert into detail_time(time_type,start_time,end_time) values("4A","12:00","12:30");
insert into detail_time(time_type,start_time,end_time) values("4B","12:30","13:00");
insert into detail_time(time_type,start_time,end_time) values("5A","13:00","13:30");
insert into detail_time(time_type,start_time,end_time) values("5B","13:30","14:00");
insert into detail_time(time_type,start_time,end_time) values("6A","14:00","14:30");
insert into detail_time(time_type,start_time,end_time) values("6B","14:30","15:00");
insert into detail_time(time_type,start_time,end_time) values("7A","15:00","15:30");
insert into detail_time(time_type,start_time,end_time) values("7B","15:30","16:00");
insert into detail_time(time_type,start_time,end_time) values("8A","16:00","16:30");
insert into detail_time(time_type,start_time,end_time) values("8B","16:30","17:00");
insert into detail_time(time_type,start_time,end_time) values("9A","17:00","17:30");
insert into detail_time(time_type,start_time,end_time) values("9B","17:30","18:00");


#과목 시간 테이블  (과목코드,요일,시간타입 ex : 1A)
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-005","화","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-005","화","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-005","화","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-005","목","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-005","목","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-005","목","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-006","화","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0003-006","화","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0003-006","화","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0003-006","목","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0003-006","목","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0003-006","목","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0043-007","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0043-007","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0043-007","화","9B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0043-007","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE)values("CLTR0043-007","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0043-007","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0089-004","토","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0089-004","토","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0089-004","토","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0089-004","토","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0089-004","토","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0089-004","토","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-036","화","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-036","화","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-036","화","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-036","목","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-036","목","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-036","목","2A");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-037","화","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-037","화","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-037","화","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-037","목","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-037","목","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-037","목","2A");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-038","화","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-038","화","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-038","화","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-038","목","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-038","목","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-038","목","2A");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-039","화","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-039","화","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-039","화","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-039","목","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-039","목","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("CLTR0205-039","목","2A");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-010","화","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-010","화","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-010","화","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-010","목","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-010","목","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-010","목","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-011","수","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-011","수","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-011","수","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-011","금","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-011","금","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-011","금","8A");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-012","월","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-012","월","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-012","월","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-012","수","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-012","수","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-012","수","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-013","월","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-013","월","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-013","월","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-013","수","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-013","수","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-013","수","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-014","월","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-014","월","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-014","월","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-014","수","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-014","수","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0301-014","수","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-005","월","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-005","월","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-005","월","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-005","수","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-005","수","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-005","수","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-006","수","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-006","수","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-006","수","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-006","월","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-006","월","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0311-006","월","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-006","월","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-006","월","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-006","월","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-006","수","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-006","수","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-006","수","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-007","월","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-007","월","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-007","월","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-007","수","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-007","수","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-007","수","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-008","월","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-008","월","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-008","월","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-008","수","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-008","수","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-008","수","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-009","월","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-009","월","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-009","월","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-009","수","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-009","수","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0331-009","수","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0368-001","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0368-001","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0368-001","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0368-001","목","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0368-001","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COME0368-001","목","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","화","9B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-001","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","화","9B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-002","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","화","9B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-003","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","화","9B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0204-004","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","월","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","월","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","월","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","월","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","수","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","수","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","수","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-001","수","8B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","월","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","월","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","월","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","월","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","수","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","수","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","수","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-002","수","8B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","월","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","월","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","월","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","월","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","수","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","수","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","수","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-003","수","8B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","월","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","월","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","월","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","월","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","수","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","수","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","수","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0216-004","수","8B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-002","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-002","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-002","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-002","목","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-002","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-002","목","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-003","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-003","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-003","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-003","화","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-003","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-003","화","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-005","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-005","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-005","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-005","화","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-005","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0224-005","화","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-002","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-002","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-002","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-002","목","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-002","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-002","목","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-003","수","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-003","수","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-003","수","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-003","목","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-003","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0312-003","목","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-002","화","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-003","화","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-004","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-005","목","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0322-006","화","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-001","금","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-002","금","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-003","금","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0328-004","금","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-005","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-005","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-005","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-005","화","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-005","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-005","화","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-006","수","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-006","수","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-006","수","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-006","월","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-006","월","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-006","월","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-007","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-007","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-007","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-007","목","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-007","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-007","목","6B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-008","월","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-008","월","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-008","월","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-008","수","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-008","수","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0411-008","수","2A");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0423-001","월","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0423-001","월","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0423-001","월","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0423-001","수","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0423-001","수","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0423-001","수","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0428-001","월","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0428-001","월","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0428-001","월","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0428-001","수","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0428-001","수","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0428-001","수","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-001","화","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-002","금","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("COMP0453-003","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-001","목","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","8B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","9A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0213-002","화","9B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-001","수","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","3B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","4A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("GLSO0217-002","목","4B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0418-001","토","1A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0418-001","토","1B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0418-001","토","2A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0418-001","토","2B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0418-001","토","3A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0418-001","토","3B");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0419-001","월","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0419-001","월","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0419-001","월","8A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0419-001","수","7A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0419-001","수","7B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0419-001","수","8A");

INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0424-001","월","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0424-001","월","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0424-001","월","6B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0424-001","수","5B");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0424-001","수","6A");
INSERT INTO SUBTIME(S_NUM,DAY,TIME_TYPE) values("ITEC0424-001","수","6B");

#외래키를 지정해줘야합니다.
SET foreign_key_checks =0;
#교수 키를 subject키로 넘겨줌
alter table subject add foreign key(p_name) references professor(pname) on delete cascade;
alter table subject add foreign key(p_name) references professor(pname) on update cascade;

#register table에 학번은 student table에 학번을 외래키로 받아옴.
alter table register add foreign key(stuno) references student(snumber) on delete cascade;
alter table register add foreign key(stuno) references student(snumber) on update cascade;

#register table에 과목코드는 subject table의 과목코드를 외래키로 받아옴.
alter table register add foreign key(snum) references subject(subnum) on update cascade; #
alter table register add foreign key(snum) references subject(subnum) on delete cascade;

#room table에 과목코드를 subject에서 외래키로 받아옴.
alter table room add foreign key(subnum) references subject(subnum) on update cascade;
alter table room add foreign key(subnum) references subject(subnum) on delete cascade;

#과목 시간 table은 세부시간 테이블에서 시간 타입을 외래키로 받음.
alter table subtime add foreign key(time_type) references detail_time(time_type) on delete cascade;
alter table subtime add foreign key(time_type) references detail_time(time_type) on update cascade;
#SET foreign_key_checks =1;
#트리거만들기

#1.학점 제한 트리거
drop trigger if exists credit_max;
delimiter //
create trigger credit_max after insert on register
for each row
begin
if (select sum(credit) from register,subject,student
 where register.snum=subject.subnum and new.stuno=student.snumber 
and register.stuno = student.snumber group by(new.stuno)) > 24 then
#delete from register where snum = new.snum and stuno=new.stuno;
signal sqlstate '45000'
set message_text = 'Error : 수강학점은 24학점이 최대입니다.';
END IF;
END//
delimiter ;

#2.교양 수강 제한 트리거
drop trigger if exists not_major;
delimiter //
create trigger not_major after insert on register
for each row
begin
if (select sum(credit) from student,register,subject
 where register.snum=subject.subnum and new.stuno = student.snumber and new.stuno = register.stuno and subject.stype="교양" group by(new.stuno))>9 then
 signal sqlstate '45000'
set message_text= 'Error : 교양과목은 최대 9학점 입니다.';
END IF;
END//
delimiter ;

#3.한 과목 수강수 제한 트리거 2명
drop trigger if exists max_people;
delimiter //
create trigger max_people after insert on register
for each row
begin 
if(select count(*) from student,register,subject 
where new.snum=subject.subnum and register.stuno = student.snumber and register.snum = subject.subnum group by(subnum)) > 2 then
signal sqlstate '45000'
set message_text='Error : 한 과목은 2명의 수강생만을 가집니다';
END IF;
END//
delimiter ;
        
#4.겹치는 시간 찾아내는 트리거
drop trigger if exists same_time;
delimiter //
create trigger same_time after insert on register
for each row
begin 
if(SELECT count(*)
FROM (DETAIL_TIME x JOIN SUBTIME a ON a.TIME_TYPE=x.TIME_TYPE) join register C on a.s_num = c.snum
JOIN (DETAIL_TIME y JOIN SUBTIME b ON b.TIME_TYPE=y.TIME_TYPE) join register D on b.s_num = d.snum on
x.start_time < y.end_time   
    and x.end_time > y.start_time
    and a.s_num != b.s_num
    and a.day = b.day  #요일같고
    and c.stuno = d.stuno #학번같고
    and a.s_num=any(select distinct snum from register,subtime where snum=s_num)
    and b.s_num=any(select distinct snum from register,subtime where snum=s_num))>0 then
signal sqlstate '45000'
set message_text='Error : 겹치는 시간대의 수업은 들을 수 없습니다';
END IF;
END//
delimiter ;