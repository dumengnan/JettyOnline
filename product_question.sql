USE project;

CREATE TABLE `product_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` TEXT,
  `answer` TEXT,
  `productid` INT(11) NOT NULL,
  FOREIGN KEY (productid) REFERENCES product_detail(id) ON DELETE CASCADE,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_question_UNIQUE` (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"商品材料","树脂",21);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"商品材料","实木",22);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"商品材料","铁",23);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"商品产地","广东",24);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"邮费","限时包邮",25);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"商品尺寸","多个尺寸可选",26);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"是否高仿","是",27);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"品种","玫瑰",28);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"品种","月季",29);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"杯子材料","高硼硅",30);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"杯子材料","玻璃",31);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"杯子材料","不锈钢",32);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"果盘材料","塑料",33);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"果盘材料","塑料",34);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"果盘材料","塑料",35);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"锅具材料","不锈钢",36);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"锅具材料","不锈钢",37);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"锅具材料","不锈钢",38);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"毛毯","金貂绒",39);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"毛毯","法兰绒",40);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"毛毯","珊瑚绒",41);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"枕头","舒适",42);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"枕头","记忆",43);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES ('',"枕头","呵护",44);