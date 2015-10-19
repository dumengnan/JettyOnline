
use project;
drop table if exists product_category;

create table product_category
(
	id int primary key auto_increment,
	category varchar(20),
	name varchar(40),
	pid int,
	layer varchar(20)
) character set utf8;

insert into product_category values(1,'0','根',0,'0');
insert into product_category values(2,'1','服饰',1,'10000');
insert into product_category values(3,'2','电子',1,'20000');
insert into product_category values(4,'3','家居',1,'30000');
insert into product_category values(5,'4','母婴',1,'40000');
insert into product_category values(6,'1.1','中青年',2,'10100');
insert into product_category values(7,'1.2','职业女装',2,'10200');
insert into product_category values(8,'1.3','青春靓丽',2,'10300');
insert into product_category values(9,'2.1','电脑',3,'20100');
insert into product_category values(10,'2.2','手机',3,'20200');
insert into product_category values(11,'2.3','电视',3,'20300');
insert into product_category values(12,'1.1.1','休闲',6,'01010100');
insert into product_category values(13,'1.1.2','居家服',6,'01010200');
insert into product_category values(14,'1.1.3','商务',6,'01010300');
insert into product_category values(77,'1.1.3.1','衬衫',14,'01010301');
insert into product_category values(78,'1.1.3.2','西装',14,'01010302');
insert into product_category values(79,'1.1.3.3','夹克',14,'01010303');
insert into product_category values(80,'1.1.3.4','领带',14,'01010304');

