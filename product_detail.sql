USE project;


CREATE TABLE product_detail
(
	id INT(11) NOT NULL AUTO_INCREMENT,
	cateid INT NOT NULL,
	name VARCHAR(40) NOT NULL,
	price FLOAT NOT NULL,
	weight FLOAT NOT NULL,
	image VARCHAR(40),
	color VARCHAR(20),
	brand VARCHAR(20),
	other VARCHAR(40),
	FOREIGN KEY (cateid) REFERENCES product_detail(id) ON DELETE CASCADE,
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



insert into product_detail values("",21, '女白衬衫长袖秋职业',"345","0.3","21.jpg","黑，蓝","七匹狼","");
insert into product_detail values("",22, '女白衬衫长袖秋修身',"534","0.3","22.jpg","黑，蓝","七匹狼","");
insert into product_detail values("",23, '女士秋冬西服',"431","0.2","23.jpg","黑，蓝","七匹狼","");
insert into product_detail values("",24, '女士工作服修身西服',"400","0.4","24.jpg","黑，蓝","七匹狼","");
insert into product_detail values("",25, '修身连衣裙',"350","0.6","25.jpg","黑，白","佟依馨","");
insert into product_detail values("",26, '商务连衣裙',"514","0.2","26.jpg","黑，蓝","美特斯邦威","");
insert into product_detail values("",27, '秋冬连衣裙',"215","0.3","27.jpg","黑，蓝","佟依馨","");
insert into product_detail values("",28, '加厚针织衫',"514","0.4","28.jpg","黑，蓝","美特斯邦威","");
insert into product_detail values("",29, '修身针织衫',"315","0.4","29.jpg","黑，蓝","美特斯邦威","");
insert into product_detail values("",30, '冬季打底裤',"315","0.2","30.jpg","黑，蓝","雪之狼","");
insert into product_detail values("",31, '超薄打底裤',"513","0.1","31.jpg","黑，蓝","卡丹路","");
insert into product_detail values("",32, '轻薄羽绒服',"513","0.1","32.jpg","黑，蓝","雪之狼","");
insert into product_detail values("",33, '加厚羽绒服',"654","0.4","33.jpg","黑，蓝","卡丹路","");
insert into product_detail values("",34, '时尚羽绒服',"134","0.2","34.jpg","黑，蓝","美特斯邦威","");
insert into product_detail values("",35, '休闲运动衣', "526","0.1","35.jpg","黑，蓝","雪之狼","");
insert into product_detail values("",36, '居家睡衣',   "137","0.2","36.jpg","白","雪之狼","");
insert into product_detail values("",37, '衬衫',"134","0.1","37.jpg","白","卡丹路","");
insert into product_detail values("",38, '西装',"741","0.5","38.jpg","黑，蓝","卡丹路","");
insert into product_detail values("",39, '夹克',"537","0.2","39.jpg","黑，蓝","卡丹路","");
insert into product_detail values("",40, '领带',"85","0.1","40.jpg","青，蓝","卡丹路","");





insert into product_detail values("",53, '墙饰复古工业风',"326","0.4","53.jpg","彩色","无","");
insert into product_detail values("",54, '壁饰欧式地中海',"356","0.2","54.jpg","彩色","无","");
insert into product_detail values("",55, '壁饰美式立体',  "422","0.1","55.jpg","彩色","无","");
insert into product_detail values("",56, '手绘荷花油画',"251","0.2","56.jpg","彩色","无","");
insert into product_detail values("",57, '现代风格手绘油画',"631","0.5","57.jpg","彩色","无","");
insert into product_detail values("",58, '美式古典风景油画',"124","0.2","58.jpg","彩色","无","");
insert into product_detail values("",59, '国唯美玫瑰高仿真花卉',"52","0.2","59.jpg","彩色","无","");
insert into product_detail values("",60, '鱼西美屋蔷薇高仿真花卉',"225","0.2","60.jpg","彩色","无","");
insert into product_detail values("",61, '唯美月季高仿真花卉',"212","0.2","61.jpg","彩色","无","");
insert into product_detail values("",62, '玻璃杯',"525","0.1","62.jpg","透明","好厨娘","");
insert into product_detail values("",63, '高脚杯',"315","0.1","63.jpg","透明","好厨娘","");
insert into product_detail values("",64, '旅行杯',"532","0.1","64.jpg","白","好厨娘","");
insert into product_detail values("",65, '传统中式果盘',"63","0.1","65.jpg","白","好厨娘","");
insert into product_detail values("",66, '美式田园果盘',"32","0.1","66.jpg","彩色","博夫曼","");
insert into product_detail values("",67, '欧式镂空果盘',"536","0.1","67.jpg","彩色","博夫曼","");
insert into product_detail values("",68, '多功能汤锅',"315","1.0","68.jpg","黑","博夫曼","");
insert into product_detail values("",69, '不锈钢炒锅',"315","1.2","69.jpg","黑","博夫曼","");
insert into product_detail values("",70, '不锈钢压力锅',"414","1.3","70.jpg","白","博夫曼","");
insert into product_detail values("",71, '金貂绒毛毯',"144","1.4","71.jpg","蓝色","七匹狼","");
insert into product_detail values("",72, '法兰绒毛毯',"513","1.3","72.jpg","黄色","七匹狼","");
insert into product_detail values("",73, '珊瑚绒毛毯',"614","1.2","73.jpg","蓝色","七匹狼","");
insert into product_detail values("",74, '幻梦舒享枕',"414","0.4","74.jpg","白","七匹狼","");
insert into product_detail values("",75, '凝胶记忆枕',"144","0.2","75.jpg","蓝","七匹狼","");
insert into product_detail values("",76, '幻梦呵护枕',"167","0.2","76.jpg","紫色","七匹狼","");
insert into product_detail values("",77, '八角菱形藤席',"157","0.1","77.jpg","黑","七匹狼","");
insert into product_detail values("",78, '回字藤席',"141","0.1","78.jpg","蓝","七匹狼","");
insert into product_detail values("",79, '泰迪熊儿童席',"135","0.1","79.jpg","蓝","七匹狼","");
insert into product_detail values("",80, '夏季凉席',"133","0.2","80.jpg","黄","七匹狼","");




insert into product_detail values("",85, '小天才儿童鞋',"135","0.3","85.jpg","黑，蓝","小天才","");
insert into product_detail values("",86, '小天才儿童帽',"156","0.3","86.jpg","黑，蓝","小天才","");
insert into product_detail values("",88, '帮宝适纸尿裤',"188","0.3","88.jpg","白","帮宝适","");


insert into product_detail values("",104,	'联想笔记本m490',"5000","5.0","104.jpg","黑","联想","");
insert into product_detail values("",105,	'联想笔记本y420',"6000","5.3","105.jpg","黑","联想","");
insert into product_detail values("",106,	'宏碁笔记本123	',"6000","3.3","106.jpg","黑","宏碁","");
insert into product_detail values("",107,	'联想台式机T1',	"4567","4.3","107.jpg","黑","联想","");
insert into product_detail values("",108,	'戴尔台式机T2',	"5678","5.3","108.jpg","黑","戴尔","");
insert into product_detail values("",109,	'联想一体机T3',  "4553","4.3","109.jpg","黑","联想","");
insert into product_detail values("",110,	'华为一体机Y4',  "3141","3.3","110.jpg","黑","华为","");

insert into product_detail values("",114,	'小米4c',	      "1000","0.4","114.jpg","黑,土豪金", "小米","");
insert into product_detail values("",115,	'三星s6',	      "4000","0.5","115.jpg","黑，蓝",    "三星","");
insert into product_detail values("",116,	'iphone 6s plus',"5000","0.6","116.jpg","白，土豪金","苹果","");
insert into product_detail values("",117,	'iphone 6	',    "4000","0.5","117.jpg","白，土豪金","苹果","");
insert into product_detail values("",118,	'wp 1',	        "3000","0.3","118.jpg","黑",       "微软","");
insert into product_detail values("",119,	'wp2',          "3344","0.3","119.jpg","黑",       "微软","");
insert into product_detail values("",120,	'小米电视',	    "4131","3.3","120.jpg","黑，白",    "小米","");
insert into product_detail values("",121,	'长虹电视',      "5131","3.3","121.jpg","黑，白",   "长虹","");
