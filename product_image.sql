use project;


CREATE TABLE product_image
(
  id INT(11) NOT NULL AUTO_INCREMENT,
  imagename VARCHAR(20) NOT NULL,
  productid INT(11) NOT NULL,
  FOREIGN KEY (productid) REFERENCES product_detail(id) ON DELETE CASCADE,
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



INSERT INTO product_image VALUES ('',"53.jpg",21);
INSERT INTO product_image VALUES ('',"54.jpg",22);
INSERT INTO product_image VALUES ('',"55.jpg",23);
INSERT INTO product_image VALUES ('',"56.jpg",24);
INSERT INTO product_image VALUES ('',"57.jpg",25);
INSERT INTO product_image VALUES ('',"58.jpg",26);
INSERT INTO product_image VALUES ('',"59.jpg",27);
INSERT INTO product_image VALUES ('',"60.jpg",28);
INSERT INTO product_image VALUES ('',"61.jpg",29);
INSERT INTO product_image VALUES ('',"62.jpg",30);
INSERT INTO product_image VALUES ('',"63.jpg",31);
INSERT INTO product_image VALUES ('',"64.jpg",32);
INSERT INTO product_image VALUES ('',"65.jpg",33);
INSERT INTO product_image VALUES ('',"66.jpg",34);
INSERT INTO product_image VALUES ('',"67.jpg",35);
INSERT INTO product_image VALUES ('',"68.jpg",36);
INSERT INTO product_image VALUES ('',"69.jpg",37);
INSERT INTO product_image VALUES ('',"70.jpg",38);
INSERT INTO product_image VALUES ('',"71.jpg",39);
INSERT INTO product_image VALUES ('',"72.jpg",40);
INSERT INTO product_image VALUES ('',"73.jpg",41);
INSERT INTO product_image VALUES ('',"74.jpg",42);
INSERT INTO product_image VALUES ('',"75.jpg",43);
INSERT INTO product_image VALUES ('',"76.jpg",44);