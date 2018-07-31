use XLUC;

drop table UserLevel;
create table UserLevel
(
	levelNo int primary key,
	levelName varchar(20) not null,
	needDays varchar(50),
	levelMark char(2),
);

insert into UserLevel values(1,'�޵ȼ�','С�ڻ����5��','==');
insert into UserLevel values(2,'����','����5����С�ڻ����32��','��');
insert into UserLevel values(3,'����','����32����С�ڻ����320��','��');
insert into UserLevel values(4,'̫��','����320��','��');

select * from UserLevel;

drop table Users;
create table Users
(
	ucNo int primary key identity(100,1),
	nickName varchar(20) not null,
	pwd varchar(20) not null,
	email varchar(20),
	levelNo int foreign key references UserLevel(levelNo),
	onlineDays float,
);

insert into Users values('jack','admin123','8888888@qq.com','4','999');
insert into Users values('��ѧ��','zxy123','zxy8888@qq.com','2','25');
insert into Users values('���»�','ldh123','ldh8888@qq.com','1','3');
insert into Users values('����','clong1234','cl8888@qq.com','3','55');
insert into Users values('����','zrf123','zrf8888@qq.com','2','29');
insert into Users values('������','fbb123','fbb8888@qq.com','4','355');
insert into Users values('����Ӣ','szy123','szy8888@qq.com','4','458');
insert into Users values('�����','lyf123','lyf8888@qq.com','2','18');

select * from Users;