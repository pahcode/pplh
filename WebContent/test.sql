create database pp3db;
use pp3db;

create table user(
	userId varchar(20) primary key,
	userPw varchar(20) not null,
	userName varchar(30) not null,
	userTel varchar(20) not null,
	reg_date datetime not null default now()
);

select * from user;

insert into user(userID, userPw, userName, userTel) values('admin', '1234', '운영자', '01000000000');
insert into user(userID, userPw, userName, userTel) values('test1', '1234', '사용자1', '01011111111');
insert into user(userID, userPw, userName, userTel) values('test2', '1234', '사용자2', '01022222222');
insert into user(userID, userPw, userName, userTel) values('test3', '1234', '사용자3', '01033333333');