USE project;


CREATE TABLE product_description
(
  id  INT(11) NOT NULL AUTO_INCREMENT,
  des VARCHAR(40),
  productid INT(11),
  FOREIGN KEY (productid) REFERENCES product_detail(id) ON DELETE CASCADE,
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO product_description VALUE (1,"职业女衬衫",1);
INSERT INTO product_description VALUE (2,"修身女衬衫",2);
INSERT INTO product_description VALUE (3,"女西服",3);
INSERT INTO product_description VALUE (4,"女西服修身",4);
INSERT INTO product_description VALUE (5,"修身连衣裙",5);
INSERT INTO product_description VALUE (6,"商务连衣裙",6);
INSERT INTO product_description VALUE (7,"秋冬连衣裙",7);
INSERT INTO product_description VALUE (8,"加厚针织衫",8);
INSERT INTO product_description VALUE (9,"修身针织衫",9);
INSERT INTO product_description VALUE (10,"秋冬打底裤",10);
INSERT INTO product_description VALUE (11,"超薄打底裤",11);
INSERT INTO product_description VALUE (12,"轻薄羽绒服",12);
INSERT INTO product_description VALUE (13,"加厚羽绒服",13);
INSERT INTO product_description VALUE (14,"时尚羽绒服",14);
INSERT INTO product_description VALUE (15,"休闲运动衣",15);
INSERT INTO product_description VALUE (16,"居家睡衣",16);
INSERT INTO product_description VALUE (17,"衬衫",17);
INSERT INTO product_description VALUE (18,"西装",18);
INSERT INTO product_description VALUE (19,"夹克",19);
INSERT INTO product_description VALUE (20,"领带",20);

INSERT INTO product_description VALUE (21,"墙饰复古工业风",21);
INSERT INTO product_description VALUE (22,"壁饰欧式地中海",22);
INSERT INTO product_description VALUE (23,"壁饰美式立体",23);
INSERT INTO product_description VALUE (24,"手绘荷花油画",24);
INSERT INTO product_description VALUE (25,"现代风格手绘油画",25);
INSERT INTO product_description VALUE (26,"美式古典风景油画",26);
INSERT INTO product_description VALUE (27,"国唯美玫瑰高仿真花卉",27);
INSERT INTO product_description VALUE (28,"鱼西美屋蔷薇高仿真花卉",28);
INSERT INTO product_description VALUE (29,"唯美月季高仿真花卉",29);
INSERT INTO product_description VALUE (30,"玻璃杯",30);
INSERT INTO product_description VALUE (31,"高脚杯",31);
INSERT INTO product_description VALUE (32,"旅行杯",32);
INSERT INTO product_description VALUE (33,"传统中式果盘",33);
INSERT INTO product_description VALUE (34,"美式田园果盘",34);
INSERT INTO product_description VALUE (35,"欧式镂空果盘",35);
INSERT INTO product_description VALUE (36,"多功能汤锅",36);
INSERT INTO product_description VALUE (37,"不锈钢炒锅",37);
INSERT INTO product_description VALUE (38,"不锈钢压力锅",38);
INSERT INTO product_description VALUE (39,"金貂绒毛毯",39);
INSERT INTO product_description VALUE (40,"法兰绒毛毯",40);
INSERT INTO product_description VALUE (41,"珊瑚绒毛毯",41);
INSERT INTO product_description VALUE (42,"幻梦舒享枕",42);
INSERT INTO product_description VALUE (43,"凝胶记忆枕",43);
INSERT INTO product_description VALUE (44,"幻梦呵护枕",44);
INSERT INTO product_description VALUE (45,"八角菱形藤席",45);
INSERT INTO product_description VALUE (46,"回字藤席",46);
INSERT INTO product_description VALUE (47,"泰迪熊儿童席",47);
INSERT INTO product_description VALUE (48,"夏季凉席",48);
INSERT INTO product_description VALUE (49,"小天才儿童鞋",49);
INSERT INTO product_description VALUE (50,"小天才儿童帽",50);
INSERT INTO product_description VALUE (51,"联想笔记本m490",51);
INSERT INTO product_description VALUE (52,"联想笔记本y420",52);
INSERT INTO product_description VALUE (53,"宏碁笔记本123",53);
INSERT INTO product_description VALUE (54,"联想台式机T1",54);
INSERT INTO product_description VALUE (55,"戴尔台式机T2",55);
INSERT INTO product_description VALUE (56,"联想一体机T3",56);
INSERT INTO product_description VALUE (57,"华为一体机Y4",57);
INSERT INTO product_description VALUE (58,"小米4c",58);
INSERT INTO product_description VALUE (59,"三星s6",59);
INSERT INTO product_description VALUE (60,"iphone 6s plus",60);
INSERT INTO product_description VALUE (61,"iphone 6",61);
INSERT INTO product_description VALUE (62,"wp 1",62);
INSERT INTO product_description VALUE (63,"wp2",63);
INSERT INTO product_description VALUE (64,"小米电视",64);
INSERT INTO product_description VALUE (65,"长虹电视",65);
