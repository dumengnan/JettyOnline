use project;
drop table if exists product_description;

CREATE TABLE product_description
(
  id  INT NOT NULL,
  des VARCHAR(40)
)character set utf8;

INSERT INTO product_description VALUE (1,"描述1");
INSERT INTO product_description VALUE (2,"描述2");
INSERT INTO product_description VALUE (3,"描述3");
INSERT INTO product_description VALUE (4,"描述4");
INSERT INTO product_description VALUE (5,"描述5");
