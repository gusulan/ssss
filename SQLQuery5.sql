use XLUC;

drop table UserLevel;
create table UserLevel
(
	levelNo int primary key,
	levelName varchar(20) not null,
	needDays varchar(50),
	levelMark char(2),
);

insert into UserLevel values(1,'无等级','小于或等于5天','==');
insert into UserLevel values(2,'星星','大于5天且小于或等于32天','★');
insert into UserLevel values(3,'月亮','大于32天且小于或等于320天','●');
insert into UserLevel values(4,'太阳','大于320天','◎');

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
insert into Users values('张学友','zxy123','zxy8888@qq.com','2','25');
insert into Users values('刘德华','ldh123','ldh8888@qq.com','1','3');
insert into Users values('成龙','clong1234','cl8888@qq.com','3','55');
insert into Users values('周润发','zrf123','zrf8888@qq.com','2','29');
insert into Users values('范冰冰','fbb123','fbb8888@qq.com','4','355');
insert into Users values('宋祖英','szy123','szy8888@qq.com','4','458');
insert into Users values('刘亦菲','lyf123','lyf8888@qq.com','2','18');

select * from Users;