USE project;
DROP TABLE IF EXISTS lecture;

CREATE TABLE lecture(
  id INT(11) NOT NULL AUTO_INCREMENT,
  pageid INT(11) NOT NULL ,
  lecturetitle VARCHAR(40),
  lecturename VARCHAR(40),
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO lecture VALUES (1,1,"健康养生产品专题","养生保健品");
INSERT INTO lecture VALUES (2,1,"健康养生产品专题","健康保健品");
