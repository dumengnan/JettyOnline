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

INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES (1,"a","aa",1);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES (2,"b","bb",1);
INSERT INTO `product_question` (`id`,`question`,`answer`,`productid`) VALUES (3,"c","cc",2);
