USE project;


CREATE TABLE product_description
(
  id  INT(11) NOT NULL AUTO_INCREMENT,
  des VARCHAR(40),
  productid INT(11),
  FOREIGN KEY (productid) REFERENCES product_detail(id) ON DELETE CASCADE,
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



INSERT INTO product_description VALUE (21,"适于放在电视机墙，沙发墙，走道，玄关处",21);
INSERT INTO product_description VALUE (22,"8框田园风格相框墙贴组合客厅卧室装饰照片墙 墙贴画创意背景墙贴 ",22);
INSERT INTO product_description VALUE (23,"壁饰美式立体",23);
INSERT INTO product_description VALUE (24,"纯手绘油画 古色古香 彰显品味 限时特价",24);
INSERT INTO product_description VALUE (25,"纯手绘显高贵，每幅画面都是一个创作",25);
INSERT INTO product_description VALUE (26,"美式古典风景油画,多个尺寸可选",26);
INSERT INTO product_description VALUE (27,"国唯美玫瑰高仿真花卉",27);
INSERT INTO product_description VALUE (28,"鱼西美屋蔷薇高仿真花卉",28);
INSERT INTO product_description VALUE (29,"唯美月季高仿真花卉",29);

INSERT INTO product_description VALUE (30,"高硼硅玻璃杯",30);
INSERT INTO product_description VALUE (31,"高档无铅水晶玻璃酒杯 葡萄酒杯红酒杯 高脚杯酒具收藏",31);
INSERT INTO product_description VALUE (32,"旅行杯",32);

INSERT INTO product_description VALUE (33,"中式陶瓷水果盘 镂空双耳时尚装饰糖果盘小号",33);
INSERT INTO product_description VALUE (34,"上千度的高温液化烧制，安全、无毒、“0”污染！让您和您的家人使用安全更放心！",34);
INSERT INTO product_description VALUE (35,"高档创意宫廷复古家居客厅装饰品摆件结婚乔迁礼物",35);
INSERT INTO product_description VALUE (36,"多功能汤锅,304不锈钢汤锅20cm加厚加深复底双耳汤锅",36);
INSERT INTO product_description VALUE (37,"不锈钢炒锅,电磁炉通用无涂层油烟",37);
INSERT INTO product_description VALUE (38,"不锈钢压力锅,轻松旋转即开 安全防爆",38);
INSERT INTO product_description VALUE (39,"金貂绒毛毯,宜家款超柔金貂绒毛毯 150*200cm 星光灿烂",39);
INSERT INTO product_description VALUE (40,"法兰绒毛毯,手感细腻不掉色不掉毛",40);
INSERT INTO product_description VALUE (41,"珊瑚绒毛毯,贴身柔软手感细滑",41);
INSERT INTO product_description VALUE (42,"幻梦舒享枕,纯苦荞麦壳填充",42);
INSERT INTO product_description VALUE (43,"凝胶记忆枕,凝胶记忆枕头冰枕头",43);
INSERT INTO product_description VALUE (44,"幻梦呵护枕,花草枕头",44);

