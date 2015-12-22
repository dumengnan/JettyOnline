USE project;

DROP TABLE IF EXISTS experience;

CREATE TABLE experience
(
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(40),
	question VARCHAR(40) NOT NULL,
	A VARCHAR(40),
	B VARCHAR(40),
	C VARCHAR(40),
	D VARCHAR(40),
	image VARCHAR(40),
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO experience VALUES (1,"产品1","您对该件产品感觉怎么样？","强烈推荐","推荐","不推荐","强烈不推荐","01.jpg");
INSERT INTO experience VALUES (2,"产品2","您对该件产品感觉怎么样？","强烈推荐","推荐","不推荐","强烈不推荐","02.jpg");