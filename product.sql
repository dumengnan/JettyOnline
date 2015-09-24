
use project;

CREATE TABLE `kind1` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `kind1` (`id`,`name`) VALUES (1001,'服饰');
INSERT INTO `kind1` (`id`,`name`) VALUES (1002,'电子产品');

CREATE TABLE `kind2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `kind2` (`id`,`name`,`parent`) VALUES (2001,'男装',1001);
INSERT INTO `kind2` (`id`,`name`,`parent`) VALUES (2002,'女装',1001);
INSERT INTO `kind2` (`id`,`name`,`parent`) VALUES (2003,'童装',1001);
INSERT INTO `kind2` (`id`,`name`,`parent`) VALUES (2004,'电脑　',1002);
INSERT INTO `kind2` (`id`,`name`,`parent`) VALUES (2005,'手机',1002);
INSERT INTO `kind2` (`id`,`name`,`parent`) VALUES (2006,'平板',1002);
/*
-- Query: SELECT * FROM test4.kind3
LIMIT 0, 1000

-- Date: 2015-09-21 14:41
*/
CREATE TABLE `kind3` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3001,'T恤',2001);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3002,'衬衫',2001);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3003,'西装',2001);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3004,'夹克',2001);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3005,'领带',2001);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3006,'裙子',2002);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3007,'披风',2002);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3008,'丝巾',2002);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3009,'风衣',2002);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3010,'运动',2003);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3011,'内衣',2003);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3012,'外套',2003);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3013,'裤子',2003);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3014,'台式机',2004);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3015,'笔记本',2004);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3016,'一体机',2004);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3017,'服务器',2004);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3018,'安卓手机',2005);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3019,'苹果手机',2005);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3020,'微软手机',2005);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3021,'安卓平板',2006);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3022,'苹果平板',2006);
INSERT INTO `kind3` (`id`,`name`,`parent`) VALUES (3023,'微软平板',2006);

/*
-- Query: SELECT * FROM test4.product
LIMIT 0, 1000

-- Date: 2015-09-21 14:42
*/
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pricet` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `color` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `brand` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4025 DEFAULT CHARSET=utf8;



INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4001,'七匹狼休闲T恤',200,400,'红色','七匹狼',3001);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4002,'雅戈尔商务衬衫',358,300,'白色','雅戈尔',3002);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4003,'新郎西装',2800,2000,'深灰','新郎',3003);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4004,'金利来修身夹克',1000,800,'黑色','金利来',3004);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4005,'罗蒙商务领带',288,20,'蓝条','罗蒙',3005);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4006,'太平鸟韩版连衣裙',899,150,'红色','太平鸟',3006);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4007,'罗兰套头披风',498,200,'粉红色','罗兰',3007);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4009,'恒源祥高档真丝丝巾',476,30,'彩色','恒源祥',3008);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4010,'杰克琼斯运动风衣',1998,750,'黑色','杰克琼斯',3009);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4011,'李宁运动服',600,100,'白色','李宁',3010);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4012,'贝贝女童纯棉内衣',100,15,'卡通','贝贝',3011);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4013,'稻草人儿童外套',320,80,'彩色','稻草人',3012);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4014,'小二郎儿童长裤',120,40,'蓝色','小二郎',3013);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4015,'联想台式电脑F5005',3999,10000,'黑色','联想',3014);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4016,'联想T440',7999,5000,'黑色','联想',3015);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4017,'华硕ET2030INK',4500,8000,'白色','华硕',3016);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4018,'浪潮塔式服务器NP5540M3 ',30000,30000,'黑色','新郎',3017);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4019,'华为P7',3500,200,'黑色','华为',3018);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4020,'Iphone6',4500,250,'金色','苹果',3019);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4021,'微软Lumia 640',999,100,'黑色','微软',3020);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4022,'小米平板',1299,200,'白色','小米',3021);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4023,'Ipad2',2999,400,'白色','苹果',3022);
INSERT INTO `product` (`id`,`name`,`pricet`,`weight`,`color`,`brand`,`parent_id`) VALUES (4024,'Surface3',4288,500,'黑色','微软',3023);



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `loginName` varchar(45) COLLATE utf8_bin NOT NULL,
  `loginPwd` varchar(45) COLLATE utf8_bin NOT NULL,
  `realName` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `address` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
