create database project;

use project;

drop table if exists user;

create table user
(
	id int primary key auto_increment,
	username varchar(40) not null,
	password varchar(16) not null,
	company  varchar(255) not null,
	gender int not null
);

insert into user values(0,'hello', 'world','nanjinglzy', 1);
insert into user values(1,'mee','123','nanjingqushi',0);
