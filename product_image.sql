use project;


CREATE TABLE product_image
(
  id INT(11) NOT NULL AUTO_INCREMENT,
  imagename VARCHAR(20) NOT NULL,
  productid INT(11) NOT NULL,
  FOREIGN KEY (productid) REFERENCES product_detail(id) ON DELETE CASCADE,
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO product_image VALUES (1,"1_1.jpg",1);
INSERT INTO product_image VALUES (2,"1_2.jpg",1);
INSERT INTO product_image VALUES (3,"2_1.jpg",2);
INSERT INTO product_image VALUES (4,"2_2.jpg",2);
INSERT INTO product_image VALUES (5,"3_1.jpg",2);
