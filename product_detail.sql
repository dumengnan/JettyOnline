use project;

drop table if exists product_detail;

CREATE TABLE product_detail
(
	id INT NOT NULL ,
	name varchar(40) not null,
	price float not null,
	weight float not null,
	color varchar(20),
	brand varchar(20),
	other varchar(40)
) character set utf8;

INSERT INTO product_detail VALUES (80,"与狼共舞多彩T恤衫","129","0.1","[\"白\",\"黄\"]","七匹狼","");
