USE project;


CREATE TABLE product_description
(
  id  INT(11) NOT NULL AUTO_INCREMENT,
  des VARCHAR(40),
  productid INT(11),
  FOREIGN KEY (productid) REFERENCES product_detail(id) ON DELETE CASCADE,
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO product_description VALUE (1,"描述1",1);
INSERT INTO product_description VALUE (2,"描述2",1);
INSERT INTO product_description VALUE (3,"描述3",1);
INSERT INTO product_description VALUE (4,"描述4",2);
INSERT INTO product_description VALUE (5,"描述5",2);
