use project;
drop table if exists product_question;

CREATE TABLE `product_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` text,
  `id_product` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_question_UNIQUE` (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `product_question` (`id`,`question`,`answer`,`id_product`) VALUES (1,"a","aa",80);
INSERT INTO `product_question` (`id`,`question`,`answer`,`id_product`) VALUES (2,"b","bb",80);
INSERT INTO `product_question` (`id`,`question`,`answer`,`id_product`) VALUES (3,"c","cc",81);
