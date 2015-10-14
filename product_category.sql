
use project;
create table product_category
(
	id int primary key auto_increment,
	category varchar(20),
	name varchar(40),
	pid int,
	layer int
) character set utf8;

insert into product_category values(1,0,'根',0,0);
insert into product_category values(2,1,'服饰',1,10000);
insert into product_category values(3,2,'电子',1,20000);
insert into product_category values(4,3,'家居',1,30000);
insert into product_category values(5,4,'母婴',1,40000);
insert into product_category values(6,1.1,'中青年',2,10100);
insert into product_category values(7,1.2,'职业女装',2,10200);
insert into product_category values(8,1.3,'青春靓丽',2,10300);
insert into product_category values(9,2.1,'电脑',3,20100);
insert into product_category values(10,2.2,'手机',3,20200);
insert into product_category values(11,2.3,'电视',3,20300);

