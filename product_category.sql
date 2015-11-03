
USE project;
DROP TABLE IF EXISTS product_category;

CREATE TABLE product_category
(
	id INT(11) NOT NULL AUTO_INCREMENT,
	category VARCHAR(20),
	name VARCHAR(40),
	pid INT,
	layer VARCHAR(20),
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

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

insert into product_category values(75,	'1.1.1.1',  '休闲运动衣',     12, '01010101');
insert into product_category values(76,	'1.1.2.1',  '居家睡衣',     13, '01010201');

insert into product_category values(81, '4.1','童装',5,'40100');
insert into product_category values(82, '4.2','宝宝用品',5,'40200');
insert into product_category values(83, '4.1.1','鞋子',81,'04010100');
insert into product_category values(84, '4.1.2','帽子',81,'04010200');
insert into product_category values(85, '4.1.1.1','小天才儿童鞋',83,'04010101');
insert into product_category values(86, '4.1.2.1','小天才儿童帽',84,'04010101');
insert into product_category values(87, '4.2.1','纸尿裤','82','04020100');
insert into product_category values(88, '4.2.2.1','帮宝适纸尿裤',87,'04020201');

insert into product_category values(101,	'2.1.1',  '笔记本',         9,	  '02010100');
insert into product_category values(102,	'2.1.2',  '台式机',         9,  '02010200');
insert into product_category values(103,	'2.1.3',  '一体机',         9,  '02010300');
insert into product_category values(104,	'2.1.1.1','联想笔记本m490', 101, '02010101');
insert into product_category values(105,	'2.1.1.2','联想笔记本y420', 101, '02010102');
insert into product_category values(106,	'2.1.1.3','宏碁笔记本123	', 101, '02010103');
insert into product_category values(107,	'2.1.2.1','联想台式机T1',	 102, '02010201');
insert into product_category values(108,	'2.1.2.2','戴尔台式机T2',	 102,'02010202');
insert into product_category values(109,	'2.1.3.1','联想一体机T3',   103,	'02010301');
insert into product_category values(110,	'2.1.3.2','华为一体机Y4',   103,	'02010302');
insert into product_category values(111,	'2.2.1',  '安卓手机',	     10,  '02020100');
insert into product_category values(112,	'2.2.2',  '苹果手机',	     10, '02020200');
insert into product_category values(113,	'2.2.3',  'windows phone', 10, '02020300');
insert into product_category values(114,	'2.2.1.1','小米4c',	       111,	'02020101');
insert into product_category values(115,	'2.2.1.2','三星s6',	       111,	'02020102');
insert into product_category values(116,	'2.2.2.1','iphone 6s plus',112, '02020201');
insert into product_category values(117,	'2.2.2.2','iphone 6	',     112, '02020202');
insert into product_category values(118,	'2.2.3.1','wp 1',	         113, '02020301');
insert into product_category values(119,	'2.2.3.2','wp2',         113, '02020302');
insert into product_category values(120,	'2.3.1',  '小米电视',	     10, '02030100');
insert into product_category values(121,	'2.3.2',  '长虹电视',     10, '02030200');

