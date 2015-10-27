use project;

drop table if exists product_detail;

CREATE TABLE product_detail
(
	productid INT PRIMARY KEY AUTO_INCREMENT,
	cateid INT NOT NULL,
	name varchar(40) not null,
	price float not null,
	weight float not null,
	image varchar(40),
	video varchar(40),
	color varchar(20),
	brand varchar(20),
	other varchar(40)
) character set utf8;

INSERT INTO product_detail VALUES (1,80,"与狼共舞多彩T恤衫","129","0.1","[\"01.jpg\",\"02.jpg\"]","[\"03.mp4\"]" ,"[\"白\",\"黄\"]","七匹狼","");
INSERT INTO product_detail VALUEs (2,80,"杰克琼斯魅力衬衫","399","1.1","[\"01.jpg\"]","[\"02.mp4\"]","白","杰克琼斯","");
