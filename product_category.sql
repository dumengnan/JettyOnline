
USE project;
DROP TABLE IF EXISTS product_question;
DROP TABLE IF EXISTS product_image;
DROP TABLE IF EXISTS product_description;
DROP TABLE IF EXISTS product_detail;
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
insert into product_category values(15,'1.2.1','衬衫',7,'01020100');
insert into product_category values(16,'1.2.2','外套',7,'01020200');
insert into product_category values(17,'1.2.3','连衣裙',7,'01020300');
insert into product_category values(18,'1.3.1','针织衫',8,'01030100');
insert into product_category values(19,'1.3.2','打底裤',8,'01030200');
insert into product_category values(20,'1.3.3','羽绒服',8,'01030300');
insert into product_category values(21,'1.2.1.1','女白衬衫长袖秋职业',15,'01020101');
insert into product_category values(22,'1.2.1.2','女白衬衫长袖秋修身',15,'01020102');
insert into product_category values(23,'1.2.2.1','女士秋冬西服',16,'01020201');
insert into product_category values(24,'1.2.2.2','女士工作服修身西服',16,'010202020');
insert into product_category values(25,'1.2.3.1','修身连衣裙',17,'01020301');
insert into product_category values(26,'1.2.3.2','商务连衣裙',17,'01020302');
insert into product_category values(27,'1.2.3.3','秋冬连衣裙',17,'01020303');
insert into product_category values(28,'1.3.1.1','加厚针织衫',18,'01030101');
insert into product_category values(29,'1.3.1.2','修身针织衫',18,'01030102');
insert into product_category values(30,'1.3.2.1','冬季打底裤',19,'01030201');
insert into product_category values(31,'1.3.2.2','超薄打底裤',19,'01030202');
insert into product_category values(32,'1.3.3.1','轻薄羽绒服',20,'01030301');
insert into product_category values(33,'1.3.3.2','加厚羽绒服',20,'01030302');
insert into product_category values(34,'1.3.3.2','时尚羽绒服',20,'01030303');
insert into product_category values(35,'1.1.1.1', '休闲运动衣', 12, '01010101');
insert into product_category values(36,'1.1.2.1', '居家睡衣',   13, '01010201');
insert into product_category values(37,'1.1.3.1','衬衫',14,'01010301');
insert into product_category values(38,'1.1.3.2','西装',14,'01010302');
insert into product_category values(39,'1.1.3.3','夹克',14,'01010303');
insert into product_category values(40,'1.1.3.4','领带',14,'01010304');
insert into product_category values(41,'3.1','家居饰品',4,'30100');
insert into product_category values(42,'3.2','厨房餐饮',4,'30200');
insert into product_category values(43,'3.3','床上用品',4,'30300');
insert into product_category values(44,'3.1.1','壁饰',41,'03010100');
insert into product_category values(45,'3.1.2','油画',41,'03010200');
insert into product_category values(46,'3.1.3','仿真花',41,'03010300');
insert into product_category values(47,'3.2.1','杯子',42,'03020100');
insert into product_category values(48,'3.2.2','果盘',42,'03020200');
insert into product_category values(49,'3.2.3','锅具',42,'03020300');
insert into product_category values(50,'3.3.1','毛毯',43,'03030100');
insert into product_category values(51,'3.3.2','枕芯',43,'03030200');
insert into product_category values(52,'3.3.3','凉席',43,'03030300');
insert into product_category values(53,'3.1.1.1','墙饰复古工业风',44,'03010101');
insert into product_category values(54,'3.1.1.2','壁饰欧式地中海',44,'03010102');
insert into product_category values(55,'3.1.1.3','壁饰美式立体',  44,'03010103');
insert into product_category values(56,'3.1.2.1','手绘荷花油画',45,'03010201');
insert into product_category values(57,'3.1.2.2','现代风格手绘油画',45,'03010202');
insert into product_category values(58,'3.1.2.3','美式古典风景油画',45,'03010203');
insert into product_category values(59,'3.1.3.1','国唯美玫瑰高仿真花卉',46,'03010301');
insert into product_category values(60,'3.1.3.2','鱼西美屋蔷薇高仿真花卉',46,'03010302');
insert into product_category values(61,'3.1.3.3','唯美月季高仿真花卉',46,'03010303');
insert into product_category values(62,'3.2.1.1','玻璃杯',47,'03020101');
insert into product_category values(63,'3.2.1.2','高脚杯',47,'03020102');
insert into product_category values(64,'3.2.1.3','旅行杯',47,'03020103');
insert into product_category values(65,'3.2.2.1','传统中式果盘',48,'03020201');
insert into product_category values(66,'3.2.2.2','美式田园果盘',48,'03020202');
insert into product_category values(67,'3.2.2.3','欧式镂空果盘',48,'03020203');
insert into product_category values(68,'3.2.3.1','多功能汤锅',49,'03020301');
insert into product_category values(69,'3.2.3.2','不锈钢炒锅',49,'03020302');
insert into product_category values(70,'3.2.3.3','不锈钢压力锅',49,'03020303');
insert into product_category values(71,'3.3.1.1','金貂绒毛毯',50,'03030101');
insert into product_category values(72,'3.3.1.2','法兰绒毛毯',50,'03030102');
insert into product_category values(73,'3.3.1.3','珊瑚绒毛毯',50,'03030103');
insert into product_category values(74,'3.3.2.1','幻梦舒享枕',51,'03030201');
insert into product_category values(75,'3.3.2.2','凝胶记忆枕',51,'03030202');
insert into product_category values(76,'3.3.2.3','幻梦呵护枕',51,'03030203');
insert into product_category values(77,'3.3.3.1','八角菱形藤席',52,'03030301');
insert into product_category values(78,'3.3.3.2','回字藤席',52,'03030302');
insert into product_category values(79,'3.3.3.3','泰迪熊儿童席',52,'03030303');
insert into product_category values(80,'3.3.3.3','夏季凉席',52,'03030304');
insert into product_category values(81,'4.1','童装',5,'40100');
insert into product_category values(82,'4.2','宝宝用品',5,'40200');
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
insert into product_category values(119,	'2.2.3.2','wp2',           113, '02020302');
insert into product_category values(120,	'2.3.1',  '小米电视',	     10,  '02030100');
insert into product_category values(121,	'2.3.2',  '长虹电视',       10, '02030200');

