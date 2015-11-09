USE project;


CREATE TABLE product_detail
(
	id INT(11) NOT NULL AUTO_INCREMENT,
	cateid INT NOT NULL,
	name VARCHAR(40) NOT NULL,
	price FLOAT NOT NULL,
	weight FLOAT NOT NULL,
	image VARCHAR(40),
	color VARCHAR(20),
	brand VARCHAR(20),
	other VARCHAR(40),
	FOREIGN KEY (cateid) REFERENCES product_category(id) ON DELETE CASCADE,
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO product_detail VALUES (1,80,"与狼共舞多彩T恤衫","129","0.1","01.jpg","[\"白\",\"黄\"]","七匹狼","");
INSERT INTO product_detail VALUEs (2,80,"杰克琼斯魅力衬衫","399","1.1","02.jpg","白","杰克琼斯","");
