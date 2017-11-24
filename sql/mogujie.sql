SET NAMES UTF8;
DROP DATABASE IF EXISTS mogujie;
CREATE DATABASE mogujie CHARSET=UTF8;
USE mogujie;
/*用户信息*/
CREATE TABLE mg_user (
     uid INT PRIMARY KEY AUTO_INCREMENT,     #ID
     uname VARCHAR(32) NOT NULL DEFAULT "",     #用户名
     upwd VARCHAR(32)  NOT NULL DEFAULT "",    #用户密码
     email VARCHAR(64) NOT NULL DEFAULT "",    #用户邮箱
     phone VARCHAR(16)  NOT NULL DEFAULT "",   #用户电话
     avatar VARCHAR(128)  NOT NULL DEFAULT "",   #头像
     user_name VARCHAR(32) NOT NULL DEFAULT "",   #用户姓名 
     gender  INT   NOT NULL ,      #性别
     type  INT    NOT NULL DEFAULT 0,   #用户是否删除  0客户存在 1客户已删除
     is_manage  INT  NOT NULL DEFAULT 0   #管理性质   2超级管理员  1普通管理员 0普通用户
);

INSERT INTO mg_user VALUES
     (null,'dingding',123456,'dingding@163.com',1554615360,'img/avatar/default.png','丁大壮',1,0,0),
     (null,'dangdang',123456,'dangdang@163.com',18394456336,'img/avatar/default.png','刘海涛',1,0,0),
     (null,'doudou',123456,'doudou@163.com',18599663369,'img/avatar/default.png','张然',0,0,0),
     (null,'yaya',123456,'yaya@163.com',15796542365,'img/avatar/default.png','欣然',0,0,0);


CREATE TABLE mg_user_shop (
     id INT PRIMARY KEY AUTO_INCREMENT,     #ID
     shop_name VARCHAR(32) NOT NULL DEFAULT "",     #用户名
     shop_id INT  NOT NULL ,    #商品ID
     shop_color VARCHAR(64) NOT NULL DEFAULT "",    #商品颜色 
     shop_img VARCHAR(668) NOT NULL DEFAULT "",    #商品颜色图片
     shop_size VARCHAR(64) NOT NULL DEFAULT "" ,   #商品尺寸
     shop_title  VARCHAR(668) NOT NULL DEFAULT "",  #商品信息
     shop_price   VARCHAR(64) NOT NULL DEFAULT "",   #商品金额
     type       INT    NOT NULL DEFAULT 0   #删除为1，存在为0
);

INSERT INTO mg_user_shop VALUES
     (null,'1347797961',1,'红色','../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_1d8k35l5l3340a58lh2hi031ak6if_640x960.jpg_100x100.jpg','s','好看','111',1);


/*轮播图*/

CREATE TABLE mg_index(
      lid   INT	 PRIMARY KEY AUTO_INCREMENT,     #ID
      classify   VARCHAR(128)   NOT NULL DEFAULT "",  #轮播分类
      src     VARCHAR(128)  NOT NULL DEFAULT "" , #图片路径 
      href     VARCHAR(128)  NOT NULL DEFAULT 'javascript:;' #跳转路径
);
INSERT  INTO  mg_index VALUES
      (null,'首页','image/init/banner/','javascript:;'),
      (null,'首页','image/init/banner/','javascript:;'),
      (null,'首页','image/init/banner/','javascript:;'),
      (null,'首页','image/init/banner/','javascript:;');

#商品详情表
CREATE TABLE mg_laptop(
	sid        INT	 PRIMARY KEY AUTO_INCREMENT,     #ID
	description    VARCHAR(16) NOT NULL DEFAULT "",   #商品总分类  
	classify   VARCHAR(16)   NOT NULL DEFAULT "",  #商品大致分类
	subdivision    VARCHAR(16)   NOT NULL DEFAULT "",  #商品详细分类
	title    VARCHAR(668)   NOT NULL DEFAULT "",   #商品标题介绍
	synopsis    VARCHAR(668)   NOT NULL DEFAULT "",   #商品描述
	price_fall    VARCHAR(32)   NOT NULL DEFAULT "",   #商品快抢价格
	price    VARCHAR(32)	NOT NULL DEFAULT "",   #商品价格
	total    INT	NOT NULL DEFAULT 0,   #商品总数
	sell_count    INT	NOT NULL DEFAULT 0,   #已买数量
	surp_count    INT	NOT NULL DEFAULT 0 ,  #剩余数量	
	img          VARCHAR(668)    NOT NULL DEFAULT ""    #商品显示的图片
);
INSERT INTO   mg_laptop  VALUES
        (null,'女装','上衣','毛衣外套','宿本秋装新款纯色开叉落肩长袖中长款针织衫开衫百搭女式毛衣外套','温暖系女子对针织的爱是不会搁浅的。相对厚实的针织面料温暖舒适，给你厚重的安全感。如秋季明媚的橙红色，很显肤色。非常简单的款式，就在两边的对襟用了不同的纹理。还贴心的设计了口袋，不会让你的手无处安放。下摆的开叉，不会挡住内搭的裙装的飘逸清新，同时更能显出甜美文艺的感觉。','124.00','86.80','800','550','250','image/subdivision/nvzhuang/shangyi/fengyi/1/170819_671i7adkj786j87l0b3j8j9difjbk_640x960.jpg'),
        (null,'女装','上衣','毛衣外套','秋冬新品韩版时尚气质重工麻花多种织针图案粗针针织开衫毛衣外套','秋冬新品韩版时尚气质重工麻花多种织针图案粗针针织开衫毛衣外套','190.43','178.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/fengyi/2/171011_3he50j23iaf7li06f16850g4j93j2_640x960.jpg'),
        (null,'女装','上衣','毛衣外套','秋冬新款韩版针织开衫女装V领针织衫披肩长袖加厚毛衣外套潮上衣','优雅气质又保暖御寒的开衫，宽松的设计，大大的版型，轻松遮肉毫不费力，V领的设计，拉长颈脖线条，落肩袖子，慵懒随性，两侧口袋装饰，日常装些小物也hin方便，撞色设计，个性吸睛，百搭款，无论是通勤风格还是甜美少女风格，都能轻松驾驭！','111.43','78.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/fengyi/3/170913_82g9fi5510464lji552ble76b6613_640x960.jpg'),
        (null,'女装','上衣','毛衣外套','秋季新款韩版时尚气质小清新海马毛宽松百搭中长款开衫针织外套女','秋季新款韩版时尚气质小清新海马毛宽松百搭中长款开衫针织外套女','211.43','178.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/fengyi/4/171005_295e2gcjc46afgb8id91gi3ldae18_640x960.jpg'),
        (null,'女装','上衣','毛衣外套','两穿高领白色加厚毛衣女慵懒小清新宽松韩版中长款针织开衫外套潮','【不起球】【不掉色】【不缩水】【送退货运费险】','150.43','100.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/fengyi/5/171006_7680j570930a1b9ca3k5cjlblj488_640x960.jpg'),
        (null,'女装','上衣','毛衣外套','秋季新款韩版甜美百搭宽松斗篷型蝙蝠袖气质休闲纯色针织开衫女潮','气质不挑人的针织开衫，舒适好穿的质地，触感软糯，柔软亲肤，随性的落肩袖子，削弱肩部厚重感，展露纤细肩部线条~蝙蝠衫版型，随性浪漫，气质大方，简约立领，利落大方，腰间抽褶设计，修饰腰部线条，彰显纤细蛮腰~前短后长的版型，显高显瘦，常规款的长度设计，不挑人的一件，配合简洁气质的纯色，好穿易搭','220.43','180.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/fengyi/6/170911_2d6499leaj4if7fiff1jbg4cc85fi_640x960.jpg'),
        (null,'女装','上衣','毛衣外套','韩版针织衫开衫女秋季新款纯色毛衣短款薄外套上衣长袖女装小披肩','浅蓝色 颜色便浅哦?七天无理由退货，赠送运费险！?韩版秋季新品针织衫女开衫，手感上身效果都是非常棒的，很洋气。质量非常好。非常值哦。不起球，不褪色，不变形！喜欢的亲们感觉入手吧','123.43','78.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_648ghji27a2ebbg813b6d986ccl3f_640x960.jpg'),
        (null,'女装','上衣','毛衣外套','2017春装新款中长款针织衫毛衣开衫女韩版百搭显瘦长袖外套女','强烈推荐宝宝们这款，春秋都好穿的毛衣外套。OVERSIZE宽松型的，随性慵懒的feel，上身很有型哦','100.43','90.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_7b06gilji86jh1l7fb9h14fh57faj_640x960.jpg'),
        (null,'女装','上衣','一字领','秋冬季新款韩版一字领露肩蝴蝶结喇叭袖雪纺衫女长袖打底上衣潮','一字肩的设计，小露香肩与锁骨性感的小女人味气息扑面而来彰显你的独特美，领口处小翻领吸睛亮眼，长袖设计，轻易遮住拜拜肉显瘦的悄无声息，宽松的版型不挑身材，一片式裁剪，干净利落，彰显好质感热情洋溢的红色/经典百搭的黑色吸睛度max，你喜欢哪个呢？','160.43','150.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/1/170903_67fei66hhl50e9a019e9fh3jeccc9_640x960.jpg'),
        (null,'女装','上衣','一字领','蝴蝶结一字领喇叭袖雪纺衫露肩遮肚子打底小衫上衣女2017秋季','一字肩露锁骨 蝴蝶结喇叭袖 优雅迷人','163','142.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/2/170812_6a19050472gk3hfa8cjb326eie75a_640x960.jpg'),
        (null,'女装','上衣','一字领','明星同款2017韩版夏新款露肩上衣一字领吊带长袖粉色条纹衬衫','本小店为各位菇凉们购买了运费险哦，购物无忧退货零风险~！','311.43','290.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/3/170801_69dhadiegcfhk88k14ihi43l5k7jj_640x960.jpg'),
        (null,'女装','上衣','一字领','韩版一字领吊带露肩中长款宽松纯色衬衫','带有慵懒小女人气息的一款美衣~舒适的棉质衬衣~很清新纯纯的带点小性感哦~','422.43','380.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/4/111245878_ifrtqnrzgi2dczlghazdambqhayde_640x960.jpg'),
        (null,'女装','上衣','一字领','早秋新款蝙蝠衫宽松韩版毛衣针织衫女短款线衣套头长袖打底上衣','秋新款蝙蝠衫宽松韩版毛衣针织衫女短款线衣套头长袖打底上衣外套','153.47','140.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/5/170812_53ee1hlj7gj7b0de06ce8293ff861_640x960.jpg'),
        (null,'女装','上衣','一字领','2017春季新款韩版露肩花边一字领套头泡泡袖衬衫上衣','2017春季新款韩版露肩花边一字领套头泡泡袖衬衫上衣','120.43','11.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/6/170324_4ca48icc1d313lelchd52cecdd7i6_640x960.jpg'),
        (null,'女装','上衣','一字领','韩系一字肩气质条纹衬衫女夏中长款不规则宽松灯笼袖露肩衬衣上衣','韩系一字肩气质条纹衬衫女夏中长款不规则宽松灯笼袖露肩衬衣上衣','183.43','150.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/7/170715_19209c5c98ab7e4j3ead3ef0aekke_640x960.jpg'),
        (null,'女装','上衣','一字领','新款春秋装韩范纯棉条纹漏肩一字领长袖T恤女宽松打底衫上衣潮','2017新款春秋装韩范条纹露肩一字领长袖T恤女宽松打底衫上衣潮','135.43','120.00','5000','1500','3500','image/subdivision/nvzhuang/shangyi/yiziling/8/170802_44ah9ld522fek8ci51k4gjjlhk8eh_641x10151.png'),
        (null,'女装','下衣','连衣裙','梅子熟了2017春季新款 文艺复古蕾丝半身裙中长款清新裙子女','蕾丝的清透，总是仙气的代言。 半裙更好搭配，不管是T恤还是毛衣，或者衬衣，有了蕾丝半裙的装饰，中和厚重打破沉闷，开始灵动。 很细腻的蕾丝面料，有弹力哦，舒适感更胜一筹。加宽的松紧织带要求，淡淡是竖文肌理，精致耐看。 品质内衬，亲肤更舒适。','170.43','120.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_7ca5ga14j8dd8kfkjd02d7k99if4h_800x1200.jpg'),
        (null,'女装','下衣','连衣裙','秋冬季新款气质女装百搭蕾丝连衣裙韩版小清新修身显瘦打底a字裙','纯白类似连衣裙长裙，优雅大方，气质百搭款~ 【S码】建议身高157-168cm，95斤以下穿；【M码】建议身高158-169cm，110斤以下穿；【L码】建议身高158-170cm，118斤以下穿。仅供参考','196.43','190.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_0dbi4jfdch388g117l16edc5bb87d_640x960.jpg'),
        (null,'女装','下衣','连衣裙','2017早秋新品显瘦中长款口袋韩版气质宽松七分袖衬衫连衣裙女','衬衫连衣裙女中长款2017秋季新款韩版气质宽松五分袖裙子潮','176.43','170.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_4l2j78ff7bfldl6l815f4bijeb405_640x960.jpg'),
        (null,'女装','下衣','连衣裙','复古立领木耳边蝴蝶结透视长袖连衣裙高腰显瘦蕾丝花边刺绣度假裙','复古立领木耳边蝴蝶结透视长袖连衣裙高腰显瘦蕾丝花边刺绣度假裙','260.43','250.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_2ikc0ikb1bh8ciielkcg4i26j27k6_640x960.jpg'),
        (null,'女装','下衣','连衣裙','秋装性感名媛气质V领喇叭袖绑带收腰高腰显瘦蕾丝长款连衣裙长裙','新款时尚性感名媛气质V领喇叭袖绑带收腰显瘦蕾丝连衣裙','230.43','200.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/5/170811_81jccjjl53310b0i7kg9e9fck9l5i_640x960.jpg'),
        (null,'女装','下衣','连衣裙','韩国森女加绒长裙文艺学生碎花裙百褶裙子秋冬长袖雪纺连衣裙女','┏一一一服务、保障一一一┓ ┏一一一低价、促销一一一┓┏一一一收货、满意一一一┓ ┊★郑重承诺支持七天退换┊ ┊品质好★柔软★不掉色★┊┊★ 喜欢五星满意晒图★★┊ ┗一一一一一一一一一一一┛ ┗一一一一一一一一一一一┛┗一一一一一一一一一一一┛','180','170.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_46ji9k88g44fej0bjle47a32l7kae_640x959.jpg'),
        (null,'女装','下衣','连衣裙','秋冬新款韩版小清新宽松系带收腰显瘦圆领中长款羽毛印花连衣裙女','大热的腰封连衣裙，轻易穿出时髦范，简洁的圆领，基础不挑人，长袖设计，配合落肩袖，慵懒随性范彰显，削弱肩部厚重感，显瘦恰到好处，腰间腰带的注入，丰富整体造型，醒目有层次，细节感加分，同时也能将比例拉长，显高显腿长，A字的版型，藏肉利器，内搭单穿都是吸睛款~','144.43','120.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_6251bc71175331e740jdiel47f12j_640x960.jpg'),
        (null,'女装','下衣','连衣裙','秋季新款复古风系带收腰灯芯绒连衣裙显瘦女中长款长袖衬衫裙子潮','秋季新款复古风系带收腰灯芯绒连衣裙显瘦女中长款长袖衬衫裙子潮','177.00','150.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_4hje8g264kdleg00d3ld3hak2ie1b_640x960.jpg'),
        (null,'女装','下衣','美女裤','牛仔裤女九分裤2017夏季高腰薄款紧身显瘦学生磨破小脚铅笔裤','高腰弹力紧身小脚裤','153.43','142.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/1/170723_33fdi0928d5dalii0fjdic52e99gf_640x960.jpg'),
        (null,'女装','下衣','美女裤','秋季新款韩版宽松牛仔裤女九分裤阔腿裤高腰大码显瘦毛边直筒裤子','赠运费险 柔软牛仔布料 宽松显瘦','320.43','300.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/2/170330_2e0244ke1j9e7e1kddeac933c2d01_640x960.jpg'),
        (null,'女装','下衣','美女裤','韩版复古时尚高腰显瘦长腰带毛边阔腿牛仔裤女','小魔豆家韩版复古时尚高腰显瘦长腰带毛边阔腿牛仔裤女','222.43','183.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/3/170802_59f80jedle64ja167h2ijf3163g79_640x960.jpg'),
        (null,'女装','下衣','美女裤','韩版高腰复古不抽丝毛边微喇叭打底裤女九分裤高弹阔腿显瘦喇叭裤','本店任何商品都送有运费险。欢迎选购！菇凉可以通过身高体重咨询客服，客服会给您推荐合适的码号。','163.00','140.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/4/170924_4i3c4h6j95k5i03dj29i3cb42cgi6_640x960.jpg'),
        (null,'女装','下衣','美女裤','高品质新裤脚前开叉9分裤九分显瘦喇叭裤牛仔裤女宽松高腰裤2色','高品质新裤脚前开叉9分裤九分显瘦喇叭裤牛仔裤女宽松高腰裤2色','163.00','140.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/5/170809_616b301h6h7i088lecjhdf98g9jie_640x960.jpg'),
        (null,'女装','下衣','美女裤','牛仔裤女新款韩版春秋修身弹力黑色磨边高腰裤小脚裤铅笔裤九分裤','本店所有商品都是精选面料，大厂生产，价格实惠质量保证 发货前均由出仓检查，打包检查，装包检查三大工序严格把控问题件发出，为亲们带来优质的购物体验 店铺承诺所有商品支持七天无理由退货，亲们赶快下单吧！','178','161.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/6/170809_393gl7jjad9045hficfigd8dblf6b_640x960.jpg'),
        (null,'女装','下衣','美女裤','韩版新款秋冬季通勤OL高腰裤紧身裤子九分小脚裤显瘦牛仔裤女','双排扣设计潮流时尚简约大方，下摆毛边设计是2017年非常火的 铅笔小脚裤款式，上身显瘦修身，毛边脚口，个性十足 修身小脚裤款式，潮款时尚百搭！','144.43','120.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/7/170930_75a4gji95cbh7j41i468kied1hkj4_640x960.jpg'),
        (null,'女装','下衣','美女裤','春装新款宽松牛仔裤女复古流苏毛边显瘦九分裤阔腿裤直筒裤高腰裤','小店有运费险，支持免费试穿！','299.43','188.00','5000','1500','3500','image/subdivision/nvzhuang/xiayi/kuzi/8/170626_6f26eia7e5k94e07e3658e2kfb248_640x960.jpg'),
        (null,'男装','上衣','棉衣棉服','2017冬装新款三条杠加厚保暖棉衣外套男士中长款韩版修身棉服','低价跑量新款重磅加厚保暖中长棉衣外套','77','50.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/1/170921_3cbe3ah17hdech39hg21ga3gfj2hi_640x960.jpg'),
        (null,'男装','上衣','棉衣棉服','冬装新款男士韩版时尚袖子织带装饰潮流休闲修身立领棉衣','同款低劣产品越来越多 可我们只坚持原版 　 　 　 　 　 　 　　 　 　 　 　 　　 　 　 　 　 　　 　 　 　 　 　　　　 首单货不多 先到先得~','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/2/171024_585e98335f22he6e1i608a3i25lca_640x960.jpg'),
        (null,'男装','上衣','棉衣棉服','2017冬季新品羊羔毛棉外套男士韩版加绒牛仔外套棉衣加厚棉袄','默认圆通快递 下单送运费险 七天无理由退换货 购物全面保障！','186.43','178.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/3/171023_06c2afahi1678dc25l07iiiic80hb_640x960.jpg'),
        (null,'男装','上衣','棉衣棉服','冬季保暖麂皮绒外套男韩版机车服休闲夹克羊羔毛时尚棉服棉衣潮男','7天无理由退款 赠送运费险','159.43','128.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/4/171019_3a9g6i447fcag46je1fhec88067cl_640x960.jpg'),
        (null,'男装','上衣','棉衣棉服','冬季棉衣男韩版潮流学生宽松帅气棉袄短款情侣棉服面包服冬装外套','冬季棉衣男韩版潮流学生宽松帅气棉袄短款情侣棉服面包服冬装外套','178.43','156.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/5/171018_48a3ged3c89424f7j97fkf5dec131_640x960.jpg'),
        (null,'男装','上衣','棉衣棉服','冬季新款男士棉衣青年韩版修身连帽中长款棉服加绒加厚外套棉袄潮','反季清仓冬男士棉衣青年韩版修身连帽中长款棉服加绒加厚外套棉袄','227.43','199.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/6/171017_061ff1d41bj404ja77kec29ceei4i_640x959.jpg'),
        (null,'男装','上衣','棉衣棉服','连帽棉衣男中长款情侣大毛领过膝棉服冬季韩版潮流宽松外套男士','下单送运费险，收藏店铺，每晚上新~~~','244.43','230.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/7/171017_5d40e3c29ci0ca1ba02dbchb5b144_640x960.jpg'),
        (null,'男装','上衣','棉衣棉服','情侣加厚冬季宽松学生保暖棉袄冬天新款棉衣短款男士休闲棉服外套','本店支持七天无理由退货，每个订单自动购买退货运费险，亲放心购买','310.43','322.00','5000','1500','3500','image/subdivision/nanzhuang/mianao/8/171017_30k937hh80ka3gg23l8h9db8gf73b_640x960.jpg'),
        (null,'男装','上衣','T恤','长袖t恤男士卫衣圆领小衫韩版外穿打底衫潮流秋装上衣服薄款秋衣','菇凉、凉友们，此款商品尺码修身偏小，喜欢宽松的建议选大一号。此款休闲、逛街、上班时穿都可以。另外不喜欢也不要担心，支持7天无理由退换。','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/1/170905_059k40j0jcc1hc6ihjjj90le4c915_640x960.jpg'),
        (null,'男装','上衣','T恤','长袖t恤男韩版秋衣潮流上衣服学生宽松打底衫外穿帅气男士卫衣','长袖t恤男韩版秋衣潮流上衣服学生bf宽松打底衫外穿帅气男士卫衣','143.43','100.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/2/170920_7de538069d36e2j046bf75762679i_640x960.jpg'),
        (null,'男装','上衣','T恤','男t恤纯棉秋季青年圆领字母体恤男装衣服修身长袖T恤男打底衫','【F B 自由男孩】网络中有那么多的商家，商家中有那么多的宝贝，而你却偏偏点开了我的^_^我知道你会来！卖我们自己喜欢的款，遇见一样眼光的你！缘分就是，不早不晚，恰恰刚好','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/3/170808_7hb2id1adkihi1ib5h03k046lde6k_640x960.jpg'),
        (null,'男装','上衣','T恤','秋季新款男士长袖t恤纯棉韩版修身立领打底衫青年丅恤纯色体恤','收藏店铺和宝贝，享受会员价!','202.00','178.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/4/170616_6ek1i1kj6dj5jlal590b9k2j0k9jk_640x960.jpg'),
        (null,'男装','上衣','T恤','2017秋装男士外套t恤长袖圆领体恤小衫男秋衣青年韩版打底衫','面料手感舒适，品质好！韩版立体裁剪，亲购买的每件商品，我们都会送运费险 让您无忧购物哦。 大厂直销，价格优惠，但我们对质量从不含糊！','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/5/170712_150ebk1a56f71j9b4j6f7lal34geb_800x1200.jpg'),
        (null,'男装','上衣','T恤','秋冬男士加绒加厚假两件T恤男韩版修身青年POLO针织衫衬衫领','支持七天无理由退货退款，售后无忧','231.43','178.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/6/171010_118ja2ba1lb14467g56l5df84gja8_640x960.jpg'),
        (null,'男装','上衣','T恤','包邮文艺港风简约圆领短袖T恤男复古文字棉情侣装学生打底衫潮T','男女同款，一件价格，秀恩爱~~~','190.43','160.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/7/170604_4799ej9i16e1c3d7h2dba80h7e0i2_640x960.jpg'),
        (null,'男装','上衣','T恤','秋冬新品男士V领加绒T恤韩版修身印花时尚学生保暖打底衫秋衣','支持七天无理由退货退款，售后无忧','168.43','143.00','5000','1500','3500','image/subdivision/nanzhuang/Tx/8/171015_2jjgjg8jic8j59h32d9k7eejg4a7h_640x960.jpg'),
        (null,'男装','下衣','牛仔裤','秋季新款男士修身小脚裤韩版潮流百搭休闲牛仔裤','非常感谢您能够在众多平台众多商家中选择我们，我知道，这是您与我们之间的缘分~希望我们的宝贝能让您满意，带给您的一份美好心情！亲！如果您收到宝贝，不管什么原因导致您不满意，不喜欢，首先在这里对您表示歉意，也请您多给我们一份信任，并及时跟我们联系，相信我们的售后会竭尽全力为您妥善处理的哦！祝您生活愉快！------一个真诚的卖家','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/1/171001_5a73i9bj02260a9a0af8hgghif8cl_640x960.jpg'),
        (null,'男装','下衣','牛仔裤','新款小脚弹力加绒牛仔裤男纯色修身青少年男士牛仔裤男裤秋冬款潮','下单送运费险，7天无理由退换，新款质量保证。购物无风险 牛仔裤的 牛仔布料的牛仔裤','100.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/2/170820_53gdfa36he82eiik7798224hlbkf6_640x960.jpg'),
        (null,'男装','下衣','牛仔裤','秋上新薄款男士破洞牛仔裤男九分裤修身小脚韩版潮流新款学生裤子','限时特惠】：全场任选满2件减10元，赶紧去抢购吧！【品质】：企业大厂，厂家直销，品质保证，请放心！【码数】：标准尺码，按平时码数购买即可，请放心！【运费险】：订单均赠送运费险，退货无忧，请放心！【发货】：48小时内发货，速度快，请放心！！【售后】：支持7天无理由退换货，请放心！','90.00.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/3/170504_73bkga26a3c59hgia6h64g9ladh81_640x960.jpg'),
        (null,'男装','下衣','牛仔裤','秋冬加绒加厚韩版修身小脚牛仔裤男装青少年黑色长裤子潮','【品质】：企业大厂，厂家直销，品质保证，请放心！ 【码数】：标准尺码，按平时码数购买即可，请放心！ 【运费险】：订单均赠送运费险，退货无忧，请放心！ 【发货】：默认圆通，速度快，请放心！ 【售后】：支持7天无理由退换货 ，请放心！','164.43','143.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/4/171006_34g91i48364k4kbjjj2k8i47lkb54_640x960.jpg'),
        (null,'男装','下衣','牛仔裤','男士韩版修身牛仔裤男生简约百搭弹力小脚裤秋冬新款潮流喷漆男裤','精选高档优质面料，穿着舒适！原创潮款，车工精湛！帅气修身版型，上身效果很好！不用担心不好搭配衣服！质量保证，下单送运费险，亲们放心购买。','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/5/170906_333822j1g5c76b6h23g5d96k47ec3_800x1200.jpg'),
        (null,'男装','下衣','牛仔裤','新款男士薄款韩版潮流修身小脚裤休闲九分裤牛仔裤哈伦裤','全场七折 下单送运费险 购物全面保障！','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/6/170805_65kfbadkflihil99e18a6g4dh8i4j_640x960.jpg'),
        (null,'男装','下衣','牛仔裤','2017秋季新款破洞九分牛仔裤男 潮流修身小脚男装牛仔裤','非常感谢您能够在众多商家中选择我们，这是您与我们这之间的缘分~希望我们的宝贝能让您满意，带给您的一份美好心情！有问题可以联系我们客服，祝您生活愉快！______一个真诚的卖家! 赠送运费险，售后有保障。亲： 偏小一码建议选大一码哦！','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/7/170624_59943jk9k4gbgd8bbg00el36l8dd6_640x960.jpg'),
        (null,'男装','下衣','牛仔裤','牛仔裤男修身小脚长裤学生青年弹力秋季男裤秋冬加绒加厚韩版黑色','------------------- 新品，时尚潮流 新潮设计┊┊┊┊简约大方，时尚版型┊┊┊┊','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/niuku/8/101381997_6c4fk2cfh3l72a3e817gh7aif49a1_800x1200.jpg'),
	(null,'男装','下衣','休闲裤','秋冬新款灯芯绒小脚休闲裤韩版宽松束腿裤加绒加厚哈伦裤','全场七折 下单送运费险 购物全面保障！','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/1/170917_4i8j5h2f63g0klj95f3la6aka1b4i_640x960.jpg'),
	(null,'男装','下衣','休闲裤','加绒加厚秋冬季运动裤男士舒适休闲裤韩版潮流卫裤男长裤男裤子','我希望有个如你一般的人，如山间清爽的风，如古城温暖的光。从清晨到夜晚，由山野到书房。只要是你，就好！庆幸遇见你，相信每个人的内心都有这么一段独白，奉上这款加绒休闲裤送给你内心里的那个人吧！','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/2/171015_6eldefhakg6l05gigff1058ld9814_640x809.jpg'),
	(null,'男装','下衣','休闲裤','秋季新品男士休闲裤百搭修身长裤运动风束脚裤小脚裤','店主推荐 7天无理由退换货 赠送运费险 退货无忧 男神都在穿 出任CEO 赢取白富美 你还在等什么 赶紧入手吧','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/3/170413_6362hilh7i1b677el90k5bh77iicj_640x960.jpg'),
	(null,'男装','下衣','休闲裤','秋季款韩版修身休闲裤男士条纹直筒运动裤学生哈伦长裤潮男装卫裤','季款韩版修身休闲裤男士条纹直筒运动裤学生哈伦长裤潮男装卫裤','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/4/170819_86a6jlee3c7106440f4k2kdg46lb2_640x960.jpg'),
	(null,'男装','下衣','休闲裤','新品秋款休闲裤男修身小脚西装裤男士长裤九分裤卫裤哈伦裤潮裤男','新品秋款休闲裤男修身小脚西装裤男士长裤九分裤卫裤哈伦裤潮裤男','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/5/170816_6aa71hcj9hg83i213g74dj17lk855_640x961.jpg'),
	(null,'男装','下衣','休闲裤','运动休闲裤男韩版裤子男百搭系带束脚九分裤男潮','【限时特惠】全场任选满2件减10元，赶紧去抢购吧！ 【品质】：企业大厂，厂家直销，品质保证，请放心！ 【码数】：标准尺码，按平时码数购买即可，请放心！ 【运费险】：订单均赠送运费险，退货无忧，请放心！ 【发货】：默认中通，圆通发货，速度快，请放心！！ 【售后】：支持7天无理由退换货 ，请放心！','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/6/170609_5g9c4ll594akck5ajbkg414i7g5jh_640x960.jpg'),
	(null,'男装','下衣','休闲裤','迷彩裤男士休闲裤运动裤男新春小脚哈伦裤修身卫裤收口长裤子潮男','【1】做工精细，百搭显瘦，精细面料，穿着舒适，200%美丽！★★★★★【2】优质面料，超好版型，人气超好，七天退换，放心购买！★★★★★','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/7/101695604_6b3369g012h797bklgdlce990bgb4_640x960.jpg'),
	(null,'男装','下衣','休闲裤','原创秋季日系复古简约纯色宽松休闲裤青年男士百搭青年哈伦裤','【限时特惠】：全场任选满2件减6元，赶紧去抢购吧！【品质】：企业大厂，厂家直销，品质保证，请放心！【码数】：标准尺码，按平时码数购买即可，请放心！【运费险】：订单均赠送运费险，退货无忧，请放心！【发货】：默认中通，韵达发货，速度快，请放心！！【售后】：支持7天无理由退换货，请放心！','111.43','78.00','5000','1500','3500','image/subdivision/nanzhuang/xiuxian/8/170807_56455l3dk54ghah96i56f892490j3_640x960.jpg'),
	(null,'女鞋','鞋','小白鞋','秋冬新款街拍增高小白鞋女厚底浅口板鞋跑步百搭休闲鞋','休闲百搭','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/1/171016_0d2705d184712hci9c37bfd2fc59k_640x960.jpg'),
	(null,'女鞋','鞋','小白鞋','鞋子女秋季新款女鞋小白鞋百搭韩版运动鞋学生厚底系带板鞋休闲鞋','有人说，关于一个女人的回忆录，人们通常只在乎三件事情：她美的样子、曾经爱过的男人以及拥有的鞋子数量。美的容颜也许已经逝去，爱过的男人也许已经离开，只有鞋子陪伴女人走过人生的每一步。 【佳子小姐陪伴您每一步】','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/2/170817_61497ikf4lh7g603g3732kccgah56_640x958.jpg'),
	(null,'女鞋','鞋','小白鞋','保暖加绒时尚高帮休闲鞋女2017秋冬新款韩版学生平底小白鞋','跟高：3厘米','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/3/171007_2b2ch3h5ij66g44k62c9kklhcgdi9_640x960.jpg'),
	(null,'女鞋','鞋','小白鞋','小白鞋女魔术贴秋季新款平底鞋子韩版白色运动休闲鞋百搭学生板鞋','七天无理由退货！不喜欢不合适都可以退哦！','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/4/170929_1dcebga2ac3lc06ib5ddhc9e48e58_640x960.jpg'),
	(null,'女鞋','鞋','小白鞋','秋季新品刺绣玫瑰花小白鞋 文艺风百搭休闲厚底系带低帮运动鞋女','秋季新品刺绣玫瑰花小白鞋 文艺风百搭休闲厚底系带低帮运动鞋女','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/5/170801_3i13af6a7dah8flk5fb699ck0l8hj_640x960.jpg'),
	(null,'女鞋','鞋','小白鞋','春夏防水七彩发光鞋男女usb充电led鞋情侣夜光鞋小白鞋板鞋','春夏防水七彩发光鞋男女usb充电led鞋情侣夜光鞋闪光灯小白鞋板鞋','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/6/170420_65e670ec5395i8434keaj43bde7j3_640x960.jpg'),
	(null,'女鞋','鞋','小白鞋','杨紫同款女鞋七彩发光鞋带系带小白鞋充电女夏平底新款灯鞋板鞋潮','时尚潮流，所有的鞋子都是配的电子发光鞋带，男女同款情侣发光鞋，买一双鞋子有普通鞋带，夜光鞋带，电子鞋带各一双，还格外赠送发光鞋带使用的电子一副','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/7/170504_64gha0je3c6b90l2693756dgkcial_640x960.jpg'),
	(null,'女鞋','鞋','小白鞋','秋季新品粉色学生休闲运动鞋女韩版原宿百搭跑步鞋平底小白鞋','休闲运动鞋女韩版原宿百搭跑步鞋平底小白鞋','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xiaobai/8/170828_16g2ak99kc6bll36lhj7g6gk72hgi_640x960.jpg'),
	(null,'女鞋','鞋','靴子','AILAWANG贝壳头过膝靴女高筒靴瘦腿弹力靴过膝厚底骑士靴','集性感优雅时尚于一体，显瘦又能塑造出女王气场。鞋类参数 品牌：AILAWANG 面料：进口弹力超纤维 内里:秘制短绒 鞋底：橡胶底（耐磨防滑柔润性很强） 筒高：54厘米 小腿围：28—35厘米 底厚：4.5厘米 以上尺寸35—39的尺寸 在这个尺寸下都可以穿 请放心购买','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/1/170805_3h76g5j84d84gb5jc5l5d7b17gka6_640x960.jpg'),
	(null,'女鞋','鞋','靴子','小辣椒同款秋冬季新款真皮过膝长靴瘦腿弹力靴女平跟高筒靴长筒靴','高品质长靴，那种50.60.70的同款根本无法与其相提并论的，真材实料，做工精细，质量保证，支持15天无理由退换，售后服务严格按照国家三包法规执行＞ 面料采用优质鹿皮绒+进口弹力材质，手感丝滑，弹性强，回弹性好，穿着更贴腿，时间更久。 筒围：上筒围40cm 中筒围30cm 下筒围20cm +4~6cm可拉伸长度 筒高：59cm 跟高：3cm','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/2/170802_779kgedcf4ejclb7ggd2hge808jkh_640x960.jpg'),
	(null,'女鞋','鞋','靴子','新款英伦及踝靴马丁靴切尔西靴粗跟防水台厚底高跟单靴短靴女','♥部份款99任选2双； ♥♥下单就送精品小礼物一份； ♥♥♥全国包邮且送运费险，购物无忧！！ ♥♥♥♥默认发韵达/EMS（不接受其他快递指定） ♥♥♥♥♥【收藏 关注店铺 再下单享受粉丝价和收藏宝贝加购物车的优先发货哦】 每一双漂亮的鞋子，都是我们的一份承诺 在追求品质和舒适度的路上 我们一直在奔跑！！！ 每一双鞋都是我们亲自精心实拍的哦~ 您给的5分，是我们前进的动力！！！','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/3/170913_26354k9e9hhle6hh6jll1lee0gbgh_640x960.jpg'),
	(null,'女鞋','鞋','靴子','欧美风磨砂方跟圆头系带长靴女百搭高跟瘦腿弹力过膝靴','风格：欧美 筒高：长筒 后跟高：中跟 鞋头款式：圆头 跟底款式：方跟 鞋底材质：橡胶 靴筒面材质：磨砂 靴筒内里材质：人造短毛绒 尺码：35-39 颜色：黑色，灰色 跟高：7厘米，筒高：54厘米，筒围：36厘米','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/4/48016605_2ll9h19k47f1bbgkb4dae9g16aeik_1000x1500.jpg'),
	(null,'女鞋','鞋','靴子','【无邪气】韩版秋季新款马丁靴英伦风复古圆头粗跟女短靴','【无邪气】蘑菇街官方认证实拍店铺，收藏店铺立刻享受6.9折粉丝价！超行业售后标准：15天无理由免运费退换货！免运费！鞋面：猪八戈 橡胶底 后跟高3cm 棕色 军绿 黑色','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/5/170929_81di343jfkd12g3df2fa094jgkhh8_640x960.jpg'),
	(null,'女鞋','鞋','靴子','韩版复古简约尖头中跟短靴英伦百搭粗跟裸靴及踝靴女靴子切尔西靴','跟高3厘米','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/6/170914_6l9h7e0h2g7hce546f24cdfd5gfda_640x960.jpg'),
	(null,'女鞋','鞋','靴子','显瘦系带尖头长筒靴过膝靴弹力靴冬季新款女鞋子靴子粗跟高跟长靴','鞋面材质: 绒面 内里材质：莱卡纤维 鞋跟高度：6厘米 鞋底材质：防滑橡胶底 制作工艺：粘胶鞋 闭合方式：领口处的后系带 皮质特征：磨砂绒面 鞋跟形状：粗方跟','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/7/170807_6kkj6039fb8271ahi01ac7lki8d7l_640x960.jpg'),
	(null,'女鞋','鞋','靴子','明星同款磨砂平底长靴百搭中筒靴弹力瘦腿骑士靴性感女靴子秋冬','明星同款平底百搭靴子。外单品质，质量保证！支持7天无理由退换货，已经为仙女们购买运费险，让您购物无忧。','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/xuezi/8/171019_4dl3i5607ck6igk2gd5e6j7f410ga_1000x1500.jpg'),
	
(null,'女鞋','鞋','单鞋','日韩毛毛鞋女2017秋冬新款平鞋底兔毛豆豆鞋显瘦懒人鞋潮鞋','跟高1.5厘米，本款尺码标准，建议按平时的码数拍，如果脚背高或者脚宽脚胖的菇凉建议比平时买大一个码】','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/1/171028_13g7id178lhjbbcd90cl8dcfhb9l9_640x960.jpg'),
(null,'女鞋','鞋','单鞋','韩版花边新款舒适百搭平底狐狸毛毛鞋女鞋学生单鞋','每个订单赠送运费保险，不喜欢不合适，七天无理由退货','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/2/171012_58j65ie90000l3h3kjc9i7aj04c67_1000x1500.jpg'),
(null,'女鞋','鞋','单鞋','秋冬新款欧美时尚尖头兔毛高跟鞋绒面细跟浅口性感女鞋潮','偏大半码。建议拍小一码 跟高7厘米','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/3/171005_2gb02abjkda6i516h4i5029d87a74_640x960.jpg'),
(null,'女鞋','鞋','单鞋','欧美范复古气质尖头新款夜店细跟一字扣鸵鸟毛百搭尖头单鞋女','【34-39】标准尺码，时尚百搭，质量保证，跟高5厘米','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/4/170923_00if2iahjib11f9ia1j36l62bckbg_640x960.jpg'),
(null,'女鞋','鞋','单鞋','欧美秋冬季新款平底尖头毛毛鞋低跟绒面一字扣单鞋学生棉鞋女鞋','秋冬季舒适，百搭，高端大气的新品，超好的脚感，显白 显瘦。无论是休闲 逛街 工作 还是聚会！无论工作周末都是您可以搭配简单大方的设计，搭配裙子牛仔裤短裤都显得如此的优雅秀丽！','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/5/170920_3f88cig3fdc3jc1808ek348kag77k_640x960.jpg'),
(null,'女鞋','鞋','单鞋','韩版蝴蝶结浅口尖头中跟单鞋一脚蹬英伦百搭粗跟女鞋豆豆鞋懒人鞋','《棉花糖》只此一家，无分店。我们只做质量好，性价比高的鞋子！具体跟高 菇娘们请看尺码说明哦','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/6/170701_5046e0k1lfli7hkkf1jdjeifdgdfg_640x960.jpg'),
(null,'女鞋','鞋','单鞋','冬季新款流苏毛毛鞋女鞋兔毛一脚蹬懒人鞋方头加绒厚底保暖女鞋','做！就做客户喜欢的鞋子，全部精挑细选么么哒！支持7天无理由退换货！请放心购买！','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/7/171022_773064aa6f886ci8k8lac5ae630c8_640x960.jpg'),
(null,'女鞋','鞋','单鞋','金丝绒尖头水钻毛毛鞋英伦显瘦铆钉单鞋秋冬保暖复古内增高平底鞋','金丝绒兔毛内增高2cm','111.43','78.00','5000','1500','3500','image/subdivision/nvxie/danxie/8/171013_152375c15bk97c82112j5k0aci10c_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','宾兽运动鞋男秋季新款男鞋子系带韩版跑步鞋男百搭休闲鞋男潮鞋','新品上市，全国包邮，支持7天无理由退换并赠送运费险，收藏店铺与宝贝享受粉丝专享价6.8折哦！','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/1/171003_370a3i12c0ligjh5icehblk2id8l8_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','秋季男鞋新款高帮板鞋男休闲鞋百搭潮鞋韩版男鞋子运动鞋厚底靴子','2017秋季新品上市，实物拍摄，质量保证，支持7天无理由退换。标准运动鞋码，请按平时穿的尺码购买就可以。','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/2/171020_125l6aaaibk77b14dgh9g7026h57g_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','韩版运动鞋男跑步鞋新款透气百搭板鞋男潮鞋男鞋休闲鞋男鞋子秋季','同款低劣产品越来越多 唯独我们只坚持原版 　 　 　 　 　 　 　　 　 　 　 　 　　 　 　 　 　 　　 　 　 　 　 　　　　 首单货不多 先到先得~ 本店承诺：七天无理由换货。下单送运费险，购物0风险，退货有运费补！ 收藏店铺有粉丝价格,还有精美礼 本店全部实拍， 如有疑问联系客服 【此款鞋子是皮鞋尺码，标准的，比运动鞋尺码偏大的，例如：您平时运动鞋41的选择这款就是40的足够哦，亲，脚宽或者脚厚的按照41的皮鞋尺码下单！有什么疑问可以继续招呼我哦】。','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/3/170525_33i51c1742kd60966k55ga1b0ek56_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','秋冬新款英伦高帮鞋男厚底鞋子男生韩版潮流运动鞋男鞋休闲鞋百搭','标准运动鞋尺码 39-44 7天无理由退换 送运费险 收藏送鞋垫','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/4/171013_5abhk9k835jc5j80abb64h94kd7b0_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','棉鞋男秋季新款男鞋休闲鞋韩版学生鞋子男板鞋潮流运动鞋男跑步鞋','网面透气厚底 标准运动鞋尺码 39-44 7天无理由退换 送运费险','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/5/171020_3g47b07ka4a3didih0l3a941l0g3k_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','秋季新款男鞋子韩版英伦男士休闲鞋潮流青年运动鞋时尚百搭跑步鞋','亲，收藏店铺在下单，更优惠哦！此款图片都是实拍哦，该款是标准运动鞋码，码数39-44！本店支持7天无理由退换货哦！全国包邮！','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/6/170818_4dg6el287aj3fh2bd32bkj1b0c2i8_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','港仔2017秋冬新款时尚跑步男鞋男士潮款运动鞋透气韩版男板鞋','舒适百搭特价款','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/7/170829_36gdkihgcb8025jh2014l0gajl42l_640x960.jpg'),
(null,'男鞋','鞋','运动鞋','篮球鞋男减震战靴气垫耐磨防滑情侣高帮运动鞋学生板鞋休闲跑步鞋','此款运动鞋尺码40=运动鞋40=皮鞋39======本店支持7天无理由退换货，闪电发货，品质保证，赠送运费险，当天下午5点之前下单都可当天发货，默认发圆通。如需其他快递拍下备注！支持（申通，中通，韵达）。本店承诺收到货有任何不满意的包退货。退货赠送运费险，真正的零风险购物。','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/yundong/8/170730_2gb16h6el3ci37k8b4h5b4d1c89k1_640x960.jpg'),
(null,'男鞋','鞋','男靴','加绒马丁靴男高帮韩版英伦皮靴男士沙漠短靴新款复古中高邦男鞋子','【要加绒找客服备注，已经出货】同款低劣产品越来越多 唯独我们只坚持原版 　 　 　 　 　 　 　　 　 　 　 　 　　 　本店承诺：七天无理由换货。下单送运费险，购物0风险，退货有运费补！ 收藏店铺有粉丝价格,还有精美礼 本店全部实拍， 如有疑问联系客服 【此款鞋子是皮鞋尺码，标准的，比运动鞋尺码偏大的，例如：您平时运动鞋41的选择这款就是40的足够哦，亲，脚宽或者脚厚的按照41的皮鞋尺码下单！有什么疑问可以继续招呼我哦】。','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/nanxue/1/170905_203ig2j89kki9ai3dgg1l7khe312k_640x960.jpg'),
(null,'男鞋','鞋','男靴','宾兽新款英伦皮鞋男绅士复古中帮鞋男百搭靴子男潮流休闲鞋男鞋子','新品上市，全国包邮，支持7天无理由退换并赠送运费险，收藏店铺与宝贝享受粉丝专享价6.8折哦！','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/nanxue/2/170926_1dfbbd1kbjb0808i0khh2d0ib0ad4_640x960.jpg'),
(null,'男鞋','鞋','男靴','秋冬高帮鞋子男鞋韩版英伦休闲鞋男士靴子百搭潮流厚底板鞋男皮鞋','亲，收藏店铺在下单，更优惠哦！此款图片都是实拍哦，该款是标准运动鞋码，码数39-44！本店支持7天无理由退换货哦！全国包邮！','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/nanxue/3/170921_4a1bi0aa53l3kdh400l78e2b32kf5_640x960.jpg'),
(null,'男鞋','鞋','男靴','宾兽英伦秋冬新款男靴子系带复古马丁靴男加厚棉靴男高帮休闲鞋男','新品上市，全国包邮，支持7天无理由退换并赠送运费险，收藏店铺与宝贝享受粉丝专享价6.8折哦！','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/nanxue/4/170925_8ge8a2d98j0k38d1k771d35hk38l3_640x960.jpg'),
(null,'男鞋','鞋','男靴','秋冬季男鞋加绒棉鞋保暖加厚短靴子休闲鞋男小白鞋学生韩版雪地靴','收藏店铺加粉丝。全国包邮，还送运费险（退货补运费），7天无理由退换！','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/nanxue/5/170930_7adl0ckc8c53l3ib01i4602jk9fce_640x960.jpg'),
(null,'男鞋','鞋','男靴','高帮板鞋男韩版潮鞋街舞系带圆头经典白色短靴中帮靴子小白鞋男鞋','（赠送运费险，退货运费补贴，零风险购物售后无忧） 尺码建议：标准运动鞋码 情况一：如果您平时穿的鞋 如安踏、李宁、乔丹、特步等属于运动品牌的鞋子，平时穿40建议拍40； 情况二：如果您平时穿的鞋 如奥康、红蜻蜓、蜘蛛王、意尔康、金猴、富贵鸟等属于皮鞋码的鞋子，平时穿40建议拍41； (脚胖/脚宽/脚背高建议大一号) 以上建议仅供参考,请根据自己实际情况选码','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/nanxue/6/171010_27g3g3l16fd4g0j64j1aj63g7ic8e_640x960.jpg'),
(null,'男鞋','鞋','男靴','宾兽男士秋季新款运动鞋韩版靴子男透气厚底板鞋休闲鞋男鞋子','新品上市，全国包邮，支持7天无理由退换并赠送运费险，收藏店铺与宝贝享受粉丝专享价6.8折哦！','111.43','78.00','5000','1500','3500','image/subdivision/nanxie/nanxue/7/170806_3eca86234ed4lkekkd324ci51j45f_640x960.jpg'),
(null,'男鞋','鞋','男靴','秋冬季男士马丁靴韩版中筒加绒保暖皮靴青年男靴休闲棉靴个性军靴','全国包邮，支持7天无理由退换','111.43','178.00','5000','1500','3500','image/subdivision/nanxie/nanxue/8/83224545_212bg6a32hkj9383j7flg5g70ib4g_640x960.jpg'),
(null,'女套装','全身','套装','冬季新款韩版宽松加厚棉衣棉服外套女中长款针织毛衣打底时尚套装','温暖不显胖','111.43','222.00','5000','1500','3500','image/subdivision/quanshen/1/171026_7db37jkbf219if2k04fjfcgga3423_476x955.jpg'),
(null,'女套装','全身','套装','驼色呢子大衣17韩版秋冬新款连帽大毛领收腰长款显瘦毛呢外套','初冬要保暖','111.43','169.00','5000','1500','3500','image/subdivision/quanshen/2/171030_0acbealf45fkeag2a3i9ekha36g99_480x960.jpg'),
(null,'女套装','全身','套装','秋冬时尚套装韩版宽松套头毛绒毛衣高腰格纹半身裙长裙套装两件套','柔软毛衣','111.43','320.00','5000','1500','3500','image/subdivision/quanshen/3/171024_7i29chjg6cabj1c4fdcl597j9cfhf_462x925.jpg'),
(null,'女套装','全身','套装','秋冬新款韩版宽松格子短款呢子外套+高领套头毛衣修身铅笔裤女潮','小个子外套','111.43','260.00','5000','1500','3500','image/subdivision/quanshen/4/171030_43ea8dj31a7h3c1kdij8j8dbe29l5_476x954.jpg'),
(null,'女套装','全身','套装','原版文艺民族风绣花盘扣旗袍式上衣+绣花中长裙半身裙套装','懒人出门套装','111.43','340.00','5000','1500','3500','image/subdivision/quanshen/5/170927_18ci20hikk4cc9kka4jf363g2a209_442x884.jpg'),
(null,'女套装','全身','套装','韩版冬装新款学生气质保暖厚实中长款棉服真毛领连帽宽松显瘦棉衣','软妹棉袄','111.43','100.00','5000','1500','3500','image/subdivision/quanshen/6/171025_0jbe6e322a9icb55gig5444jj39ha_480x960.jpg'),
(null,'女套装','全身','套装','秋冬新款喇叭袖开叉针织衫单排扣蓬蓬裙半身裙两件套套装','气质女生范','111.43','180.00','5000','1500','3500','image/subdivision/quanshen/7/170927_349fica4ga0lgdak7i4k077i70bf7_480x958.jpg'),
(null,'女套装','全身','套装','秋冬新款韩版时尚高领毛球装饰印花字母套头卫衣套装','最新卫衣搭','111.43','166.00','5000','1500','3500','image/subdivision/quanshen/8/171023_67f8hkl4e3fglc96h2l8gd6a34948_460x918.jpg'),
(null,'女套装','全身','套装','新款秋冬格子长裙高腰大摆裙子复古伞裙半身裙套装（送腰带）','秋冬复古','111.43','209.00','5000','1500','3500','image/subdivision/quanshen/9/170821_7h7h192jj02j3j46daf0587cd0k02_640x960.jpg'),
(null,'女套装','全身','套装','秋冬新款小清新文艺花朵刺绣下摆波浪边不规则套头宽松毛衣女','微胖显瘦款','111.43','185.00','5000','1500','3500','image/subdivision/quanshen/10/171030_5815fllab9b6ac326ghek2350f035_401x802.jpg'),
(null,'女套装','全身','套装','冬季新款宽松中长款双面呢大衣毛呢外套高腰百褶半身裙女时尚套装','粉粉招桃花','111.43','143.00','5000','1500','3500','image/subdivision/quanshen/11/171026_5kh9kdb85b27j4bb1e98b6i4j400j_479x957.jpg'),
(null,'女套装','全身','套装','秋冬新款小清新宽松毛衣宽松牛仔女时尚套装','软萌傻白甜','111.43','269.00','5000','1500','3500','image/subdivision/quanshen/12/171027_572k415eb7kih5jlh9ci6897ee900_476x955.jpg');
		






#商品颜色图片详情表
CREATE TABLE mg_laptop_color_pic(
	cid        INT	 PRIMARY KEY AUTO_INCREMENT,     #ID
	laptop_id        INT	 NOT NULL ,     #与商品详情表ID相连
	color       VARCHAR(16)   NOT NULL DEFAULT "",   #衣服颜色
	color_small_pic       VARCHAR(1024)   NOT NULL DEFAULT "" ,  #衣服颜色小图片
	color_big_pic       VARCHAR(1024)   NOT NULL DEFAULT ""   #衣服颜色大图片
);
INSERT INTO  mg_laptop_color_pic  VALUES	
	(null,1,'橙红色','../image/subdivision/nvzhuang/shangyi/fengyi/1/1.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_671i7adkj786j87l0b3j8j9difjbk_640x960.jpg_468x468.jpg'),
	(null,2,'米白色','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_571bkeal6fd619cd7hibje0k0i407_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_571bkeal6fd619cd7hibje0k0i407_640x960.jpg'),
	(null,2,'咖啡色','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_39bc4ide9aij047jakdk9bl6432a7_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_39bc4ide9aij047jakdk9bl6432a7_640x960.jpg'),
	(null,3,'米白色','../image/subdivision/nvzhuang/shangyi/fengyi/3/171025_6jke8cgf92b9527echd9fa9d3gb25_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/171025_6jke8cgf92b9527echd9fa9d3gb25_640x960.jpg'),
	(null,3,'黑色','../image/subdivision/nvzhuang/shangyi/fengyi/3/170913_05e698ccaf628l07d7jd3ijdl8a85_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/170913_82g9fi5510464lji552ble76b6613_640x960.jpg_468x468.jpg'),
	(null,3,'黄色','../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_0e3a3d2e60d1k189cib3e9e7a35k5_800x800.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_0e3a3d2e60d1k189cib3e9e7a35k5_800x800.jpg'),
	(null,3,'卡其色','../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_224351i4ecka216lklc830h8d6ka7_800x800.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_224351i4ecka216lklc830h8d6ka7_800x800.jpg'),
	(null,4,'黄色','../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_4j343d7hke2i1lcgied1ia6jka767_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_4j343d7hke2i1lcgied1ia6jka767_640x960.jpg'),
	(null,4,'杏色','../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_17djleclbag81j84i21lidi3h26c4_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_17djleclbag81j84i21lidi3h26c4_640x960.jpg'),
	(null,5,'白色','../image/subdivision/nvzhuang/shangyi/fengyi/5/171012_7ajh90g08hdlj4ack6a291kki0818_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/5/171012_7ajh90g08hdlj4ack6a291kki0818_640x960.jpg'),
	(null,5,'黑色','../image/subdivision/nvzhuang/shangyi/fengyi/5/171012_188ihee785i6df7d27ae0c927dkb6_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/5/171012_188ihee785i6df7d27ae0c927dkb6_640x960.jpg'),
	(null,6,'黑色','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_0018ab5e6d2jg31b728i2fa92eai6_1200x1200.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_7b57469ci18k1l8d8fjje7hge5ci7_1200x1200.jpg_468x468.jpg'),
	(null,6,'砖红','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_065050cdgka9hakh7b20kh2lk2013_800x1200.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_065050cdgka9hakh7b20kh2lk2013_800x1200.jpg'),
	(null,6,'卡其色','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_54d56k6dg768k8f8iibf6id7g77kb_1200x1200.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_54d56k6dg768k8f8iibf6id7g77kb_1200x1200.jpg'),
	(null,7,'米白色','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_619akja65dhc737l4l8jgk3cb6fgg_750x860.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_619akja65dhc737l4l8jgk3cb6fgg_750x860.jpg'),
	(null,7,'黑色','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_13h2bde1d8cd6alh16jf33dhbd0l3_750x860.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_13h2bde1d8cd6alh16jf33dhbd0l3_750x860.jpg'),
	(null,7,'黄色','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_4335ij101abjck83id5al8cbe6ei3_750x860.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_4335ij101abjck83id5al8cbe6ei3_750x860.jpg'),
	(null,7,'粉色','../image/subdivision/nvzhuang/shangyi/fengyi/7/157704109_14a6k9ajh464l65kedcdd66691d82_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_648ghji27a2ebbg813b6d986ccl3f_640x960.jpg_468x468.jpg'),
	(null,7,'浅蓝色','../image/subdivision/nvzhuang/shangyi/fengyi/7/157704109_7i2de9jjg040730b752hd9blg1l42_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/157704109_7i2de9jjg040730b752hd9blg1l42_640x960.jpg'),
	(null,8,'姜黄','../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_71851808156c5h47j92589c4ef980_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_71851808156c5h47j92589c4ef980_640x960.jpg'),
	(null,8,'墨绿','../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_806h13ak3al7ddb61d5hi32ia303b_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_806h13ak3al7ddb61d5hi32ia303b_640x960.jpg'),
	(null,9,'黑色','../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_334jbl1eg0d2j022a13ejkjeljcld_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_334jbl1eg0d2j022a13ejkjeljcld_640x960.jpg'),
	(null,9,'红色','../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_082jghc069kj36lbjg1b3bb87dl37_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_082jghc069kj36lbjg1b3bb87dl37_640x960.jpg'),
	(null,10,'杏色','../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_80chdc2l8l4dkl3g6jf3k24503lba_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_6a19050472gk3hfa8cjb326eie75a_640x960.jpg_468x468.jpg'),
	(null,11,'白色','../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_67jc8icld2k4l3fj53kadbb3cce22_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_69dhadiegcfhk88k14ihi43l5k7jj_640x960.jpg_468x468.jpg'),
	(null,12,'白色','../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ifqtqnlcgqydczlghazdambqgyyde_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/4/111245878_ifrtqnrzgi2dczlghazdambqhayde_640x960.jpg_468x468.jpg'),
	(null,13,'红色','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_3274952k2cl58e70iail5b3h98jba_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_3274952k2cl58e70iail5b3h98jba_640x640.jpg'),
	(null,13,'咖啡色','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_5dh6cdakcca0jgg4jed71k8ic5ie6_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_53ee1hlj7gj7b0de06ce8293ff861_640x960.jpg_468x468.jpg'),
	(null,13,'白色','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_0lkb5gb249il3j9k90d33bclh435h_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_0lkb5gb249il3j9k90d33bclh435h_640x640.jpg'),
	(null,13,'黑色','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_56ljf5l6a7gclei5ig5457gih47h8_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_56ljf5l6a7gclei5ig5457gih47h8_640x640.jpg'),
	(null,14,'红色','../image/subdivision/nvzhuang/shangyi/yiziling/6/170324_7lh2f7dh538gfe2ihaaf94cae2357_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/6/170324_4ca48icc1d313lelchd52cecdd7i6_640x960.jpg_468x468.jpg'),
	(null,14,'蓝色','../image/subdivision/nvzhuang/shangyi/yiziling/6/170328_8fe8b9lg1dl001a22gaf5869l22hb_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/6/170328_8fe8b9lg1dl001a22gaf5869l22hb_640x960.jpg'),
	(null,15,'白色','../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_8382aaf5gac02b8efb420eb2dje8i_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_19209c5c98ab7e4j3ead3ef0aekke_640x960.jpg_468x468.jpg'),
	(null,16,'黑白色','../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_29lie4agc2d7df8g58d77eh8aejgd_876x1003.png_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_29lie4agc2d7df8g58d77eh8aejgd_876x1003.png'),
	(null,16,'黄白色','../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_6l9ak0f78lh14eb4hjaalf7g7ajk4_641x1015.png_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_44ah9ld522fek8ci51k4gjjlhk8eh_641x1015.png_468x468.jpg'),
	(null,17,'白色','../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_875cg6hj2fecl0e5aihcfk8j939d1_800x1200.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_7ca5ga14j8dd8kfkjd02d7k99if4h_800x1200.jpg_468x468.jpg'),
	(null,18,'白色','../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_7l73cbl8c4c564a7lf85la2hh30fg_750x1125.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_0dbi4jfdch388g117l16edc5bb87d_640x960.jpg_468x468.jpg'),
	(null,19,'灰蓝色','../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_774ab1d90bgfj2i7ah9hebihb0a55_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_774ab1d90bgfj2i7ah9hebihb0a55_640x960.jpg'),
	(null,19,'米白色','../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_3b0b3ebg3kg9141i3hg855li500l3_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_3b0b3ebg3kg9141i3hg855li500l3_640x960.jpg'),
	(null,20,'白色','../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170507_6j66j28kaaidc0k638idhji658j98_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170507_6j66j28kaaidc0k638idhji658j98_640x960.jpg'),
	(null,21,'白色','../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_8c7j3i65c4f7742hahe410gj1k0gb_640x748.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_8c7j3i65c4f7742hahe410gj1k0gb_640x748.jpg'),
	(null,22,'粉色','../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_4ed03ie9d7b0a8dhjeg8686i113he_640x785.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_4ed03ie9d7b0a8dhjeg8686i113he_640x785.jpg'),
	(null,22,'米白色','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_4616ceff99ahdhd695cbc326ck1aa_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_4616ceff99ahdhd695cbc326ck1aa_640x960.jpg'),
	(null,22,'桔色','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_24a5dlfcif06jgd0a1bjhkdd95cig_640x959.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_24a5dlfcif06jgd0a1bjhkdd95cig_640x959.jpg'),
	(null,22,'咖啡色','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_5kkeaifgeif2c4bgg95i6i38keek7_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_5kkeaifgeif2c4bgg95i6i38keek7_640x960.jpg'),
	(null,22,'藏青色','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_777810j7d0gk5a79b99i22jk56fc0_640x959.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_777810j7d0gk5a79b99i22jk56fc0_640x959.jpg'),
	(null,23,'杏色','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_324f7f77d617389da1jgaae2616g5_750x750.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_6251bc71175331e740jdiel47f12j_640x960.jpg_468x468.jpg'),
	(null,23,'棕黄色','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_81ii9ehg3i831282jhha76deg90e2_750x750.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_55h1gf4cfb8j7lig1851a8g1l5lci_1200x1200.jpg_468x468.jpg'),
	(null,24,'黑色','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_1behcclh064e485d2a2f7j99hl189_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_1behcclh064e485d2a2f7j99hl189_640x960.jpg'),
	(null,24,'深棕色','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_41k4gf5hla4jacf2h8c10dfef95h6_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_41k4gf5hla4jacf2h8c10dfef95h6_640x960.jpg'),
	(null,24,'浅军绿色','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_50l5ag1193gg2li6e730lae291j49_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_50l5ag1193gg2li6e730lae291j49_640x960.jpg'),
	(null,25,'浅蓝','../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_084llf5a0aa2fc0hdlkf3jh0a6381_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_1994f1b1gdg0clj1g7h51a0ccg202_640x960.jpg_468x468.jpg'),
	(null,26,'浅蓝','../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_1d8k35l5l3340a58lh2hi031ak6if_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_74j50hkc68fe0g4e658g95548l9hd_640x960.jpg_468x468.jpg'),
	(null,27,'浅蓝','../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_8146ij0j0495cf8c08bcaf9jj9bji_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_321fhfd60db5g9d1l8ejkgk33l1cl_800x800.jpg_468x468.jpg'),
	(null,28,'黑色','../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_7libbka8ih15161213dagh7eb9h16_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_110fh96gh98kf7ael3icdd00j15g6_640x960.jpg_468x468.jpg'),
	(null,29,'蓝色','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_4f857d1320dcd7ad0dfff0heaehb6_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_4f857d1320dcd7ad0dfff0heaehb6_640x960.jpg'),
	(null,29,'浅蓝','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_3gbj3ke5j41hj1el0jgbk59ak74cc_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_616b301h6h7i088lecjhdf98g9jie_640x960.jpg_468x468.jpg'),
	(null,30,'黑色','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_0i9j3gcaihe19j23k3kf2aik9k1k0_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_393gl7jjad9045hficfigd8dblf6b_640x960.jpg_468x468.jpg'),
	(null,30,'蓝色','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_4gh8cchac846jj1be64k66527cf8e_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_4gh8cchac846jj1be64k66527cf8e_640x960.jpg'),
	(null,31,'浅蓝','../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_046ci69784ffcaf8lj11be6681c2i_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/7/170930_75a4gji95cbh7j41i468kied1hkj4_640x960.jpg_468x468.jpg'),
	(null,32,'浅蓝','../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_1ag64d706he244ddfg5aia383fa6c_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_532gk93cjjl89l086ddd56f7dlghe_640x960.jpg_468x468.jpg'),
	(null,32,'深蓝','../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_6j6dglhhf71435jj65hd3ge97h7b4_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_6j6dglhhf71435jj65hd3ge97h7b4_640x960.jpg'),
	(null,33,'黑色','../image/subdivision/nanzhuang/mianao/1/170921_31ljicc43fg3g7c2i0glf177hd643_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/1/170921_3cbe3ah17hdech39hg21ga3gfj2hi_640x960.jpg_468x468.jpg'),
	(null,34,'灰色','../image/subdivision/nanzhuang/mianao/2/171024_07i18k89ahh2li801cfei2440glaj_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/2/171024_07i18k89ahh2li801cfei2440glaj_800x800.jpg'),
	(null,34,'黑色','../image/subdivision/nanzhuang/mianao/2/171024_6h40cgf1065d360j29d03kcf4jfca_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/2/171024_6h40cgf1065d360j29d03kcf4jfca_800x800.jpg'),
	(null,34,'红色','../image/subdivision/nanzhuang/mianao/2/171024_8g94l43lefca0a3e8h1212515dc1b_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/2/171024_8g94l43lefca0a3e8h1212515dc1b_800x800.jpg'),
	(null,35,'浅蓝','../image/subdivision/nanzhuang/mianao/3/171023_4lg62h7e02kge79h3beak0he5jjc3_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/3/171023_4lg62h7e02kge79h3beak0he5jjc3_640x960.jpg'),
	(null,35,'深蓝','../image/subdivision/nanzhuang/mianao/3/171023_627ge3b4i153hgcaj7722e9a3gceh_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/3/171023_627ge3b4i153hgcaj7722e9a3gceh_640x960.jpg'),
	(null,36,'灰色','../image/subdivision/nanzhuang/mianao/4/171019_3be7gbkhb0le24g1i5ck94kch0k7k_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/4/171019_3a9g6i447fcag46je1fhec88067cl_640x960.jpg_468x468.jpg'),
	(null,36,'黑色','../image/subdivision/nanzhuang/mianao/4/171019_0k7h3j95061g96d8kf1h1056le35g_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/4/171019_3a9g6i447fcag46je1fhec88067cl_640x960.jpg_468x468 (1).jpg'),
	(null,37,'白色','../image/subdivision/nanzhuang/mianao/5/171018_5i41a8c0ba9ja8425h3ab7216de4e_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/5/171018_5i41a8c0ba9ja8425h3ab7216de4e_800x800.jpg'),
	(null,37,'黑色','../image/subdivision/nanzhuang/mianao/5/171018_3i84a0ffk9ki58b4keha4jda2k03e_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/5/171018_3i84a0ffk9ki58b4keha4jda2k03e_800x800.jpg'),
	(null,37,'桔色','../image/subdivision/nanzhuang/mianao/5/171018_2g8cg3ffjkf29cak6dga8j93d4fa2_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/5/171018_3ilc92h8737hk5jebd9ff940dfddh_640x960.jpg_468x468.jpg'),
	(null,38,'蓝色','../image/subdivision/nanzhuang/mianao/6/171017_5639dlfkegjkk2g44bfkc03iklb11_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/6/171017_5639dlfkegjkk2g44bfkc03iklb11_800x800.jpg'),
	(null,38,'浅灰','../image/subdivision/nanzhuang/mianao/6/171017_2lb5j6fjalg5865fd162j8lae0k6f_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/6/171017_2lb5j6fjalg5865fd162j8lae0k6f_800x800.jpg'),
	(null,38,'紫色','../image/subdivision/nanzhuang/mianao/6/171017_8alkei2ji28h97b616dk2664h1ic1_640x822.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/6/171017_8alkei2ji28h97b616dk2664h1ic1_640x822.jpg'),
	(null,38,'深灰','../image/subdivision/nanzhuang/mianao/6/171017_243klllkha40cdfebkbka9lk6j20c_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/6/171017_243klllkha40cdfebkbka9lk6j20c_800x800.jpg'),
	(null,39,'黑色','../image/subdivision/nanzhuang/mianao/7/171017_1a7bb73gl39d5h1044g4b168ch8fe_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/7/171017_1a7bb73gl39d5h1044g4b168ch8fe_640x960.jpg'),
	(null,39,'军绿色','../image/subdivision/nanzhuang/mianao/7/171017_3llkl6i45fdfl7be2bf95b579f4h0_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/7/171017_3llkl6i45fdfl7be2bf95b579f4h0_640x960.jpg'),
	(null,39,'铁灰色','../image/subdivision/nanzhuang/mianao/7/171017_4lfb5aeadladak06h7l0djdi5dg03_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/7/171017_4lfb5aeadladak06h7l0djdi5dg03_640x960.jpg'),
	(null,40,'白色','../image/subdivision/nanzhuang/mianao/8/171017_04951h46h7f3i0bc6d2ll5iccg6ae_1500x1500.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/8/171017_04951h46h7f3i0bc6d2ll5iccg6ae_1500x1500.jpg'),
	(null,40,'黑色','../image/subdivision/nanzhuang/mianao/8/171017_5li38h77ak15h050613h6gjafh04l_640x960.png_100x100.jpg','../image/subdivision/nanzhuang/mianao/8/171017_5li38h77ak15h050613h6gjafh04l_640x960.png'),
	(null,40,'红色','../image/subdivision/nanzhuang/mianao/8/171017_8ajkkbhg8g50kk90kl9likc9i45ih_1500x1500.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/8/171017_8ajkkbhg8g50kk90kl9likc9i45ih_1500x1500.jpg'),
	(null,40,'卡其色','../image/subdivision/nanzhuang/mianao/8/171017_029kl976kakdhe7le23ei46hgdid8_1500x1500.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/8/171017_029kl976kakdhe7le23ei46hgdid8_1500x1500.jpg'),
	(null,41,'白色','../image/subdivision/nanzhuang/Tx/1/170905_4f3l3dck4b1h1c2hh2j9ffh901jh1_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/1/170905_4f3l3dck4b1h1c2hh2j9ffh901jh1_800x800.jpg'),
	(null,41,'黑色','../image/subdivision/nanzhuang/Tx/1/170905_048f16k3257dahi32a6cc6gef65i9_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/1/170905_048f16k3257dahi32a6cc6gef65i9_800x800.jpg'),
	(null,41,'米色','../image/subdivision/nanzhuang/Tx/1/170905_79hbdl5hjj2k5jj2khb13bla3cdc5_800x800.jpg','../image/subdivision/nanzhuang/Tx/1/170905_79hbdl5hjj2k5jj2khb13bla3cdc5_800x800 (1).jpg'),
	(null,42,'白色','../image/subdivision/nanzhuang/Tx/2/170920_3b06hk6b8jcdeic11ghc4lh120l9f_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/2/170920_3b06hk6b8jcdeic11ghc4lh120l9f_800x800.jpg'),
	(null,42,'黑色','../image/subdivision/nanzhuang/Tx/2/170920_2e8ka0e3ldei24jfhbj4a8k1hl24e_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/2/170920_2e8ka0e3ldei24jfhbj4a8k1hl24e_800x800.jpg'),
	(null,43,'白色','../image/subdivision/nanzhuang/Tx/3/170808_34c7ad6bfc30fb49c48d6ac9j04f3_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/3/170808_34c7ad6bfc30fb49c48d6ac9j04f3_640x960.jpg'),
	(null,43,'灰色','../image/subdivision/nanzhuang/Tx/3/170808_07j1l0dja485lb71c0kehkfbclce0_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/3/170808_07j1l0dja485lb71c0kehkfbclce0_640x960.jpg'),
	(null,43,'黑色','../image/subdivision/nanzhuang/Tx/3/170808_62i5ele3216hcfegjfa9c44i2fhag_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/3/170808_62i5ele3216hcfegjfa9c44i2fhag_640x960.jpg'),
	(null,43,'绿色','../image/subdivision/nanzhuang/Tx/3/170808_4d9cfleffili18d35d3a4a55ea2c8_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/3/170808_7hb2id1adkihi1ib5h03k046lde6k_640x960.jpg_468x468.jpg'),
	(null,43,'粉色','../image/subdivision/nanzhuang/Tx/3/170808_65ch36jghdi4df4a30ba1fhh3djb7_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/3/170808_65ch36jghdi4df4a30ba1fhh3djb7_640x960.jpg'),
	(null,44,'白色','../image/subdivision/nanzhuang/Tx/4/170616_50lf4gb4cj675f7ib989kfhb3a76a_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/4/170616_50lf4gb4cj675f7ib989kfhb3a76a_800x800.jpg'),
	(null,44,'黑色','../image/subdivision/nanzhuang/Tx/4/170616_0bbj0aj3b872ba6hd6gd6fjbch574_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/4/170616_0bbj0aj3b872ba6hd6gd6fjbch574_800x800.jpg'),
	(null,44,'红色','../image/subdivision/nanzhuang/Tx/4/170616_86dfe64eb0f3lklj7g5il2j29210b_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/4/170616_86dfe64eb0f3lklj7g5il2j29210b_800x800.jpg'),
	(null,44,'军绿色','../image/subdivision/nanzhuang/Tx/4/170616_6aihjlci7j5eakc2gc5ggkh7hl0ld_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/4/170616_6aihjlci7j5eakc2gc5ggkh7hl0ld_800x800.jpg'),
	(null,45,'白色','../image/subdivision/nanzhuang/Tx/5/170712_1de873a0heb97h7l7096bf3ak09g3_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/5/170712_2a46i417e6d303h9lf6h5c28583j3_800x1200.jpg_468x468.jpg'),
	(null,45,'黑色','../image/subdivision/nanzhuang/Tx/5/170712_1h31c6e9jball5acai2h0fhd8afb0_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/5/170712_298j8g710168lj102k981ije8b9a9_800x1200.jpg_468x468.jpg'),
	(null,45,'天蓝','../image/subdivision/nanzhuang/Tx/5/170712_09e5d3l99h4721f044edj63i92dce_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/5/170712_09e5d3l99h4721f044edj63i92dce_800x1200.jpg'),
	(null,45,'深蓝','../image/subdivision/nanzhuang/Tx/5/170712_0lkl094d9ce1gd1h592b8e552h2e6_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/5/170712_298j8g710168lj102k981ije8b9a9_800x1200.jpg_468x468 (1).jpg'),
	(null,46,'黑色','../image/subdivision/nanzhuang/Tx/6/171010_6ah968b2lhcd9ca1af2ib3e16l55i_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/6/171010_6ah968b2lhcd9ca1af2ib3e16l55i_800x800.jpg'),
	(null,46,'咖啡色','../image/subdivision/nanzhuang/Tx/6/171010_66k0i8bh835dc5kbdd5gb8f08d834_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/6/171010_66k0i8bh835dc5kbdd5gb8f08d834_800x800.jpg'),
	(null,47,'白色','../image/subdivision/nanzhuang/Tx/7/170604_83896dbd48h1c9a605gh23ld84668_640x640.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/7/170604_4799ej9i16e1c3d7h2dba80h7e0i2_640x960.jpg_468x468.jpg'),
	(null,47,'黑色','../image/subdivision/nanzhuang/Tx/7/170604_008998cf98578483kl08d45cafgc9_640x640.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/7/170604_1ddbch96g42eki1bl75a2f5hakjc6_800x800.jpg_750x999.jpg'),
	(null,48,'白色','../image/subdivision/nanzhuang/Tx/8/171015_4l475lad9kjj4555d50kidai73ff8_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/8/171015_4l475lad9kjj4555d50kidai73ff8_640x960.jpg'),
	(null,48,'黑色','../image/subdivision/nanzhuang/Tx/8/171015_1744jf360ci8kegihb53g632e8lc9_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/8/171015_1744jf360ci8kegihb53g632e8lc9_640x960.jpg'),
	(null,49,'蓝色','../image/subdivision/nanzhuang/niuku/1/171001_4lhg4i10cdc93c5la2j9b2f68hd5b_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/1/171001_5a73i9bj02260a9a0af8hgghif8cl_640x960.jpg_468x468.jpg'),
	(null,50,'黑色','../image/subdivision/nanzhuang/niuku/2/170820_4fd9al7443ada8939ia92l2iklej9_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/2/170820_4fd9al7443ada8939ia92l2iklej9_640x960.jpg'),
	(null,50,'蓝色','../image/subdivision/nanzhuang/niuku/2/170901_4kg3cd530hc9f33dgc5b92b87d662_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/2/170901_4kg3cd530hc9f33dgc5b92b87d662_640x960.jpg'),
	(null,51,'蓝色','../image/subdivision/nanzhuang/niuku/3/170504_61hfb9l522dfjceac731f5e0bdig1_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/3/170504_73bkga26a3c59hgia6h64g9ladh81_640x960.jpg_468x468.jpg'),
	(null,52,'黑色','../image/subdivision/nanzhuang/niuku/4/171006_2bif6ff9j3l8di1j1il8dhh3g74fe_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/4/171006_34g91i48364k4kbjjj2k8i47lkb54_640x960.jpg_468x468.jpg'),
	(null,53,'蓝色','../image/subdivision/nanzhuang/niuku/5/170906_33lkhf045c00khh3eeljjjibk5616_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/5/170906_33lkhf045c00khh3eeljjjibk5616_800x1200.jpg'),
	(null,53,'黑色','../image/subdivision/nanzhuang/niuku/5/170906_15ake831g8ikf35kbb6bjie2e62a7_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/5/170906_15ake831g8ikf35kbb6bjie2e62a7_800x1200.jpg'),
	(null,54,'黑色','../image/subdivision/nanzhuang/niuku/6/170805_1il97098laf7e05aijk3fjhj4dh78_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/6/170805_1il97098laf7e05aijk3fjhj4dh78_800x800.jpg'),
	(null,54,'浅蓝色','../image/subdivision/nanzhuang/niuku/6/170805_32d1dfiab8hgb6fl563ebb9679d71_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/6/170805_32d1dfiab8hgb6fl563ebb9679d71_800x800.jpg'),
	(null,54,'深蓝色','../image/subdivision/nanzhuang/niuku/6/170805_16026d9cc4ek41gah4g37a0lk386f_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/6/170805_16026d9cc4ek41gah4g37a0lk386f_800x800.jpg'),
	(null,55,'浅蓝色','../image/subdivision/nanzhuang/niuku/7/170624_07j2b298a5lk4gl386098e1380g92_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/7/170624_07j2b298a5lk4gl386098e1380g92_800x800.jpg'),
	(null,56,'黑色','../image/subdivision/nanzhuang/niuku/8/101381997_5h7d01j3aaifiefe802ba31035l1c_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/8/101381997_5h7d01j3aaifiefe802ba31035l1c_800x1200.jpg'),	
	(null,57,'灰色','../image/subdivision/nanzhuang/xiuxian/1/171016_6l42a238k3lg4lll5d03eagf68f33_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/1/171016_6l42a238k3lg4lll5d03eagf68f33_800x800.jpg'),
	(null,57,'黑色','../image/subdivision/nanzhuang/xiuxian/1/171016_4ad9f1ai83cg6fadec1368fe1chj0_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/1/170917_4i8j5h2f63g0klj95f3la6aka1b4i_640x960.jpg_468x468.jpg'),
	(null,58,'黑色','../image/subdivision/nanzhuang/xiuxian/2/171015_20blc2f8d5985hk20k30b03h93jif_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/2/171015_20blc2f8d5985hk20k30b03h93jif_800x800.jpg'),
	(null,59,'浅绿色','../image/subdivision/nanzhuang/xiuxian/3/170413_5b3a4glidb431ia76jkcfbgj6l198_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/3/170413_5b3a4glidb431ia76jkcfbgj6l198_640x960.jpg'),
	(null,59,'黑色','../image/subdivision/nanzhuang/xiuxian/3/170413_5e75g6ijf6342ich8158gf8g56j94_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/3/170413_5e75g6ijf6342ich8158gf8g56j94_640x960.jpg'),
	(null,60,'黑色','../image/subdivision/nanzhuang/xiuxian/4/170819_4c4eb1ea0ea81dh3h1ha3j9jgk1gb_800x800.jpg','../image/subdivision/nanzhuang/xiuxian/4/170819_86a6jlee3c7106440f4k2kdg46lb2_640x960.jpg_468x468.jpg'),
	(null,61,'蓝色','../image/subdivision/nanzhuang/xiuxian/5/170824_39e45g03a5229b8bi4clk7bf07kj4_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/5/170824_39e45g03a5229b8bi4clk7bf07kj4_640x960.jpg'),
	(null,62,'黑色','../image/subdivision/nanzhuang/xiuxian/6/170609_61983cdijic2k6745e2ibhi1i38cl_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/6/170609_61983cdijic2k6745e2ibhi1i38cl_640x960.jpg'),
	(null,62,'蓝灰色','../image/subdivision/nanzhuang/xiuxian/6/170609_7bfb73ldbicbfhj639fj4dlgii260_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/6/170609_7bfb73ldbicbfhj639fj4dlgii260_640x960.jpg'),
	(null,63,'暗纹时尚版','../image/subdivision/nanzhuang/xiuxian/7/101695604_4jfekke6hl3iekcb6klk6a1b7jlc4_640x848.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/7/101695604_4jfekke6hl3iekcb6klk6a1b7jlc4_640x848.jpg'),
	(null,63,'骷髅迷彩版','../image/subdivision/nanzhuang/xiuxian/7/101695604_116f16c4k4ddc59d1agb9l0841d6c_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/7/101695604_116f16c4k4ddc59d1agb9l0841d6c_640x960.jpg'),
	(null,64,'黑色','../image/subdivision/nanzhuang/xiuxian/8/170807_37gce5847dah5efk7fgf901iiccaj_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/8/170807_37gce5847dah5efk7fgf901iiccaj_800x800.jpg'),
	(null,64,'军绿色','../image/subdivision/nanzhuang/xiuxian/8/170807_5bkdlkke5chh7729l05g7g1f80843_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/8/170807_5bkdlkke5chh7729l05g7g1f80843_800x800.jpg'),
	(null,64,'卡其色','../image/subdivision/nanzhuang/xiuxian/8/170807_848117e3fll4eh93al377969c8jhe_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/8/170807_848117e3fll4eh93al377969c8jhe_800x800.jpg'),
	(null,65,'白色','../image/subdivision/nvxie/xiaobai/1/171016_7j427521hlh3ab9b7b3f8f7d3c53c_750x768.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/1/171016_7j427521hlh3ab9b7b3f8f7d3c53c_750x768.jpg'),
	(null,65,'黑色','../image/subdivision/nvxie/xiaobai/1/171016_74c09aec3hdf7la4d8de6idekia01_750x864.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/1/171016_74c09aec3hdf7la4d8de6idekia01_750x864.jpg'),
	(null,66,'棕色','../image/subdivision/nvxie/xiaobai/2/170504_0bbb90k28b14b578afh22f85gef5j_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/2/170504_0bbb90k28b14b578afh22f85gef5j_640x960.jpg'),
	(null,66,'全白','../image/subdivision/nvxie/xiaobai/2/170504_01hhe664162j9l38g4c060ad1d306_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/2/170504_0bbb90k28b14b578afh22f85gef5j_640x960.jpg'),
	(null,66,'粉色','../image/subdivision/nvxie/xiaobai/2/170507_4jb5e85ehg4ie9gf9ef5kg64c13f1_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/2/170507_4jb5e85ehg4ie9gf9ef5kg64c13f1_640x960.jpg'),
	(null,67,'白色','../image/subdivision/nvxie/xiaobai/3/171007_3lh9jahfajk3jhjclehlb5jie661i_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/3/171007_2b2ch3h5ij66g44k62c9kklhcgdi9_640x960.jpg_468x468.jpg'),
	(null,67,'黑色','../image/subdivision/nvxie/xiaobai/3/171007_6ah8kfeld15gdca17k697739ehce1_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/3/171007_6ah8kfeld15gdca17k697739ehce1_640x960.jpg'),
	(null,68,'蓝色','../image/subdivision/nvxie/xiaobai/4/170929_7c07ljfblkb7i58lbk9487j319908_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/4/170929_7c07ljfblkb7i58lbk9487j319908_800x800.jpg'),
	(null,68,'黑色','../image/subdivision/nvxie/xiaobai/4/170929_4li93j013a7d7j38dhhh1cdf0g61l_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/4/170929_4li93j013a7d7j38dhhh1cdf0g61l_800x800.jpg'),
	(null,68,'红色','../image/subdivision/nvxie/xiaobai/4/170929_0ia19c757g28l5h98d49dif4i58de_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/4/170929_0ia19c757g28l5h98d49dif4i58de_800x800.jpg'),
	(null,69,'白粉','../image/subdivision/nvxie/xiaobai/5/170801_21bge0j09ee697jba76ac9jai5f3e_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/5/170801_75egk16a794i6967kgehah9e2a53i_640x960.jpg_468x468.jpg'),
	(null,69,'白红','../image/subdivision/nvxie/xiaobai/5/170801_2h6d411e538cf7ca3b7j7cj0afggk_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/5/170801_2h6d411e538cf7ca3b7j7cj0afggk_640x960.jpg'),
	(null,70,'白色','../image/subdivision/nvxie/xiaobai/6/170420_1j58bbike5j36d02d7f26dfcdhdcd_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/6/170420_1j58bbike5j36d02d7f26dfcdhdcd_800x800.jpg'),
	(null,70,'黑色','../image/subdivision/nvxie/xiaobai/6/170420_228e4a0ad50g7e856fe39bh7d6aba_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/6/170420_228e4a0ad50g7e856fe39bh7d6aba_800x800.jpg'),
	(null,70,'红色','../image/subdivision/nvxie/xiaobai/6/170420_35i2a949agec80ah7jh3g6bllhgab_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/6/170420_35i2a949agec80ah7jh3g6bllhgab_800x800.jpg'),
	(null,71,'白色','../image/subdivision/nvxie/xiaobai/7/99174644_7f1dcda6c85g9737lkae6ca2k9g1g_640x960.png_100x100.jpg','../image/subdivision/nvxie/xiaobai/7/170504_64gha0je3c6b90l2693756dgkcial_640x960.jpg_468x468.jpg'),
	(null,71,'黑色','../image/subdivision/nvxie/xiaobai/7/99174644_26bk650i1c7g08k3bf164l1022746_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/7/99174644_26bk650i1c7g08k3bf164l1022746_640x960.jpg'),
	(null,71,'蓝色','../image/subdivision/nvxie/xiaobai/7/99174644_6deg21ekcf463g8cdahj000hij37h_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/7/99174644_6deg21ekcf463g8cdahj000hij37h_640x960.jpg'),
	(null,72,'灰色','../image/subdivision/nvxie/xiaobai/8/170828_20cklka38b5gc0jbi473l1gljiaea_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/8/170828_20cklka38b5gc0jbi473l1gljiaea_800x800.jpg'),
	(null,72,'黑色','../image/subdivision/nvxie/xiaobai/8/170828_0fa33jg59ei8a9409ca91a9kh488k_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/8/170828_0fa33jg59ei8a9409ca91a9kh488k_800x800.jpg'),
	(null,72,'粉红色','../image/subdivision/nvxie/xiaobai/8/170828_896fe59d5dbb3cc5d8lk9k4b007jd_750x638.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/8/170828_896fe59d5dbb3cc5d8lk9k4b007jd_750x638.jpg'),
	(null,73,'黑底','../image/subdivision/nvxie/xuezi/1/170831_2jhc98eaba58d1lagfj9527cef6h3_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/1/170831_2jhc98eaba58d1lagfj9527cef6h3_640x960.jpg'),
	(null,73,'白底','../image/subdivision/nvxie/xuezi/1/170831_77ghb0i58g0gfkka4llh6fll3hb5i_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/1/170831_77ghb0i58g0gfkka4llh6fll3hb5i_640x960.jpg'),
	(null,74,'黑色','../image/subdivision/nvxie/xuezi/2/83773287_34698k2l2gih2b855cedecf2672c4_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/2/83773287_34698k2l2gih2b855cedecf2672c4_750x750.jpg'),
	(null,75,'黑色','../image/subdivision/nvxie/xuezi/3/170913_2fcjaflic1d922hega13j2kb99gj9_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/3/170913_2fcjaflic1d922hega13j2kb99gj9_640x960.jpg'),
	(null,75,'棕色','../image/subdivision/nvxie/xuezi/3/170913_3eki5281l9116dcdild6hk7l58jak_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/3/170913_26354k9e9hhle6hh6jll1lee0gbgh_640x960.jpg_468x468.jpg'),
	(null,76,'灰色','../image/subdivision/nvxie/xuezi/4/48016605_4flg09blk05jab65b011157id4bf3_1000x1500.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/4/48016605_4flg09blk05jab65b011157id4bf3_1000x1500.jpg'),
	(null,76,'黑色','../image/subdivision/nvxie/xuezi/4/48016605_1h0dk286h5jl1bdkdie42048639hc_1000x1500.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/4/48016605_1h0dk286h5jl1bdkdie42048639hc_1000x1500.jpg'),
	(null,77,'黑色','../image/subdivision/nvxie/xuezi/5/170910_0al0d8le049bi172ej2837fke47jj_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/5/170910_0al0d8le049bi172ej2837fke47jj_640x960.jpg'),
	(null,77,'军绿色','../image/subdivision/nvxie/xuezi/5/170910_376ah4aaeg6f4k8gdefiba9ijgii9_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/5/170910_376ah4aaeg6f4k8gdefiba9ijgii9_640x960.jpg'),
	(null,77,'棕色','../image/subdivision/nvxie/xuezi/5/170910_5a9l44cl3i5cf3hlgeiika6a3fkfb_2640x3960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/5/170910_5a9l44cl3i5cf3hlgeiika6a3fkfb_2640x3960.jpg'),
	(null,78,'黑色','../image/subdivision/nvxie/xuezi/6/170914_6d2178ff90e76kchgeb2ffldcfi1c_970x970.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/6/170914_6l9h7e0h2g7hce546f24cdfd5gfda_640x960.jpg_468x468.jpg'),
	(null,79,'紫红色','../image/subdivision/nvxie/xuezi/7/170807_6g65cei1f2j8l0ia4edabehaika5f_1200x1200.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/7/170807_399k88bkk20g8523096169cgkkh11_790x827.jpg_750x999.jpg'),
	(null,79,'深灰色','../image/subdivision/nvxie/xuezi/7/170807_05c2095f60ic5h2g4c5fa52ce180f_1200x1200.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/7/170807_05c2095f60ic5h2g4c5fa52ce180f_1200x1200.jpg'),
	(null,79,'黑色','../image/subdivision/nvxie/xuezi/7/170807_769h9kal9a0b9jaj2jaa3ajfabai3_1200x1200.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/7/170807_769h9kal9a0b9jaj2jaa3ajfabai3_1200x1200.jpg'),
	(null,80,'黑色','../image/subdivision/nvxie/xuezi/8/171019_8e1lg4fbbha3hl3572hg6affbgak4_1000x1500.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/8/171019_4dl3i5607ck6igk2gd5e6j7f410ga_1000x1500.jpg_468x468.jpg'),
	(null,80,'棕色','../image/subdivision/nvxie/xuezi/8/171019_594e37jkf42bgb06aek66e41ea95h_1000x1500.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/8/171019_594e37jkf42bgb06aek66e41ea95h_1000x1500.jpg'),
	(null,80,'米色','../image/subdivision/nvxie/xuezi/8/171019_2b8a4k61b3075adbg8bdkb6cd5jg0_1000x1500.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/8/171019_2b8a4k61b3075adbg8bdkb6cd5jg0_1000x1500.jpg'),
	(null,81,'黑色','../image/subdivision/nvxie/danxie/1/171020_171458j538de7bf6lbg9bb23i5cja_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/1/171020_171458j538de7bf6lbg9bb23i5cja_800x800.jpg'),
(null,81,'图片色','../image/subdivision/nvxie/danxie/1/171018_6c509038ca073f181ec77bhchab6f_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/1/171018_6c509038ca073f181ec77bhchab6f_750x750.jpg'),
(null,82,'绿色','../image/subdivision/nvxie/danxie/2/171012_05e2cg55akfc6a6b3gglk56j088j7_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/2/171012_05e2cg55akfc6a6b3gglk56j088j7_800x800.jpg'),
(null,82,'黑灰色','../image/subdivision/nvxie/danxie/2/171012_1hj60a0dhfi1j65gc8356kf3c7hal_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/2/171012_1hj60a0dhfi1j65gc8356kf3c7hal_800x800.jpg'),
(null,82,'紫红色','../image/subdivision/nvxie/danxie/2/171012_61daced4k212e8f23e1gl48jfj6ld_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/2/171012_61daced4k212e8f23e1gl48jfj6ld_800x800.jpg'),
(null,83,'黑色','../image/subdivision/nvxie/danxie/3/171005_4ijj7e7hik0gigd9b194lh1c2dh11_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/3/171005_4ijj7e7hik0gigd9b194lh1c2dh11_750x750.jpg'),
(null,83,'米色','../image/subdivision/nvxie/danxie/3/171005_6ja08ha2ajg7dhj3680kc3i5cggfc_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/3/171005_6ja08ha2ajg7dhj3680kc3i5cggfc_750x750.jpg'),
(null,83,'粉色','../image/subdivision/nvxie/danxie/3/171005_8dl22iejccdc794j312e566ehk6d6_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/3/171005_8dl22iejccdc794j312e566ehk6d6_750x750.jpg'),
(null,84,'黑色','../image/subdivision/nvxie/danxie/4/170923_30l78fe9eg37922915ha5ce1akl1l_687x735.png_100x100.jpg','../image/subdivision/nvxie/danxie/4/170923_30l78fe9eg37922915ha5ce1akl1l_687x735.png'),
(null,84,'粉红色','../image/subdivision/nvxie/danxie/4/170923_41i1h1hb23dhcc81ga3kelj92265a_713x700.png_100x100.jpg','../image/subdivision/nvxie/danxie/4/170923_41i1h1hb23dhcc81ga3kelj92265a_713x700.png'),
(null,84,'焦糖色','../image/subdivision/nvxie/danxie/4/170923_10l52ek021jl7kigfk02gej278fc8_735x744.png_100x100.jpg','../image/subdivision/nvxie/danxie/4/170923_10l52ek021jl7kigfk02gej278fc8_735x744.png'),
(null,85,'黑色','../image/subdivision/nvxie/danxie/5/170920_3g08h7i6kl3be402ga2ekh424b59g_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/5/170920_3g08h7i6kl3be402ga2ekh424b59g_750x750.jpg'),
(null,85,'卡其色','../image/subdivision/nvxie/danxie/5/170920_7jdejd1b04eh76ki64fhk3l737a1d_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/5/170920_7jdejd1b04eh76ki64fhk3l737a1d_750x750.jpg'),
(null,86,'灰色','../image/subdivision/nvxie/danxie/6/170701_7bbkl4826ejgld1j9fefb0ghc18h8_970x970.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/6/170701_7bbkl4826ejgld1j9fefb0ghc18h8_970x970.jpg'),
(null,86,'黑色','../image/subdivision/nvxie/danxie/6/170701_2fck3b08a7cbdd5k26bdee2fj7792_970x970.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/6/170701_2fck3b08a7cbdd5k26bdee2fj7792_970x970.jpg'),
(null,87,'棕色','../image/subdivision/nvxie/danxie/7/171022_77cij78986gf1gab7k1j6lh087f3g_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/7/171022_77cij78986gf1gab7k1j6lh087f3g_640x960.jpg'),
(null,87,'米色','../image/subdivision/nvxie/danxie/7/171022_59cf15la47jhhg32aaci07iff4g0d_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/7/171022_59cf15la47jhhg32aaci07iff4g0d_640x960.jpg'),
(null,88,'黑色','../image/subdivision/nvxie/danxie/8/171013_37b13a358dea29268bb90kbchh3e4_640x900.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/8/171013_37b13a358dea29268bb90kbchh3e4_640x900.jpg'),
(null,88,'卡其色','../image/subdivision/nvxie/danxie/8/171013_264l9b521a4j371b0j03dedl28b80_640x900.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/8/171013_264l9b521a4j371b0j03dedl28b80_640x900.jpg'),
(null,89,'灰色','../image/subdivision/nanxie/yundong/1/171003_0505j5a7969f4bgd7g018lchgj0d3_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/1/171003_0505j5a7969f4bgd7g018lchgj0d3_800x800.jpg'),
(null,89,'黑色','../image/subdivision/nanxie/yundong/1/171003_6cckl72289ecc06fgahbi1fg1fjjg_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/1/171003_6cckl72289ecc06fgahbi1fg1fjjg_800x800.jpg'),
(null,89,'浅棕色','../image/subdivision/nanxie/yundong/1/171003_52al48325hha2h35i43lg1g5a94fh_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/1/171003_52al48325hha2h35i43lg1g5a94fh_800x800.jpg'),
(null,89,'深棕色','../image/subdivision/nanxie/yundong/1/171003_47c59129d8dhble5e5c1ce7637id1_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/1/171003_47c59129d8dhble5e5c1ce7637id1_800x800.jpg'),
(null,90,'黑色','../image/subdivision/nanxie/yundong/2/171005_8a6fe3ei2cjfdf3j7i0ll2clfb7f1_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/2/171005_8a6fe3ei2cjfdf3j7i0ll2clfb7f1_800x800.jpg'),
(null,90,'红色','../image/subdivision/nanxie/yundong/2/171019_61cc1idah3hjfc8g8dgcd7e31ba2f_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/2/171019_61cc1idah3hjfc8g8dgcd7e31ba2f_800x800.jpg'),
(null,91,'灰色','../image/subdivision/nanxie/yundong/3/170831_1fii8570i6l9cldk5g5j2eih574ak_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/3/170831_1fii8570i6l9cldk5g5j2eih574ak_640x960.jpg'),
(null,91,'黑色','../image/subdivision/nanxie/yundong/3/170814_6d2aj32labedkj99a57i9h0g0i83c_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/3/170814_6d2aj32labedkj99a57i9h0g0i83c_640x960.jpg'),
(null,91,'白色','../image/subdivision/nanxie/yundong/3/170831_13h5e3l4b0df1kl25bb43f09j6def_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/3/170831_13h5e3l4b0df1kl25bb43f09j6def_640x960.jpg'),
(null,92,'黑色','../image/subdivision/nanxie/yundong/4/171005_2j26bk1ai247hkb48j00jbaa26fcb_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/4/171005_2j26bk1ai247hkb48j00jbaa26fcb_640x960.jpg'),
(null,92,'灰色','../image/subdivision/nanxie/yundong/4/171005_34bi656fb4jacd57jk5dkd0e7g37l_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/4/171005_34bi656fb4jacd57jk5dkd0e7g37l_640x960.jpg'),
(null,92,'卡其色','../image/subdivision/nanxie/yundong/4/171005_49b907f484f3jd2k6hf83a7ea13fa_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/4/171005_49b907f484f3jd2k6hf83a7ea13fa_640x960.jpg'),
(null,92,'红色','../image/subdivision/nanxie/yundong/4/171005_3g6i3k655e215j6j33ckl41lg8c9g_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/4/171005_3g6i3k655e215j6j33ckl41lg8c9g_640x960.jpg'),
(null,93,'黑红','../image/subdivision/nanxie/yundong/5/170720_474l3dk0gd43j627254c88hchkjgi_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/5/170720_474l3dk0gd43j627254c88hchkjgi_640x960.jpg'),
(null,93,'黑白','../image/subdivision/nanxie/yundong/5/170720_8eg3h0l1f83ll116b0i2k4fld36e9_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/5/170720_8eg3h0l1f83ll116b0i2k4fld36e9_640x960.jpg'),
(null,93,'灰橘','../image/subdivision/nanxie/yundong/5/170720_6hllkgd5d92lkbc7aeldib4j1b5f9_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/5/170720_6hllkgd5d92lkbc7aeldib4j1b5f9_640x960.jpg'),
(null,94,'黑色','../image/subdivision/nanxie/yundong/6/170818_5kia4253a1k984j8l0gki1g1e52c9_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/6/170818_5kia4253a1k984j8l0gki1g1e52c9_800x800.jpg'),
(null,94,'白色','../image/subdivision/nanxie/yundong/6/170818_63h1k2li71e40ca3ja6kdhg87jhgj_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/6/170818_63h1k2li71e40ca3ja6kdhg87jhgj_800x800.jpg'),
(null,95,'黑色','../image/subdivision/nanxie/yundong/7/170829_4j3611f51482e5i74745ffg8eg97b_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/7/170829_4j3611f51482e5i74745ffg8eg97b_800x800.jpg'),
(null,95,'灰红色','../image/subdivision/nanxie/yundong/7/170829_15haifg2lfej3b83af35gd2a6e3ea_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/7/170829_15haifg2lfej3b83af35gd2a6e3ea_800x800.jpg'),
(null,95,'黑绿色','../image/subdivision/nanxie/yundong/7/170829_4h43lg6a913ck14hl4ei2g6ff0j52_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/7/170829_4h43lg6a913ck14hl4ei2g6ff0j52_800x800.jpg'),
(null,96,'酒红色','../image/subdivision/nanxie/yundong/8/170730_221die3ih37fh4660lg4f9h9k63g3_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/8/170730_221die3ih37fh4660lg4f9h9k63g3_800x800.jpg'),
(null,96,'灰红色','../image/subdivision/nanxie/yundong/8/170730_47e6g8214ld4l4ek5kk3g0bc722lh_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/8/170730_47e6g8214ld4l4ek5kk3g0bc722lh_800x800.jpg'),
(null,97,'灰色','../image/subdivision/nanxie/nanxue/1/171027_505ah9dfg2iha17gfa5cdbh7ia135_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/1/171027_505ah9dfg2iha17gfa5cdbh7ia135_640x960.jpg'),
(null,97,'黑色','../image/subdivision/nanxie/nanxue/1/171027_40le043dehl293eg9edh5da8jac4j_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/1/171027_40le043dehl293eg9edh5da8jac4j_640x960.jpg'),
(null,97,'棕色','../image/subdivision/nanxie/nanxue/1/171027_0icckc65hjh2d1hb5h985elc5h3la_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/1/171027_0icckc65hjh2d1hb5h985elc5h3la_640x960.jpg'),
(null,98,'黑色','../image/subdivision/nanxie/nanxue/2/170926_2ec40ifge37edgkc5l4ki6aca6a62_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/2/170926_2ec40ifge37edgkc5l4ki6aca6a62_800x800.jpg'),
(null,98,'棕色','../image/subdivision/nanxie/nanxue/2/170926_3gbc3f19h1k1f24h09e53503kg7ij_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/2/170926_3gbc3f19h1k1f24h09e53503kg7ij_800x800.jpg'),
(null,99,'黑色','../image/subdivision/nanxie/nanxue/3/170921_6d2ikc2g3l2aiia038hg986lc341j_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/3/170921_6d2ikc2g3l2aiia038hg986lc341j_800x800.jpg'),
(null,99,'灰色','../image/subdivision/nanxie/nanxue/3/170921_449ad4820ek8l9hb5ijfahd090j78_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/3/170921_449ad4820ek8l9hb5ijfahd090j78_800x800.jpg'),
(null,99,'卡其色','../image/subdivision/nanxie/nanxue/3/170921_18211a56i01lb481fb2i3cd18dg6e_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/3/170921_18211a56i01lb481fb2i3cd18dg6e_800x800.jpg'),
(null,100,'灰色','../image/subdivision/nanxie/nanxue/4/170925_0hck8kjkga1b97i7g86fgc00c53al_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/4/170925_0hck8kjkga1b97i7g86fgc00c53al_800x800.jpg'),
(null,100,'黑色','../image/subdivision/nanxie/nanxue/4/170925_27gl5je54j8lc31e2j7g9f500l09h_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/4/170925_27gl5je54j8lc31e2j7g9f500l09h_800x800.jpg'),
(null,100,'土黄色','../image/subdivision/nanxie/nanxue/4/170925_6hlfc04ik8jha04g3dje1ejkb7gia_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/4/170925_6hlfc04ik8jha04g3dje1ejkb7gia_800x800.jpg'),
(null,101,'白色','../image/subdivision/nanxie/nanxue/5/170927_1l2dhafkeaji96lf149gl7ek3di15_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/5/170927_1l2dhafkeaji96lf149gl7ek3di15_800x800.jpg'),
(null,101,'黑色','../image/subdivision/nanxie/nanxue/5/170927_17lc3k5jgd7lg2cll0b234c0i775l_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/5/170927_17lc3k5jgd7lg2cll0b234c0i775l_800x800.jpg'),
(null,101,'卡其色','../image/subdivision/nanxie/nanxue/5/170927_74h5bdjcaje70h2344hl8cjfcb81k_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/5/170927_74h5bdjcaje70h2344hl8cjfcb81k_800x800.jpg'),
(null,102,'白色','../image/subdivision/nanxie/nanxue/6/171001_7kg514d81fa66bjak9agddghf8c52_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/6/171001_7kg514d81fa66bjak9agddghf8c52_640x960.jpg'),
(null,102,'黑色','../image/subdivision/nanxie/nanxue/6/171001_2902l9371hi47abc72lgkl0c0lej9_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/6/171001_2902l9371hi47abc72lgkl0c0lej9_640x960.jpg'),
(null,103,'白色','../image/subdivision/nanxie/nanxue/7/170805_6dfkk84ale96a9hdc55a4624b56g5_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/7/170805_6dfkk84ale96a9hdc55a4624b56g5_800x800.jpg'),
(null,103,'黑色','../image/subdivision/nanxie/nanxue/7/170805_5fhh42032d6534aa1klk89d02h81f_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/7/170805_5fhh42032d6534aa1klk89d02h81f_800x800.jpg'),
(null,103,'黑白色','../image/subdivision/nanxie/nanxue/7/170805_818jj13bcgeekhkk46ja543d71j02_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/7/170805_818jj13bcgeekhkk46ja543d71j02_800x800.jpg'),
(null,103,'红白色','../image/subdivision/nanxie/nanxue/7/170805_43k230cbd3ib6bdbe2da88ia4b8h7_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/7/170805_43k230cbd3ib6bdbe2da88ia4b8h7_800x800.jpg'),
(null,104,'黑色','../image/subdivision/nanxie/nanxue/8/83224545_27359i7d857bej14950lgga69e4lj_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/8/83224545_27359i7d857bej14950lgga69e4lj_800x800.jpg'),
(null,104,'纯黑色','../image/subdivision/nanxie/nanxue/8/171016_0bg4cb8k60d5jgkcfa18k98c4aebf_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/8/171016_0bg4cb8k60d5jgkcfa18k98c4aebf_800x800.jpg'),
(null,105,'棉袄','../image/subdivision/quanshen/1/171026_563bladce50hl2dl80k45fdech649_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/1/171026_563bladce50hl2dl80k45fdech649_640x960.jpg'),
(null,106,'外套','../image/subdivision/quanshen/2/171005_2jiglee4ddbc7j3ljj465fcb9ifgj_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/2/171005_4eaj5k21l0935j21g42ddgh2j5ikb_640x960.jpg_468x468.jpg'),
(null,107,'毛衣+半身裙','../image/subdivision/quanshen/3/171024_20gdafj5di3al54c730g4ch0eae65_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/3/171024_20ch66geii96g4320c01jbd5d026k_640x960.jpg_468x468.jpg'),
(null,108,'巧克力格子外套+杏色毛衣+黑色裤子','../image/subdivision/quanshen/4/171030_6blc9fbb26ib17idg74a2l50jd9c1_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/4/171030_44bi776bh7831a1fdbe3i783f9l22_640x960.jpg_468x468.jpg'),
(null,109,'上衣+裙子','../image/subdivision/quanshen/5/170927_0ekjlh75c4d790l8kbl5kl1ia0fk3_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/5/170927_0ekjlh75c4d790l8kbl5kl1ia0fk3_640x960.jpg'),
(null,110,'白色','../image/subdivision/quanshen/6/171025_30g7j7fc60a5le3ih4jllccj309h9_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/6/171025_30g7j7fc60a5le3ih4jllccj309h9_640x960.jpg'),
(null,110,'浅灰','../image/subdivision/quanshen/6/171025_69ig3hcjihhjji070071249bfc0d0_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/6/171025_69ig3hcjihhjji070071249bfc0d0_640x960.jpg'),
(null,110,'黑色','../image/subdivision/quanshen/6/171025_09332a6f70ad0kjej95c3afag83d6_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/6/171025_09332a6f70ad0kjej95c3afag83d6_640x960.jpg'),
(null,111,'套装','../image/subdivision/quanshen/7/170927_1gbbb448fg6ebkd484eaj5f3cgfeb_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/7/170927_1gbbb448fg6ebkd484eaj5f3cgfeb_640x960.jpg'),
(null,112,'红色套装','../image/subdivision/quanshen/8/171023_5h1i3b2jcga061f9ch11g3b60afd2_750x812.jpg_100x100.jpg','../image/subdivision/quanshen/8/171023_5h1i3b2jcga061f9ch11g3b60afd2_750x812.jpg'),
(null,112,'杏色套装','../image/subdivision/quanshen/8/171023_4gd64lfh48d9ii5h0gja5kg8j0cg7_750x786.jpg_100x100.jpg','../image/subdivision/quanshen/8/171023_4gd64lfh48d9ii5h0gja5kg8j0cg7_750x786.jpg'),
(null,113,'白色套装','../image/subdivision/quanshen/9/170821_7b37b2f7lifg6g74101a5cbb66cd5_720x1080.jpg_100x100.jpg','../image/subdivision/quanshen/9/170821_7b37b2f7lifg6g74101a5cbb66cd5_720x1080.jpg'),
(null,113,'杏紫套装','../image/subdivision/quanshen/9/170821_7b37b2f7lifg6g74101a5cbb66cd5_720x1080.jpg_100x1001.jpg','../image/subdivision/quanshen/9/170821_7h7h192jj02j3j46daf0587cd0k02_640x960.jpg_468x468.jpg'),
(null,114,'套装','../image/subdivision/quanshen/10/171028_0hjibki51cjgjcd52d7a86klkaj04_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/10/171028_0hjibki51cjgjcd52d7a86klkaj04_640x960.jpg'),
(null,115,'套装','../image/subdivision/quanshen/11/171026_2eb7062g46541ldg6agg333hfkj85_640x960.jpg','../image/subdivision/quanshen/11/171026_2eb7062g46541ldg6agg333hfkj85_640x960 (1).jpg'),
(null,116,'套装','../image/subdivision/quanshen/12/171027_572k415eb7kih5jlh9ci6897ee900_476x955.jpg','../image/subdivision/quanshen/12/171027_08i0171l7ee8e018hgji1728b1i3f_640x960.jpg_468x468.jpg');






#商品详情图片表
CREATE TABLE mg_laptop_detail_pic(
	did        INT	 PRIMARY KEY AUTO_INCREMENT,     #ID
	laptop_id        INT NOT NULL ,     #与商品详情表ID相连
	detail_small_pic       VARCHAR(1024)   NOT NULL DEFAULT "",   #商品详细图片小图    大图与小图对应，一张大图一张小图
	detail_big_pic       VARCHAR(1024)   NOT NULL DEFAULT ""   #商品详细图片大图
);

INSERT INTO  mg_laptop_detail_pic  VALUES
	(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_04lgj13036dafe783d13ej9ig2022_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_04lgj13036dafe783d13ej9ig2022_640x960.jpg_468x468.jpg'),
	(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_5fjkd3bc0ed7gk770h2khke1jc9ia_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_5fjkd3bc0ed7gk770h2khke1jc9ia_640x960.jpg_468x468.jpg'),
	(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_5ghkgl9d2higakbgf88a277e55khg_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_5ghkgl9d2higakbgf88a277e55khg_640x960.jpg_468x468.jpg'),
	(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_00ja18clba2ekh3j98jhl1aga5gh4_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_00ja18clba2ekh3j98jhl1aga5gh4_640x960.jpg_468x468.jpg'),
	(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_39bc4ide9aij047jakdk9bl6432a7_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_39bc4ide9aij047jakdk9bl6432a7_640x960.jpg'),
	(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_2460igedhif5854bd8b3gj4cf7g5d_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_2460igedhif5854bd8b3gj4cf7g5d_640x960.jpg_468x468.jpg'),
	(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_2h58hbcf103j9l5l36a524l0987d2_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_2h58hbcf103j9l5l36a524l0987d2_640x960.jpg_468x468.jpg'),
	(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_0ged83il255blh1ajl89hjk1ij060_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_0ged83il255blh1ajl89hjk1ij060_640x960.jpg_468x468.jpg'),
	(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/171025_6jke8cgf92b9527echd9fa9d3gb25_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/171025_6jke8cgf92b9527echd9fa9d3gb25_640x960.jpg'),
	(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/170913_05e698ccaf628l07d7jd3ijdl8a85_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/170913_82g9fi5510464lji552ble76b6613_640x960.jpg_468x468.jpg'),
	(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_0e3a3d2e60d1k189cib3e9e7a35k5_800x800.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_0e3a3d2e60d1k189cib3e9e7a35k5_800x800.jpg'),
	(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_224351i4ecka216lklc830h8d6ka7_800x800.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_224351i4ecka216lklc830h8d6ka7_800x800.jpg'),
	(null,4,'../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_295e2gcjc46afgb8id91gi3ldae18_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_6241ehg5018427hh3kfcf8j376ihl_640x960.jpg_468x468.jpg'),
	(null,4,'../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_060ackcgghg2455kl06kce7hf8e3h_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_060ackcgghg2455kl06kce7hf8e3h_640x960.jpg_468x468.jpg'),
	(null,4,'../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_383k9514h5f051299jdfkaj3k3hec_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_383k9514h5f051299jdfkaj3k3hec_640x960.jpg_468x468.jpg'),
	(null,5,'../image/subdivision/nvzhuang/shangyi/fengyi/5/171023_3h554e0fb1cfbff36d816h139g30j_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/5/171023_3h554e0fb1cfbff36d816h139g30j_640x960.jpg'),
	(null,5,'../image/subdivision/nvzhuang/shangyi/fengyi/5/171023_14de46ake876b5eaff930e3a5i7h1_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/5/171023_14de46ake876b5eaff930e3a5i7h1_640x960.jpg'),
	(null,6,'../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_2d6499leaj4if7fiff1jbg4cc85fi_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_2d6499leaj4if7fiff1jbg4cc85fi_640x960.jpg'),
	(null,6,'../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_5j85e3i71cace97k49a2hjc2icfie_1200x1200.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_5j85e3i71cace97k49a2hjc2icfie_1200x1200.jpg_468x468.jpg'),
	(null,6,'../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_8ak9h4bhl6hed2b45g2lhj4lkdf2l_800x800.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_8ak9h4bhl6hed2b45g2lhj4lkdf2l_800x800.jpg_468x468.jpg'),
	(null,7,'../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_4335ij101abjck83id5al8cbe6ei3_750x860.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/87910124_4335ij101abjck83id5al8cbe6ei3_750x860.jpg'),
	(null,7,'../image/subdivision/nvzhuang/shangyi/fengyi/7/170907_22i07hk376g7jik9d3958e20i51gg_640x832.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/170907_22i07hk376g7jik9d3958e20i51gg_640x832.jpg_468x468.jpg'),
	(null,7,'../image/subdivision/nvzhuang/shangyi/fengyi/7/170907_7agb2aehdh099e01l28e4l55c207k_640x832.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/7/170907_7agb2aehdh099e01l28e4l55c207k_640x832.jpg_468x468.jpg'),
	(null,8,'../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_71851808156c5h47j92589c4ef980_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_71851808156c5h47j92589c4ef980_640x960.jpg'),
	(null,8,'../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_806h13ak3al7ddb61d5hi32ia303b_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_806h13ak3al7ddb61d5hi32ia303b_640x960.jpg'),
	(null,9,'../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_082jghc069kj36lbjg1b3bb87dl37_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_082jghc069kj36lbjg1b3bb87dl37_640x960.jpg'),
	(null,9,'../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_4g244l2glgf581g2g641kl02bc3gj_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_4g244l2glgf581g2g641kl02bc3gj_640x960.jpg_468x468.jpg'),
	(null,10,'../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_80chdc2l8l4dkl3g6jf3k24503lba_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_6a19050472gk3hfa8cjb326eie75a_640x960.jpg_468x468.jpg'),
	(null,10,'../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_4602egh2gad4c5g129dggh6i68a4g_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_4602egh2gad4c5g129dggh6i68a4g_640x960.jpg_468x468.jpg'),
	(null,10,'../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_5a8kbdk797dk86e4dh8ecd157h3cg_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_5a8kbdk797dk86e4dh8ecd157h3cg_640x960.jpg_468x468.jpg'),
	(null,11,'../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_67jc8icld2k4l3fj53kadbb3cce22_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_69dhadiegcfhk88k14ihi43l5k7jj_640x960.jpg_468x468.jpg'),
	(null,11,'../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_1a2kb9leag73ac49e2db97hg07450_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_1a2kb9leag73ac49e2db97hg07450_640x960.jpg_468x468.jpg'),
	(null,12,'../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ifqtqnlcgqydczlghazdambqgyyde_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/4/111245878_ifrtqnrzgi2dczlghazdambqhayde_640x960.jpg_468x468.jpg'),
	(null,12,'../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ie4gkyzrguydczlghazdambqgiyde_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ie4gkyzrguydczlghazdambqgiyde_640x960.jpg_468x468.jpg'),
	(null,12,'../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ie4dqzlbguydczlghazdambqgiyde_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ie4dqzlbguydczlghazdambqgiyde_640x960.jpg_468x468.jpg'),
	(null,13,'../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_5dh6cdakcca0jgg4jed71k8ic5ie6_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_53ee1hlj7gj7b0de06ce8293ff861_640x960.jpg_468x468.jpg'),
	(null,13,'../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_0lkb5gb249il3j9k90d33bclh435h_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_0lkb5gb249il3j9k90d33bclh435h_640x640.jpg'),
	(null,13,'../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_56ljf5l6a7gclei5ig5457gih47h8_640x640.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_56ljf5l6a7gclei5ig5457gih47h8_640x640.jpg'),
	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170324_7lh2f7dh538gfe2ihaaf94cae2357_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/6/170324_4ca48icc1d313lelchd52cecdd7i6_640x960.jpg_468x468.jpg'),
	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_36d8699hee9e72ehgl6570gi7b7bg_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/6/170328_2akk82059i8bkik5ea3dh5h7jk6k2_640x960.jpg_468x468.jpg'),
	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_10c24b8c33jj0iea9i13ee8i5dc63_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_10c24b8c33jj0iea9i13ee8i5dc63_640x960.jpg_468x468.jpg'),
	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_3e1e3edh1841d3j245k77g3b3g2ac_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_3e1e3edh1841d3j245k77g3b3g2ac_640x960.jpg_468x468.jpg'),
	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_8382aaf5gac02b8efb420eb2dje8i_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_19209c5c98ab7e4j3ead3ef0aekke_640x960.jpg_468x468.jpg'),
	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_5hb41a7bghad4g1he746gdh4hfl47_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_5hb41a7bghad4g1he746gdh4hfl47_640x960.jpg_468x468.jpg'),
	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_0j2khgkb0jgj5digbd9gkhjjkgk2d_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_0j2khgkb0jgj5digbd9gkhjjkgk2d_640x960.jpg_468x468.jpg'),
	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_2c92b3hh90j4hlli3ici31c6g0920_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_2c92b3hh90j4hlli3ici31c6g0920_640x960.jpg_468x468.jpg'),
	(null,16,'../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_6l9ak0f78lh14eb4hjaalf7g7ajk4_641x1015.png_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_44ah9ld522fek8ci51k4gjjlhk8eh_641x1015.png_468x468.jpg'),
	(null,16,'../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_6j58egh044hi9e06ik8fbf9423k0j_640x1014.png_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_6j58egh044hi9e06ik8fbf9423k0j_640x1014.png_468x468.jpg'),
	(null,16,'../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_59l50hc6d8h9gcgjg58g15hbdhe6i_681x1012.png_100x100.jpg','../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_59l50hc6d8h9gcgjg58g15hbdhe6i_681x1012.png_468x468.jpg'),
	(null,17,'../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_875cg6hj2fecl0e5aihcfk8j939d1_800x1200.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_7ca5ga14j8dd8kfkjd02d7k99if4h_800x1200.jpg_468x468.jpg'),
	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_7l73cbl8c4c564a7lf85la2hh30fg_750x1125.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_0dbi4jfdch388g117l16edc5bb87d_640x960.jpg_468x468.jpg'),
	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_46f4fgdea4i46hfkja7kbdf2j1aa1_750x1125.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_46f4fgdea4i46hfkja7kbdf2j1aa1_750x1125.jpg_468x468.jpg'),
	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_7l73cbl8c4c564a7lf85la2hh30fg_750x1125.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_7l73cbl8c4c564a7lf85la2hh30fg_750x1125.jpg_468x468.jpg'),
	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_78ha29i3e6fda2jadg6b69lca8adh_750x1125.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_78ha29i3e6fda2jadg6b69lca8adh_750x1125.jpg_468x468.jpg'),
	(null,19,'../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_3b0b3ebg3kg9141i3hg855li500l3_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_3b0b3ebg3kg9141i3hg855li500l3_640x960.jpg'),
	(null,20,'../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170507_6j66j28kaaidc0k638idhji658j98_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170507_6j66j28kaaidc0k638idhji658j98_640x960.jpg'),
	(null,20,'../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_4chla26ga7789579a57171kj5a5jb_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_4chla26ga7789579a57171kj5a5jb_640x960.jpg_468x468.jpg'),
	(null,20,'../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_27aj58cie695hi0960b3kklk2ddh6_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_27aj58cie695hi0960b3kklk2ddh6_640x960.jpg_468x468.jpg'),
	(null,21,'../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_8c7j3i65c4f7742hahe410gj1k0gb_640x748.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_8c7j3i65c4f7742hahe410gj1k0gb_640x748.jpg'),
	(null,21,'../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_4ed03ie9d7b0a8dhjeg8686i113he_640x785.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_4ed03ie9d7b0a8dhjeg8686i113he_640x785.jpg'),
	(null,22,'../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_24a5dlfcif06jgd0a1bjhkdd95cig_640x959.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_24a5dlfcif06jgd0a1bjhkdd95cig_640x959.jpg'),
	(null,22,'../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_5kkeaifgeif2c4bgg95i6i38keek7_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_5kkeaifgeif2c4bgg95i6i38keek7_640x960.jpg'),
	(null,22,'../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_777810j7d0gk5a79b99i22jk56fc0_640x959.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_777810j7d0gk5a79b99i22jk56fc0_640x959.jpg'),
	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_324f7f77d617389da1jgaae2616g5_750x750.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_6251bc71175331e740jdiel47f12j_640x960.jpg_468x468.jpg'),
	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_81ii9ehg3i831282jhha76deg90e2_750x750.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_55h1gf4cfb8j7lig1851a8g1l5lci_1200x1200.jpg_468x468.jpg'),
	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_51832f8k74e5k9b93h2f7ic5bl082_1200x1200.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_51832f8k74e5k9b93h2f7ic5bl082_1200x1200.jpg_468x468.jpg'),
	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_588jla4eg9aa6b2d2l90l65j4ajjl_750x750.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_588jla4eg9aa6b2d2l90l65j4ajjl_750x750.jpg_468x468.jpg'),
	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_24h6i78jdiah3lgg603hfc9jgjk7k_750x750.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_24h6i78jdiah3lgg603hfc9jgjk7k_750x750.jpg_468x468.jpg'),
	(null,24,'../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_1behcclh064e485d2a2f7j99hl189_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_1behcclh064e485d2a2f7j99hl189_640x960.jpg'),
	(null,24,'../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_41k4gf5hla4jacf2h8c10dfef95h6_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_41k4gf5hla4jacf2h8c10dfef95h6_640x960.jpg'),
	(null,24,'../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_50l5ag1193gg2li6e730lae291j49_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_50l5ag1193gg2li6e730lae291j49_640x960.jpg'),
	(null,25,'../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_33fdi0928d5dalii0fjdic52e99gf_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_33fdi0928d5dalii0fjdic52e99gf_640x960.jpg_468x468.jpg'),
	(null,26,'../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_2e0244ke1j9e7e1kddeac933c2d01_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_2e0244ke1j9e7e1kddeac933c2d01_640x960.jpg_468x468.jpg'),
	(null,26,'../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_70e0lb6al1j9d6kcchelc6ac3i051_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_70e0lb6al1j9d6kcchelc6ac3i051_640x960.jpg_468x468.jpg'),
	(null,26,'../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_74j50hkc68fe0g4e658g95548l9hd_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_74j50hkc68fe0g4e658g95548l9hd_640x960.jpg_468x468 (1).jpg'),
	(null,27,'../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_59f80jedle64ja167h2ijf3163g79_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_59f80jedle64ja167h2ijf3163g79_640x960.jpg_468x468.jpg'),
	(null,27,'../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_41gl3c3j30fd244lbg45e1bcjj74b_640x960.jpg_468x468.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_41gl3c3j30fd244lbg45e1bcjj74b_640x960.jpg_468x468 (1).jpg'),
	(null,27,'../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_7709be15jhif2i79h719f4j81klc5_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_7709be15jhif2i79h719f4j81klc5_640x960.jpg_468x468.jpg'),
	(null,28,'../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_7libbka8ih15161213dagh7eb9h16_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_110fh96gh98kf7ael3icdd00j15g6_640x960.jpg_468x468.jpg'),
	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_616b301h6h7i088lecjhdf98g9jie_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_616b301h6h7i088lecjhdf98g9jie_640x960.jpg_468x468 (1).jpg'),
	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_158hgej803i09330j29fghj4i8612_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_158hgej803i09330j29fghj4i8612_640x960.jpg_468x468.jpg'),
	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_344ih3c23e20glc00g32dl6je1d2l_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_344ih3c23e20glc00g32dl6je1d2l_640x960.jpg_468x468.jpg'),
	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_2h18bb614hje2ccj8hk7ccgab0d3h_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_2h18bb614hje2ccj8hk7ccgab0d3h_640x960.jpg_468x468.jpg'),
	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_393gl7jjad9045hficfigd8dblf6b_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_393gl7jjad9045hficfigd8dblf6b_640x960.jpg_468x468 (1).jpg'),
	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_27hg76edl4fklc7j3belfdbee6804_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_27hg76edl4fklc7j3belfdbee6804_640x960.jpg_468x468.jpg'),
	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_0ajjc21i70h69a51226c62fjie88b_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_0ajjc21i70h69a51226c62fjie88b_640x960.jpg_468x468.jpg'),
	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_090a4kjf2f95hf65hka1lgc8f7ahk_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_090a4kjf2f95hf65hka1lgc8f7ahk_640x960.jpg_468x468.jpg'),
	(null,31,'../image/subdivision/nvzhuang/xiayi/kuzi/7/170930_75a4gji95cbh7j41i468kied1hkj4_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/7/170930_75a4gji95cbh7j41i468kied1hkj4_640x960.jpg_468x468 (1).jpg'),
	(null,31,'../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_320l37fk710998ef719ici09c6ggc_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_320l37fk710998ef719ici09c6ggc_640x960.jpg_468x468.jpg'),
	(null,31,'../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_89ji98akg7fc669ki2id52glljhke_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_89ji98akg7fc669ki2id52glljhke_640x960.jpg_468x468.jpg'),
	(null,32,'../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_6f26eia7e5k94e07e3658e2kfb248_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_6f26eia7e5k94e07e3658e2kfb248_640x960.jpg_468x468.jpg'),
	(null,32,'../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_58l00a9jg40j80gcc19ia4c4lfaed_640x960.jpg_100x100.jpg','../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_58l00a9jg40j80gcc19ia4c4lfaed_640x960.jpg_468x468.jpg'),
	(null,33,'../image/subdivision/nanzhuang/mianao/1/170921_3cbe3ah17hdech39hg21ga3gfj2hi_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/1/170921_3cbe3ah17hdech39hg21ga3gfj2hi_640x960.jpg_468x468 (1).jpg'),
	(null,33,'../image/subdivision/nanzhuang/mianao/1/170921_5egc2004b7gcb4b8k6ll01a07f2h4_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/1/170921_5egc2004b7gcb4b8k6ll01a07f2h4_800x800.jpg_468x468.jpg'),
	(null,33,'../image/subdivision/nanzhuang/mianao/1/170921_5ajl67le5ch5hjd62a4if4gbc28j8_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/1/170921_5ajl67le5ch5hjd62a4if4gbc28j8_800x800.jpg_468x468.jpg'),
	(null,34,'../image/subdivision/nanzhuang/mianao/2/171024_6h40cgf1065d360j29d03kcf4jfca_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/2/171024_6h40cgf1065d360j29d03kcf4jfca_800x800.jpg'),
	(null,35,'../image/subdivision/nanzhuang/mianao/3/171023_14bk949i603e72gfjad86i661841k_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/3/171023_14bk949i603e72gfjad86i661841k_640x960.jpg_468x468.jpg'),
	(null,35,'../image/subdivision/nanzhuang/mianao/3/171023_24a6d54264ljhe608199a285b1cej_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/3/171023_24a6d54264ljhe608199a285b1cej_640x960.jpg_468x468.jpg'),
	(null,35,'../image/subdivision/nanzhuang/mianao/3/171023_1180l18fd85bc7gc543jgdckak7if_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/3/171023_1180l18fd85bc7gc543jgdckak7if_640x960.jpg_468x468.jpg'),
	(null,36,'../image/subdivision/nanzhuang/mianao/4/171019_12286hk8280dbf87b6j7g4f078bad_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/4/171019_12286hk8280dbf87b6j7g4f078bad_640x960.jpg_468x468.jpg'),
	(null,36,'../image/subdivision/nanzhuang/mianao/4/171019_731fif5il0c82f1ae2b595ljha13i_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/4/171019_731fif5il0c82f1ae2b595ljha13i_640x960.jpg_468x468.jpg'),
	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_2g8cg3ffjkf29cak6dga8j93d4fa2_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/5/171018_3ilc92h8737hk5jebd9ff940dfddh_640x960.jpg_468x468.jpg'),
	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_3i84a0ffk9ki58b4keha4jda2k03e_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/5/171018_3i84a0ffk9ki58b4keha4jda2k03e_800x800.jpg'),
	(null,38,'../image/subdivision/nanzhuang/mianao/6/171017_2lb5j6fjalg5865fd162j8lae0k6f_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/6/171017_2lb5j6fjalg5865fd162j8lae0k6f_800x800.jpg'),
	(null,39,'../image/subdivision/nanzhuang/mianao/7/171017_1a7bb73gl39d5h1044g4b168ch8fe_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/7/171017_1a7bb73gl39d5h1044g4b168ch8fe_640x960.jpg'),
	(null,39,'../image/subdivision/nanzhuang/mianao/7/171017_3llkl6i45fdfl7be2bf95b579f4h0_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/7/171017_3llkl6i45fdfl7be2bf95b579f4h0_640x960.jpg'),
	(null,39,'../image/subdivision/nanzhuang/mianao/7/171017_4lfb5aeadladak06h7l0djdi5dg03_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/7/171017_4lfb5aeadladak06h7l0djdi5dg03_640x960.jpg'),
	(null,40,'../image/subdivision/nanzhuang/mianao/8/171017_029kl976kakdhe7le23ei46hgdid8_1500x1500.jpg_100x100.jpg','../image/subdivision/nanzhuang/mianao/8/171017_029kl976kakdhe7le23ei46hgdid8_1500x1500.jpg'),
	(null,41,'../image/subdivision/nanzhuang/Tx/1/170905_4f3l3dck4b1h1c2hh2j9ffh901jh1_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/1/170905_4f3l3dck4b1h1c2hh2j9ffh901jh1_800x800.jpg'),
	(null,42,'../image/subdivision/nanzhuang/Tx/2/170920_3b06hk6b8jcdeic11ghc4lh120l9f_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/2/170920_3b06hk6b8jcdeic11ghc4lh120l9f_800x800.jpg'),
	(null,42,'../image/subdivision/nanzhuang/Tx/2/170920_2e8ka0e3ldei24jfhbj4a8k1hl24e_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/2/170920_2e8ka0e3ldei24jfhbj4a8k1hl24e_800x800.jpg'),
	(null,43,'../image/subdivision/nanzhuang/Tx/3/170808_4d9cfleffili18d35d3a4a55ea2c8_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/3/170808_7hb2id1adkihi1ib5h03k046lde6k_640x960.jpg_468x468.jpg'),
	(null,43,'../image/subdivision/nanzhuang/Tx/3/170808_65ch36jghdi4df4a30ba1fhh3djb7_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/3/170808_65ch36jghdi4df4a30ba1fhh3djb7_640x960.jpg'),
	(null,44,'../image/subdivision/nanzhuang/Tx/4/170616_0bbj0aj3b872ba6hd6gd6fjbch574_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/4/170616_0bbj0aj3b872ba6hd6gd6fjbch574_800x800.jpg'),
	(null,44,'../image/subdivision/nanzhuang/Tx/4/170616_86dfe64eb0f3lklj7g5il2j29210b_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/4/170616_86dfe64eb0f3lklj7g5il2j29210b_800x800.jpg'),
	(null,45,'../image/subdivision/nanzhuang/Tx/5/170712_7f7j8l8lg95ia28d7h6k88cdag7d1_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/5/170712_7f7j8l8lg95ia28d7h6k88cdag7d1_800x1200.jpg_468x468.jpg'),
	(null,45,'../image/subdivision/nanzhuang/Tx/5/170712_4eb8jkkj021813bedda37hb98f64j_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/5/170712_4eb8jkkj021813bedda37hb98f64j_800x1200.jpg_468x468.jpg'),
	(null,45,'../image/subdivision/nanzhuang/Tx/5/170712_1249dgbkaaih85b090ea9li4b8ick_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/5/170712_1249dgbkaaih85b090ea9li4b8ick_800x1200.jpg_468x468.jpg'),
	(null,46,'../image/subdivision/nanzhuang/Tx/6/171010_6ah968b2lhcd9ca1af2ib3e16l55i_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/6/171010_6ah968b2lhcd9ca1af2ib3e16l55i_800x800.jpg'),
	(null,46,'../image/subdivision/nanzhuang/Tx/6/171010_66k0i8bh835dc5kbdd5gb8f08d834_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/6/171010_66k0i8bh835dc5kbdd5gb8f08d834_800x800.jpg'),
	(null,47,'../image/subdivision/nanzhuang/Tx/7/170604_83896dbd48h1c9a605gh23ld84668_640x640.jpg_100x100 (1).jpg','../image/subdivision/nanzhuang/Tx/7/170604_83896dbd48h1c9a605gh23ld84668_640x640.jpg'),
	(null,47,'../image/subdivision/nanzhuang/Tx/7/170604_008998cf98578483kl08d45cafgc9_640x640.jpg_100x100 (1).jpg','../image/subdivision/nanzhuang/Tx/7/170604_008998cf98578483kl08d45cafgc9_640x640.jpg'),
	(null,47,'../image/subdivision/nanzhuang/Tx/7/170604_02b2ilckbkehgjii871lj57c85jh9_640x640.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/7/170604_02b2ilckbkehgjii871lj57c85jh9_640x640.jpg'),
	(null,47,'../image/subdivision/nanzhuang/Tx/7/170604_608i994i8kegj9belib1hgdg7i684_640x640.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/7/170604_608i994i8kegj9belib1hgdg7i684_640x640.jpg'),
	(null,48,'../image/subdivision/nanzhuang/Tx/8/171015_4l475lad9kjj4555d50kidai73ff8_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/8/171015_4l475lad9kjj4555d50kidai73ff8_640x960.jpg'),
	(null,48,'../image/subdivision/nanzhuang/Tx/8/171015_1744jf360ci8kegihb53g632e8lc9_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/Tx/8/171015_1744jf360ci8kegihb53g632e8lc9_640x960.jpg'),
	(null,49,'../image/subdivision/nanzhuang/niuku/1/171001_2dj9l992b283e98kbfji964gl469a_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/1/171001_2dj9l992b283e98kbfji964gl469a_640x960.jpg_468x468.jpg'),
	(null,49,'../image/subdivision/nanzhuang/niuku/1/171001_33f2e21l9f22l38eik63cc1155l70_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/1/171001_33f2e21l9f22l38eik63cc1155l70_640x960.jpg_468x468.jpg'),
	(null,49,'../image/subdivision/nanzhuang/niuku/1/171001_348k374delgjhb5176abg1f8i5630_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/1/171001_348k374delgjhb5176abg1f8i5630_640x960.jpg_468x468.jpg'),
	(null,50,'../image/subdivision/nanzhuang/niuku/2/170820_64kj9fe14509aad96j87ak1k3f700_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/2/170820_64kj9fe14509aad96j87ak1k3f700_640x960.jpg_468x468.jpg'),
	(null,50,'../image/subdivision/nanzhuang/niuku/2/170820_1552h0klhjai892iail6eb900568d_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/2/170820_1552h0klhjai892iail6eb900568d_640x960.jpg_468x468 (1).jpg'),
	(null,50,'../image/subdivision/nanzhuang/niuku/2/170820_258lj1901c7klj7g4kb3ej1d3a2fg_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/2/170820_258lj1901c7klj7g4kb3ej1d3a2fg_640x960.jpg_468x468.jpg'),
	(null,51,'../image/subdivision/nanzhuang/niuku/3/170504_0elli4ceedage81184hjhg9ih7g5k_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/3/170504_0elli4ceedage81184hjhg9ih7g5k_640x960.jpg_468x468.jpg'),
	(null,51,'../image/subdivision/nanzhuang/niuku/3/170504_35e3l14d5h5ikedg1400c9l5illhi_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/3/170504_35e3l14d5h5ikedg1400c9l5illhi_640x960.jpg_468x468.jpg'),
	(null,52,'../image/subdivision/nanzhuang/niuku/4/171006_2bif6ff9j3l8di1j1il8dhh3g74fe_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/4/171006_34g91i48364k4kbjjj2k8i47lkb54_640x960.jpg_468x468.jpg'),
	(null,53,'../image/subdivision/nanzhuang/niuku/5/170906_01i4g7i30ld8i6g8clcl0leccd5bk_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/5/170906_01i4g7i30ld8i6g8clcl0leccd5bk_800x800.jpg_468x468.jpg'),
	(null,53,'../image/subdivision/nanzhuang/niuku/5/170906_03ejd6gd9da39hlh8g015geh267d2_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/5/170906_03ejd6gd9da39hlh8g015geh267d2_800x800.jpg_468x468.jpg'),
	(null,53,'../image/subdivision/nanzhuang/niuku/5/170906_10jjdakajk063ka0g0460hl3hed44_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/5/170906_10jjdakajk063ka0g0460hl3hed44_800x800.jpg_468x468.jpg'),
	(null,54,'../image/subdivision/nanzhuang/niuku/6/170805_65kfbadkflihil99e18a6g4dh8i4j_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/6/170805_65kfbadkflihil99e18a6g4dh8i4j_640x960.jpg_468x468.jpg'),
	(null,54,'../image/subdivision/nanzhuang/niuku/6/170805_27ijebgf9eih081h6d3eheidh82ee_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/6/170805_27ijebgf9eih081h6d3eheidh82ee_800x800.jpg_468x468.jpg'),
	(null,54,'../image/subdivision/nanzhuang/niuku/6/170805_27ic11554da4j6fg335fd9gg1g6ld_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/6/170805_27ic11554da4j6fg335fd9gg1g6ld_640x960.jpg_468x468.jpg'),
	(null,55,'../image/subdivision/nanzhuang/niuku/7/170624_27ba0j586fe647e4f1dd1khl6kbbf_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/7/170624_27ba0j586fe647e4f1dd1khl6kbbf_640x960.jpg_468x468.jpg'),
	(null,55,'../image/subdivision/nanzhuang/niuku/7/170624_25dgi7a87e4456f8c9jjdie6jffdj_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/7/170624_25dgi7a87e4456f8c9jjdie6jffdj_640x960.jpg_468x468.jpg'),
	(null,56,'../image/subdivision/nanzhuang/niuku/8/101381997_10jc1062gee9af27e03eb3k2fe5ah_800x1200.jpg_100x100.jpg','../image/subdivision/nanzhuang/niuku/8/101381997_10jc1062gee9af27e03eb3k2fe5ah_800x1200.jpg_468x468.jpg'),
	(null,57,'../image/subdivision/nanzhuang/xiuxian/1/170917_6gdld51c2dfea8blhfh5381j16454_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/1/170917_6gdld51c2dfea8blhfh5381j16454_800x800.jpg_468x468.jpg'),
	(null,57,'../image/subdivision/nanzhuang/xiuxian/1/170917_5d5gbdgac3be1178ic8h4e3f93llk_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/1/170917_5d5gbdgac3be1178ic8h4e3f93llk_800x800.jpg_468x468.jpg'),
	(null,57,'../image/subdivision/nanzhuang/xiuxian/1/170917_459c1a49hekb0cl1ifa0jf6ea9h9f_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/1/170917_459c1a49hekb0cl1ifa0jf6ea9h9f_640x960.jpg_468x468.jpg'),
	(null,58,'../image/subdivision/nanzhuang/xiuxian/2/171015_20blc2f8d5985hk20k30b03h93jif_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/2/171015_20blc2f8d5985hk20k30b03h93jif_800x800.jpg'),
	(null,59,'../image/subdivision/nanzhuang/xiuxian/3/170413_6362hilh7i1b677el90k5bh77iicj_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/3/170413_6362hilh7i1b677el90k5bh77iicj_640x960.jpg_468x468.jpg'),
	(null,59,'../image/subdivision/nanzhuang/xiuxian/3/170413_3id6294al2j4c1j5a7bde5lh5d1g3_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/3/170413_3id6294al2j4c1j5a7bde5lh5d1g3_640x960.jpg_468x468.jpg'),
	(null,60,'../image/subdivision/nanzhuang/xiuxian/4/170819_4c4eb1ea0ea81dh3h1ha3j9jgk1gb_800x800.jpg','../image/subdivision/nanzhuang/xiuxian/4/170819_86a6jlee3c7106440f4k2kdg46lb2_640x960.jpg_468x468.jpg'),
	(null,61,'../image/subdivision/nanzhuang/xiuxian/5/170824_39e45g03a5229b8bi4clk7bf07kj4_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/5/170824_39e45g03a5229b8bi4clk7bf07kj4_640x960.jpg'),
	(null,62,'../image/subdivision/nanzhuang/xiuxian/6/170609_7bfb73ldbicbfhj639fj4dlgii260_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/6/170609_7bfb73ldbicbfhj639fj4dlgii260_640x960.jpg'),
	(null,63,'../image/subdivision/nanzhuang/xiuxian/7/101695604_0lddfe2055lihj5b4j296e7j3f5d0_800x800.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/7/101695604_0lddfe2055lihj5b4j296e7j3f5d0_800x800.jpg_468x468.jpg'),
	(null,64,'../image/subdivision/nanzhuang/xiuxian/8/170807_7f3fh12jhc673a812l4j2kd21lbak_640x960.jpg_100x100.jpg','../image/subdivision/nanzhuang/xiuxian/8/170807_7f3fh12jhc673a812l4j2kd21lbak_640x960.jpg_468x468.jpg'),
	(null,65,'../image/subdivision/nvxie/xiaobai/1/171016_7j427521hlh3ab9b7b3f8f7d3c53c_750x768.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/1/171016_7j427521hlh3ab9b7b3f8f7d3c53c_750x768.jpg'),
	(null,65,'../image/subdivision/nvxie/xiaobai/1/171016_74c09aec3hdf7la4d8de6idekia01_750x864.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/1/171016_74c09aec3hdf7la4d8de6idekia01_750x864.jpg'),
	(null,66,'../image/subdivision/nvxie/xiaobai/2/170504_01hhe664162j9l38g4c060ad1d306_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/2/170504_0bbb90k28b14b578afh22f85gef5j_640x960.jpg'),
	(null,66,'../image/subdivision/nvxie/xiaobai/2/170507_4jb5e85ehg4ie9gf9ef5kg64c13f1_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/2/170507_4jb5e85ehg4ie9gf9ef5kg64c13f1_640x960.jpg'),
	(null,67,'../image/subdivision/nvxie/xiaobai/3/171007_2b2ch3h5ij66g44k62c9kklhcgdi9_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/3/171007_2b2ch3h5ij66g44k62c9kklhcgdi9_640x960.jpg_468x468 (1).jpg'),
	(null,68,'../image/subdivision/nvxie/xiaobai/4/170929_7c07ljfblkb7i58lbk9487j319908_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/4/170929_7c07ljfblkb7i58lbk9487j319908_800x800.jpg'),
	(null,68,'../image/subdivision/nvxie/xiaobai/4/170929_4li93j013a7d7j38dhhh1cdf0g61l_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/4/170929_4li93j013a7d7j38dhhh1cdf0g61l_800x800.jpg'),
	(null,68,'../image/subdivision/nvxie/xiaobai/4/170929_0ia19c757g28l5h98d49dif4i58de_800x800.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/4/170929_0ia19c757g28l5h98d49dif4i58de_800x800.jpg'),
	(null,69,'../image/subdivision/nvxie/xiaobai/5/170801_6491ki8lejaj1jf9gjh7g8f3j75d8_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/5/170801_6491ki8lejaj1jf9gjh7g8f3j75d8_640x960.jpg_468x468.jpg'),
	(null,69,'../image/subdivision/nvxie/xiaobai/5/170801_2faf88292l10d9b0dkk2bd1eg233e_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/5/170801_2faf88292l10d9b0dkk2bd1eg233e_640x960.jpg_468x468.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170420_65e670ec5395i8434keaj43bde7j3_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/6/170420_65e670ec5395i8434keaj43bde7j3_640x960.jpg_468x468.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170416_2gh4ghb3f7gi1jkhc09eji500d013_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/6/170416_2gh4ghb3f7gi1jkhc09eji500d013_640x960.jpg_468x468.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170416_0bdla9b38g95k66bejjhfji214bi9_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/6/170416_0bdla9b38g95k66bejjhfji214bi9_640x960.jpg_468x468.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170416_643472c8ikfbd6igcii4b372i3hja_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/6/170416_643472c8ikfbd6igcii4b372i3hja_640x960.jpg_468x468.jpg'),
	(null,71,'../image/subdivision/nvxie/xiaobai/7/170504_64gha0je3c6b90l2693756dgkcial_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/7/170504_64gha0je3c6b90l2693756dgkcial_640x960.jpg_468x468 (1).jpg'),
	(null,71,'../image/subdivision/nvxie/xiaobai/7/170504_2c3i93ea8454h86lkaa89iddckkb2_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xiaobai/7/170504_2c3i93ea8454h86lkaa89iddckkb2_640x960.jpg_468x468.jpg'),
	(null,72,'../image/subdivision/nvxie/xiaobai/8/170828_896fe59d5dbb3cc5d8lk9k4b007jd_750x638.jpg_100x100 (1).jpg','../image/subdivision/nvxie/xiaobai/8/170828_16g2ak99kc6bll36lhj7g6gk72hgi_640x960.jpg_468x468.jpg'),
	(null,73,'../image/subdivision/nvxie/xuezi/1/170805_3h76g5j84d84gb5jc5l5d7b17gka6_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/1/170805_3h76g5j84d84gb5jc5l5d7b17gka6_640x960.jpg_468x468.jpg'),
	(null,73,'../image/subdivision/nvxie/xuezi/1/170915_2jhajkgja95edlk3935cgagiihhi8_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/1/170915_2jhajkgja95edlk3935cgagiihhi8_640x960.jpg_468x468.jpg'),
	(null,74,'../image/subdivision/nvxie/xuezi/2/170802_779kgedcf4ejclb7ggd2hge808jkh_640x960.jpg_468x468.jpg','../image/subdivision/nvxie/xuezi/2/170802_779kgedcf4ejclb7ggd2hge808jkh_640x960.jpg_468x468.jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_26354k9e9hhle6hh6jll1lee0gbgh_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/3/170913_26354k9e9hhle6hh6jll1lee0gbgh_640x960.jpg_468x468 (1).jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_3half2h034eki10j2d474b34eglia_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/3/170913_3half2h034eki10j2d474b34eglia_640x960.jpg_468x468.jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_7a3i1hh754j7dbek40cg3j1di16bf_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/3/170913_7a3i1hh754j7dbek40cg3j1di16bf_640x960.jpg_468x468.jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_12cjjg5cga697b4fdil5lj9k18c6i_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/3/170913_12cjjg5cga697b4fdil5lj9k18c6i_640x960.jpg_468x468.jpg'),
	(null,76,'../image/subdivision/nvxie/xuezi/4/48016605_2ll9h19k47f1bbgkb4dae9g16aeik_1000x1500.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/4/48016605_2ll9h19k47f1bbgkb4dae9g16aeik_1000x1500.jpg_468x468.jpg'),
	(null,77,'../image/subdivision/nvxie/xuezi/5/170910_5a9l44cl3i5cf3hlgeiika6a3fkfb_2640x3960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/5/170910_5a9l44cl3i5cf3hlgeiika6a3fkfb_2640x3960.jpg'),
	(null,78,'../image/subdivision/nvxie/xuezi/6/170914_6d2178ff90e76kchgeb2ffldcfi1c_970x970.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/6/170914_6l9h7e0h2g7hce546f24cdfd5gfda_640x960.jpg_468x468.jpg'),
	(null,79,'../image/subdivision/nvxie/xuezi/7/170807_6kkj6039fb8271ahi01ac7lki8d7l_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/7/170807_6kkj6039fb8271ahi01ac7lki8d7l_640x960.jpg_468x468.jpg'),
	(null,79,'../image/subdivision/nvxie/xuezi/7/170911_427cb7c0b53k8fjh168i61ig906f8_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/7/170911_427cb7c0b53k8fjh168i61ig906f8_640x960.jpg_468x468.jpg'),
	(null,79,'../image/subdivision/nvxie/xuezi/7/170911_5cdjfkh830845ea2ech5ce3fa5eb8_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/7/170911_5cdjfkh830845ea2ech5ce3fa5eb8_640x960.jpg_468x468.jpg'),
	(null,80,'../image/subdivision/nvxie/xuezi/8/171019_2316i2b63la7k8j635hei15ecjb3k_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/8/171019_2316i2b63la7k8j635hei15ecjb3k_640x960.jpg_468x468.jpg'),
	(null,80,'../image/subdivision/nvxie/xuezi/8/171019_362542lfi329dl57l8c02lc26igh2_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/xuezi/8/171019_362542lfi329dl57l8c02lc26igh2_640x960.jpg_468x468.jpg'),
	(null,81,'../image/subdivision/nvxie/danxie/1/171018_6c509038ca073f181ec77bhchab6f_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/1/171018_6c509038ca073f181ec77bhchab6f_750x750.jpg'),
(null,82,'../image/subdivision/nvxie/danxie/2/171012_58j65ie90000l3h3kjc9i7aj04c67_1000x1500.jpg_468x468.jpg','../image/subdivision/nvxie/danxie/2/171012_58j65ie90000l3h3kjc9i7aj04c67_1000x1500.jpg_468x468.jpg'),
(null,83,'../image/subdivision/nvxie/danxie/3/171005_4ijj7e7hik0gigd9b194lh1c2dh11_750x750.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/3/171005_2gb02abjkda6i516h4i5029d87a74_640x960.jpg_468x468.jpg'),
(null,84,'../image/subdivision/nvxie/danxie/4/170923_00if2iahjib11f9ia1j36l62bckbg_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/4/170923_00if2iahjib11f9ia1j36l62bckbg_640x960.jpg_468x468.jpg'),
(null,84,'../image/subdivision/nvxie/danxie/4/170923_38g934hlj26gcbj3880ag472kgihg_740x743.png_100x100.jpg','../image/subdivision/nvxie/danxie/4/170923_38g934hlj26gcbj3880ag472kgihg_740x743.png_468x468.jpg'),
(null,84,'../image/subdivision/nvxie/danxie/4/170923_64h5gab2f6cf76i6i83g25ci37hf0_733x743.png_100x100.jpg','../image/subdivision/nvxie/danxie/4/170923_64h5gab2f6cf76i6i83g25ci37hf0_733x743.png_468x468.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_3f88cig3fdc3jc1808ek348kag77k_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/5/170920_3f88cig3fdc3jc1808ek348kag77k_640x960.jpg_468x468.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_3i1f8ja79f0jij82b4ca01k603j6k_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/5/170920_3i1f8ja79f0jij82b4ca01k603j6k_640x960.jpg_468x468.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_01kh0c4e7k2b6hbb876i857j223ac_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/5/170920_01kh0c4e7k2b6hbb876i857j223ac_640x960.jpg_468x468.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_86id48g090b276c8dcg4e3j529c1l_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/5/170920_86id48g090b276c8dcg4e3j529c1l_640x960.jpg_468x468.jpg'),
(null,86,'../image/subdivision/nvxie/danxie/6/170701_7bbkl4826ejgld1j9fefb0ghc18h8_970x970.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/6/170701_5046e0k1lfli7hkkf1jdjeifdgdfg_640x960.jpg_468x468.jpg'),
(null,87,'../image/subdivision/nvxie/danxie/7/171022_65kf1e46e4fca456i5e9aadbh9k15_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/7/171022_65kf1e46e4fca456i5e9aadbh9k15_640x960.jpg_468x468.jpg'),
(null,87,'../image/subdivision/nvxie/danxie/7/171022_6feeicke4hcii48hak1bjeec4a9h1_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/7/171022_6feeicke4hcii48hak1bjeec4a9h1_640x960.jpg_468x468.jpg'),
(null,87,'../image/subdivision/nvxie/danxie/7/171022_4fl86kebbag0e5biiig24k1d5c0j7_640x960.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/7/171022_4fl86kebbag0e5biiig24k1d5c0j7_640x960.jpg_468x468.jpg'),
(null,88,'../image/subdivision/nvxie/danxie/8/171013_264l9b521a4j371b0j03dedl28b80_640x900.jpg_100x100.jpg','../image/subdivision/nvxie/danxie/8/171013_152375c15bk97c82112j5k0aci10c_640x960.jpg_468x468.jpg'),
(null,89,'../image/subdivision/nanxie/yundong/1/171003_370a3i12c0ligjh5icehblk2id8l8_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/1/171003_370a3i12c0ligjh5icehblk2id8l8_640x960.jpg_468x468.jpg'),
(null,89,'../image/subdivision/nanxie/yundong/1/171003_81jk70f864fdf86b88faigj6fed3b_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/1/171003_81jk70f864fdf86b88faigj6fed3b_640x960.jpg_468x468.jpg'),
(null,89,'../image/subdivision/nanxie/yundong/1/171003_1k6ld58afklglh0ik1i3i61ahjld4_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/1/171003_1k6ld58afklglh0ik1i3i61ahjld4_640x960.jpg_468x468.jpg'),
(null,90,'../image/subdivision/nanxie/yundong/2/171019_61cc1idah3hjfc8g8dgcd7e31ba2f_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/2/171020_125l6aaaibk77b14dgh9g7026h57g_640x960.jpg_468x468.jpg'),
(null,91,'../image/subdivision/nanxie/yundong/3/170525_33i51c1742kd60966k55ga1b0ek56_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/3/170525_33i51c1742kd60966k55ga1b0ek56_640x960.jpg_468x468 (1).jpg'),
(null,91,'../image/subdivision/nanxie/yundong/3/170525_33i51c1742kd60966k55ga1b0ek56_640x960.jpg_468x468.jpg','../image/subdivision/nanxie/yundong/3/170525_29d8h5654k4948d3666f7k2033fel_640x960.jpg_468x468.jpg'),
(null,92,'../image/subdivision/nanxie/yundong/4/171005_69idbb96gjd902d44hhdk1f487e7f_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/4/171005_69idbb96gjd902d44hhdk1f487e7f_640x960.jpg_468x468.jpg'),
(null,93,'../image/subdivision/nanxie/yundong/5/171028_5ih1869a13g9f294c4cfi4644e2ik_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/5/171028_5ih1869a13g9f294c4cfi4644e2ik_640x960.jpg_468x468.jpg'),
(null,94,'../image/subdivision/nanxie/yundong/6/170818_81d7fakc5af1jail42kl5egffhl3d_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/6/170818_81d7fakc5af1jail42kl5egffhl3d_640x960.jpg_468x468.jpg'),
(null,95,'../image/subdivision/nanxie/yundong/7/170829_36gdkihgcb8025jh2014l0gajl42l_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/7/170829_36gdkihgcb8025jh2014l0gajl42l_640x960.jpg_468x468.jpg'),
(null,95,'../image/subdivision/nanxie/yundong/7/170829_04a1e1e478fhh6aiih03j2cbh8fj8_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/7/170829_04a1e1e478fhh6aiih03j2cbh8fj8_640x960.jpg_468x468.jpg'),
(null,95,'../image/subdivision/nanxie/yundong/7/170829_18ae7c380144098kec9ebd9886fae_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/7/170829_18ae7c380144098kec9ebd9886fae_640x960.jpg_468x468.jpg'),
(null,96,'../image/subdivision/nanxie/yundong/8/170730_2gb16h6el3ci37k8b4h5b4d1c89k1_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/8/170730_2gb16h6el3ci37k8b4h5b4d1c89k1_640x960.jpg_468x468.jpg'),
(null,96,'../image/subdivision/nanxie/yundong/8/170730_210eg4bh6eddc03e1i23kai3091i0_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/8/170730_210eg4bh6eddc03e1i23kai3091i0_640x960.jpg_100x100 (1).jpg'),
(null,96,'../image/subdivision/nanxie/yundong/8/170730_035djli49kfg64b8k3087e03a4i3f_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/yundong/8/170730_035djli49kfg64b8k3087e03a4i3f_640x960.jpg_468x468.jpg'),
(null,97,'../image/subdivision/nanxie/nanxue/1/170905_7434237j35kb7gd7kbkf13labcc4d_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/1/170905_7434237j35kb7gd7kbkf13labcc4d_640x960.jpg_468x468.jpg'),
(null,97,'../image/subdivision/nanxie/nanxue/1/171009_2fi2k6073032ek1l975c2g529ebcg_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/1/171009_2fi2k6073032ek1l975c2g529ebcg_640x960.jpg_468x468.jpg'),
(null,97,'../image/subdivision/nanxie/nanxue/1/170905_7k3kfcilijcjic2ce5lfeikcii702_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/1/170905_7k3kfcilijcjic2ce5lfeikcii702_640x960.jpg_468x468.jpg'),
(null,98,'../image/subdivision/nanxie/nanxue/2/170926_5h06cjjd8j844l4kjee977g78icbc_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/2/170926_5h06cjjd8j844l4kjee977g78icbc_640x960.jpg_468x468.jpg'),
(null,99,'../image/subdivision/nanxie/nanxue/3/170921_43k9e1h59kl1dcjd74hc3f3jhf6jl_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/3/170921_43k9e1h59kl1dcjd74hc3f3jhf6jl_640x960.jpg_468x468.jpg'),
(null,100,'../image/subdivision/nanxie/nanxue/4/170925_8ge8a2d98j0k38d1k771d35hk38l3_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/4/170925_8ge8a2d98j0k38d1k771d35hk38l3_640x960.jpg_468x468.jpg'),
(null,101,'../image/subdivision/nanxie/nanxue/5/170930_7adl0ckc8c53l3ib01i4602jk9fce_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/5/170930_7adl0ckc8c53l3ib01i4602jk9fce_640x960.jpg_468x468.jpg'),
(null,102,'../image/subdivision/nanxie/nanxue/6/171010_27g3g3l16fd4g0j64j1aj63g7ic8e_640x960.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/6/171010_27g3g3l16fd4g0j64j1aj63g7ic8e_640x960.jpg_468x468.jpg'),
(null,103,'../image/subdivision/nanxie/nanxue/7/170805_4lj3aahbcd4c7eakhg3335dj3742e_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/7/170805_4lj3aahbcd4c7eakhg3335dj3742e_800x800.jpg_468x468.jpg'),
(null,104,'../image/subdivision/nanxie/nanxue/8/83224545_8g63d8gjg8ej8bi7jd11e66ja920k_800x800.jpg_100x100.jpg','../image/subdivision/nanxie/nanxue/8/83224545_8g63d8gjg8ej8bi7jd11e66ja920k_800x800.jpg_468x468.jpg'),
(null,105,'../image/subdivision/quanshen/1/171026_190b7akd0hb1ij7ee5c084kkl95g6_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/1/171026_190b7akd0hb1ij7ee5c084kkl95g6_640x960.jpg_468x468.jpg'),
(null,105,'../image/subdivision/quanshen/1/171026_79gebe7b6ek739e557fl11f408j6f_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/1/171026_79gebe7b6ek739e557fl11f408j6f_640x960.jpg_468x468.jpg'),
(null,105,'../image/subdivision/quanshen/1/171026_2e65h8chcg8j16k4e6hhc3f59ab3d_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/1/171026_2e65h8chcg8j16k4e6hhc3f59ab3d_640x960.jpg_468x468.jpg'),
(null,106,'../image/subdivision/quanshen/2/171005_2jiglee4ddbc7j3ljj465fcb9ifgj_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/2/171005_4eaj5k21l0935j21g42ddgh2j5ikb_640x960.jpg_468x468.jpg'),
(null,107,'../image/subdivision/quanshen/3/171024_54b850031da47hb1f89iic300b7ld_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/3/171024_54b850031da47hb1f89iic300b7ld_640x960.jpg_468x468.jpg'),
(null,107,'../image/subdivision/quanshen/3/171024_6h164a0faj457lg1ag5e05bi4c6ic_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/3/171024_6h164a0faj457lg1ag5e05bi4c6ic_640x960.jpg_468x468.jpg'),
(null,107,'../image/subdivision/quanshen/3/171024_2hhije8egbg8f7dik77c389kh4kh9_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/3/171024_2hhije8egbg8f7dik77c389kh4kh9_640x960.jpg_468x468.jpg'),
(null,108,'../image/subdivision/quanshen/4/171030_44bi776bh7831a1fdbe3i783f9l22_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/4/171030_44bi776bh7831a1fdbe3i783f9l22_640x960.jpg_468x468 (1).jpg'),
(null,108,'../image/subdivision/quanshen/4/171030_0kelfkc5jk9b0l2hhgeh3900c8i1j_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/4/171030_0kelfkc5jk9b0l2hhgeh3900c8i1j_640x960.jpg_468x468.jpg'),
(null,108,'../image/subdivision/quanshen/4/171030_3jf78dd8f05b3b1dfljg4ia729lf2_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/4/171030_3jf78dd8f05b3b1dfljg4ia729lf2_640x960.jpg_468x468.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_1gbei0e35jj8g39acia1585k091la_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/5/170927_1gbei0e35jj8g39acia1585k091la_640x960.jpg_468x468.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_4k1gb9d08g1ga3af56cc512h53gh6_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/5/170927_4k1gb9d08g1ga3af56cc512h53gh6_640x960.jpg_468x468.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_22g0bcd0lk4acib246d7f4353gb6b_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/5/170927_22g0bcd0lk4acib246d7f4353gb6b_640x960.jpg_468x468.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_40j4i6ddah9bbh1hbcgfb804cll8g_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/5/170927_40j4i6ddah9bbh1hbcgfb804cll8g_640x960.jpg_468x468.jpg'),
(null,110,'../image/subdivision/quanshen/6/171025_55693ee2569djic28h5h0i13k40g9_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/6/171025_55693ee2569djic28h5h0i13k40g9_640x960.jpg_468x468.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_2408i8dk32ih216ik6j0e80h699i6_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/7/170927_2408i8dk32ih216ik6j0e80h699i6_640x960.jpg_468x468.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_3d4jc8ih6fi00hl489f3g6bbj30j0_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/7/170927_3d4jc8ih6fi00hl489f3g6bbj30j0_640x960.jpg_468x468.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_297gkf5ci675cf8kg0l69felbikb7_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/7/170927_297gkf5ci675cf8kg0l69felbikb7_640x960.jpg_468x468.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_32k132k95l9h5lfhagle3717h5dd9_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/7/170927_32k132k95l9h5lfhagle3717h5dd9_640x960.jpg_468x468.jpg'),
(null,112,'../image/subdivision/quanshen/8/171023_5h1i3b2jcga061f9ch11g3b60afd2_750x812.jpg_100x100.jpg','../image/subdivision/quanshen/8/171023_710g1j65a4d0ggkc7964djhdd6436_640x960.jpg_468x468.jpg'),
(null,113,'../image/subdivision/quanshen/9/170821_7h7h192jj02j3j46daf0587cd0k02_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/9/170821_7h7h192jj02j3j46daf0587cd0k02_640x960.jpg_468x468 (1).jpg'),
(null,114,'../image/subdivision/quanshen/10/171028_0hjibki51cjgjcd52d7a86klkaj04_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/10/171028_0hjibki51cjgjcd52d7a86klkaj04_640x960.jpg'),
(null,115,'../image/subdivision/quanshen/11/171026_5ih23cag7ckc1k3a0b1ef2h449035_640x960.jpg_100x100.jpg','../image/subdivision/quanshen/11/171026_5ih23cag7ckc1k3a0b1ef2h449035_640x960.jpg_468x468.jpg'),
(null,116,'../image/subdivision/quanshen/12/171027_572k415eb7kih5jlh9ci6897ee900_476x955.jpg','../image/subdivision/quanshen/12/171027_08i0171l7ee8e018hgji1728b1i3f_640x960.jpg_468x468.jpg');










#商品穿衣效果详情表
CREATE TABLE mg_laptop_pic(
	pid        INT	 PRIMARY KEY AUTO_INCREMENT,     #ID
	laptop_id        INT NOT NULL  ,     #与商品详情表ID相连
	pic       VARCHAR(1024)   NOT NULL DEFAULT ""    #穿衣效果图片
);
	
INSERT INTO  mg_laptop_pic  VALUES(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_3hafefk8gb52alf4gd148i1c41k3h_750x1240.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_58l6h9kkc2ad548jf6l2ibffc73g3_750x901.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_123i558jjdb86859hfgcj4i3ce0i1_750x1220.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,1,'../image/subdivision/nvzhuang/shangyi/fengyi/1/170819_3h0j53g71d1364e0aif861cd2elac_750x1268.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_7gff5e7lgbj8gh146b5kia269jcc3_640x965.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_7d8cef00eh0ief79kfd5fie3h26lb_640x948.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_3g5550he855k727ccihhab9e8c7bi_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,2,'../image/subdivision/nvzhuang/shangyi/fengyi/2/171011_084lf6i4jk1ekaflj0kldlg46891c_640x971.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/170913_1gfb2ihlc8fle7cdb141172d44e6c_640x725.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/171020_5ld6b6l45f0524h336448c0f88825_640x725.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_441dbeekbei6kh996829g0dd8008g_800x800.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,3,'../image/subdivision/nvzhuang/shangyi/fengyi/3/171024_5f3hkg455ic3h6dj3j606fg01llda_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,4,'../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_26fb8jl6f5fgh10j3bkc1eg72b4c7_750x808.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,4,'../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_6acjg2j1118call7j8jhf3b00hj75_750x832.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,4,'../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_5836f01f29bgkelc587hc7ha9h446_750x844.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,4,'../image/subdivision/nvzhuang/shangyi/fengyi/4/171005_61f0dbc30e3lb6k08e18ifg6f6833_750x1204.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,5,'../image/subdivision/nvzhuang/shangyi/fengyi/5/171006_568h2gi88f138b4l98kl04j6khli9_750x789.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,5,'../image/subdivision/nvzhuang/shangyi/fengyi/5/171007_1dh4e8hafhed1bdek537h12k96fhk_750x802.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,5,'../image/subdivision/nvzhuang/shangyi/fengyi/5/171006_1i1059ehajgg32d1962gfk30gj1b0_750x857.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,5,'../image/subdivision/nvzhuang/shangyi/fengyi/5/171006_520hjk99b9k27k0kc16kflg44f08i_750x901.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,6,'../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_47hd128019b437b6256d1ebkik120_750x661.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,6,'../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_2kbblf9c8ahhfkekj25i6k02akf5k_750x850.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,6,'../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_7laag5a7d9k58h991207b0gfdgd40_750x850.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,6,'../image/subdivision/nvzhuang/shangyi/fengyi/6/170911_0h3e6j0jefa03ilhf1hi0h3f46636_750x1399.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,7,'../image/subdivision/nvzhuang/shangyi/fengyi/7/171001_54jl89bgfg3a5e5b5kc46hga98fdh_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,7,'../image/subdivision/nvzhuang/shangyi/fengyi/7/1gc7vw_0eeahf740l8ehic2d9b0d9ikga4li_750x859.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,7,'../image/subdivision/nvzhuang/shangyi/fengyi/7/1gc7vw_42728ik49i27fjif3jf49c03j2leb_750x859.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,7,'../image/subdivision/nvzhuang/shangyi/fengyi/7/1gc7vw_7176175ffbk5l2l4lile49db7l22a_750x859.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,8,'../image/subdivision/nvzhuang/shangyi/fengyi/8/145163635_3b47jl0a977j1ki1fh542d8bj8b22_685x684.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,8,'../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_5fhd1k13b14ihc2eai35150aak9dl_713x713.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,8,'../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_4d1de6ck99h0edlb242ia5i10559e_657x657.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,8,'../image/subdivision/nvzhuang/shangyi/fengyi/8/10064772_5ia0b618ib02flhbj626billk3cd3_656x656.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,9,'../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_81k12bhg1ac544jjki5gd27l30lkj_640x630.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,9,'../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_7dc8i60fjdcge5gjkfidlch2ch75j_640x643.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,9,'../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_47ha63afcdi0b71lkkb2dd5d4ek04_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,9,'../image/subdivision/nvzhuang/shangyi/yiziling/1/170903_85hja3hl9g2jh5ad1365gj066l4g8_800x800.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,10,'../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_19ab6b17ij2eej6l2g3ld73kihgl7_790x1290.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,10,'../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_8di2bdjbjjl3764508l2b09jbchb5_790x776.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,10,'../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_3g9l2jj2j58bli9ja2h60lb7igkg5_790x1194.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,10,'../image/subdivision/nvzhuang/shangyi/yiziling/2/170812_5500289e4f19gj60113i84811b5h6_790x538.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,11,'../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_1cee4blkae337h7d4d41j9kgbhd0d_750x1059.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,11,'../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_3cekahlkkef4856i76d2c6ah7j38a_750x1188.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,11,'../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_0dh12767gfcbjl32jfjg6e24j5afl_750x1037.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,11,'../image/subdivision/nvzhuang/shangyi/yiziling/3/170801_65gca9kfkk0aggel6ihai81a4c9dg_750x1059.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,12,'../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ie4tambvgyydczlghazdambqgqyde_860x485.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,12,'../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ifqwenbtmyydczlghazdambqgyyde_1134x654.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,12,'../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ifqwimdggyytczlghazdambqgyyde_1110x626.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,12,'../image/subdivision/nvzhuang/shangyi/yiziling/4/1u8dva_ifrtinbthaytczlghazdambqhayde_1110x626.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,13,'../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_5cl9e340205480fjbi28a04jg456e_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,13,'../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_7k8fil6k09gkjkihi6ifjga0hb7dj_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,13,'../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_8dfdg0bk3h354diff5ccjb54i6462_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,13,'../image/subdivision/nvzhuang/shangyi/yiziling/5/170812_21i2ch7fgkl2bk410h8ca259g841e_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_4clagb2add42ik1hg322hgdg60hg9_734x836.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_4kb84hfdf586g5hk63cfbcf5g0gda_1024x1280.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_0l3k4iee70k82ac952749hj4c7622_756x836.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,14,'../image/subdivision/nvzhuang/shangyi/yiziling/6/170401_5g5h6k18jlj49ka13lj4c3j1121h2_737x818.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_2g5b785gde955b8ajd0d47g5hlelj_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_6if09d690e6b80jlc4fe6k766jegi_640x640.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_2kl56d9l5g2i79cj3b25d07af61il_640x638.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,15,'../image/subdivision/nvzhuang/shangyi/yiziling/7/170715_5je2i761ai6gd2156ll40395ljhli_640x632.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,16,'../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_5ejd81gj463f7h9c7kd8h58ea5l78_1348x759.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,16,'../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_1g2f94kg75i7ch0f43d52k56fgiae_750x1292.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,16,'../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_53e1hhcddaijafe42b7fb38472g34_721x1017.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,16,'../image/subdivision/nvzhuang/shangyi/yiziling/8/170802_67faiiaadl0d28ka1j88253jk58kh_841x829.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,17,'../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_36fck30k2i3li6ci0d04560ikd10a_750x1261.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,17,'../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_3f27j767c4j4255b3d8g5fc9al15h_750x1159.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,17,'../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_0283l2c7250124gf7h19aa7355999_750x1219.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,17,'../image/subdivision/nvzhuang/xiayi/lianyiqun/1/140748315_7065lii4ace72251ik5j28ki6k1ca_750x1209.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_8g3gbgjih9f077i5h3hff7d5ggh7a_750x1125.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_7di9h32j2f0l30008kk10ed0i7f8g_750x1125.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_1lb288ak2ka28bbab130c6ge309fk_750x1125.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,18,'../image/subdivision/nvzhuang/xiayi/lianyiqun/2/43551917_3ikk0bhfc7f0chk5lejjej9kfd5e4_750x1125.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,19,'../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_2bb2b4ijbk4527d41d17i2kj8ce3d_750x1207.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,19,'../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_4cliak5i3g6ij7gg6k2lji7eh0hk7_750x716.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,19,'../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_23g3938d4a88364ddfh0i5eb2691c_750x924.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,19,'../image/subdivision/nvzhuang/xiayi/lianyiqun/3/170829_4l9abh1fhdgeh477dfc9l76ag695g_750x995.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,20,'../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_85j9ala5g49jl8k4855d4iefd5bd8_800x800.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,20,'../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_4kdf12d65jcf0fa95e5ghdd819c95_790x624.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,20,'../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170411_54di8f1bb2df9bcf023k7h356f3jd_640x805.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,20,'../image/subdivision/nvzhuang/xiayi/lianyiqun/4/170507_85j7lgc504ac90ckbfgk530123g4j_750x958.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,21,'../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_62l1j6f03fge0e6ahji4g4hejd582_640x853.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,21,'../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_2lc8ch7dd5bc7fb9fk1k13hc8ij93_640x722.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,21,'../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_7i4kjl5f0ihjj5jgibk87d994fa93_640x755.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,21,'../image/subdivision/nvzhuang/xiayi/lianyiqun/5/170810_655ebejkjg0ici87f0al0h2h3ffi4_640x678.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,22,'../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_0cf7b94c92e49ckd96ihiff39ff4k_750x1165.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,22,'../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_176125675133fgk9e7e455g1f8f3a_750x1228.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,22,'../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_8e8bd1g2k45c5dlj88hl89ie6akb6_750x1154.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,22,'../image/subdivision/nvzhuang/xiayi/lianyiqun/6/107095116_572ji4c2bhh6die2i2hglgjcegkgk_750x1213.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_17fb3e947b1767bgg9ljig8h07ik0_1200x1200.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_5b158dd98e14cfkf0bgljak5k9e41_750x1398.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_76kl0b7ibjic9lbaehk7ee038djcc_750x750.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,23,'../image/subdivision/nvzhuang/xiayi/lianyiqun/7/171016_5akl1ibl718gie0k5iaiifeg907aj_750x750.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,24,'../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_312fhh5hb56caee317dag6hbe9dgb_750x756.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,24,'../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_3945dj4ag4j5l49bi6bkhgef61f9b_750x756.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,24,'../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_84k4l7ah773fd92i98iaihck3a8a3_750x756.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,24,'../image/subdivision/nvzhuang/xiayi/lianyiqun/8/170924_598k0ig3607ga41aak911g9i022a9_750x761.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,25,'../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_2bee5jg13a31i9g50ka6i846j5j29_790x930.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,25,'../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_7ik8ai3j4j5e8ckj2ckf7210i85j5_790x562.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,25,'../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_6j3b9ie375i3l8ajl5c2f9ffic150_790x1156.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,25,'../image/subdivision/nvzhuang/xiayi/kuzi/1/170723_6c4ecdai1i0keglg3a165i591kgi3_790x796.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,26,'../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_0171ddf6j903d7f8i7b2bl94b4kga_750x621.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,26,'../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_5684fh0i2f2cg9e40458a8j5hk075_750x850.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,26,'../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_0b1660dc748c983091ih4k34i81df_750x743.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,26,'../image/subdivision/nvzhuang/xiayi/kuzi/2/170330_1bfhae7e65j072b21h586j4g844jk_750x878.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,27,'../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_38d4bjk7ca7j47e5d1002gej34al0_750x865.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,27,'../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_7fhlfl9gghc3dg07l310g87h1hf02_750x922.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,27,'../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_5b71f5hfbhh41ddh83l2f4524j6e4_750x989.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,27,'../image/subdivision/nvzhuang/xiayi/kuzi/3/170802_7k770bge2k142g9723a6c0b8fh4bl_750x966.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,28,'../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_6j2kfh2ffgkd9i5b0k4iflj6c9g8g_640x839.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,28,'../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_55lic83gl89a9cjbig0hk04fc18fi_640x804.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,28,'../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_3h8bblfiig984a6b28e8e9gdd898e_640x820.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,28,'../image/subdivision/nvzhuang/xiayi/kuzi/4/170930_802503clc08jk1k572i3hckeicd30_750x858.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_7c1l0jh148d3c0570j28l6dk644d3_640x766.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_880ldc7g7jd25jdb7877jc3eg0jd4_640x853.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_4k592fj59b448ki23l31baha3l5fd_640x770.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,29,'../image/subdivision/nvzhuang/xiayi/kuzi/5/170809_4dged00cl4j80h3ig0ebeh6h9ka94_640x586.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_7jd26886bg0k43148ah5kh8f47768_750x937.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_8c8lg2kdl75502ak34ce2e0ld22cg_750x1001.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_63ff74k39gk8f722e2hbdjc06hbk8_750x734.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,30,'../image/subdivision/nvzhuang/xiayi/kuzi/6/170809_020c1dg6i1hjcaij9cgcjf0l0d5d5_750x1119.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,31,'../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_42hc4hfj2i3l80e4fahc3ch3kj4ec_750x750.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,31,'../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_737gh3a89fbi7hc368kaje5k03del_750x750.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,31,'../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_7b2cfej0edl64kec4g7h1gik5i40c_750x750.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,31,'../image/subdivision/nvzhuang/xiayi/kuzi/7/121248485_1bl6ccc20fjl9f7dg0haji48hce9j_750x750.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,32,'../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_0kg2ejah9ca7e333iiff25ebc1h1c_750x973.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,32,'../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_39edhh6cg9ccf3g2jglkg7b3h39h8_750x911.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,32,'../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_14611jg1b7kfa4eicjd3ckicc3id8_750x1067.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,32,'../image/subdivision/nvzhuang/xiayi/kuzi/8/170626_67a3dg7a5jba2fl58lk90f65dl15a_750x1156.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,33,'../image/subdivision/nanzhuang/mianao/1/171016_52a41aa6779ee8825j0bc0eb200i4_750x784.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,33,'../image/subdivision/nanzhuang/mianao/1/171016_643cdl8ibe36dacdg6efki73h1a39_750x1352.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,33,'../image/subdivision/nanzhuang/mianao/1/171016_73gc7jli1h3c928a72hjcjd4a31a0_750x1324.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,33,'../image/subdivision/nanzhuang/mianao/1/171016_5i3kf3f4281ge2fee7e9ehja4bgd2_750x753.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,34,'../image/subdivision/nanzhuang/mianao/2/171024_775abe8bje2a10e2ddg4aeiaf62e2_750x541.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,34,'../image/subdivision/nanzhuang/mianao/2/171024_7k4f93dg88bbi08jbh8h10bf39bc7_750x746.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,34,'../image/subdivision/nanzhuang/mianao/2/171024_4cgc42k334g198k412611194fc850_750x1100.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,34,'../image/subdivision/nanzhuang/mianao/2/171024_6fge5gal5538lidh71fclk3hcchg8_750x676.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,35,'../image/subdivision/nanzhuang/mianao/3/171025_4lgf2i0ijae36jaec8kl703g6bgec_750x461.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,35,'../image/subdivision/nanzhuang/mianao/3/171025_7db0ib3gh3afhdl64d5a5acgl8j62_750x4081.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,35,'../image/subdivision/nanzhuang/mianao/3/171025_7db0ib3gh3afhdl64d5a5acgl8j62_750x4081.jpg_750x999 (1).jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,35,'../image/subdivision/nanzhuang/mianao/3/171025_258e47g5k42dfee3ckc5cldgg64f5_750x2997.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,36,'../image/subdivision/nanzhuang/mianao/4/171019_85e1a0167dd31118c09jgl5ag1d60_750x879.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,36,'../image/subdivision/nanzhuang/mianao/4/171019_431513clal98gdl6g9779495j56h4_750x499.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,36,'../image/subdivision/nanzhuang/mianao/4/171019_2gadg2afjali3hhalie3dl7lheflf_750x499.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,36,'../image/subdivision/nanzhuang/mianao/4/171019_5hlb7lf36fe4j03cekdkb4ai7ihil_750x499.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_405dc49j16idh4g3h78l2jll982dc_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_405dc49j16idh4g3h78l2jll982dc_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_405dc49j16idh4g3h78l2jll982dc_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_405dc49j16idh4g3h78l2jll982dc_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_3ilc92h8737hk5jebd9ff940dfddh_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_157i46aa23591j257i4l1gjjlchh4_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,37,'../image/subdivision/nanzhuang/mianao/5/171018_5b6e66d5k6bihd04197j5k02aiigl_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,38,'../image/subdivision/nanzhuang/mianao/6/171017_7c4g2ke2ia64gg3gk5e2ch649fa1l_750x605.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,38,'../image/subdivision/nanzhuang/mianao/6/171017_3c3ifb1j3kcf7h23587ca844dkih8_640x809.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,38,'../image/subdivision/nanzhuang/mianao/6/171017_88be60c7d5lj0j7dd9d79j1023iig_640x862.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,38,'../image/subdivision/nanzhuang/mianao/6/171017_5e4ji4jjk0ikl542jla71kh9340e1_640x848.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,39,'../image/subdivision/nanzhuang/mianao/7/171017_24f3dllhc0cl27j73da8jj031badl_723x662.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,39,'../image/subdivision/nanzhuang/mianao/7/171017_0bf4277f2kgc6g01l9627bc8cbc8h_736x884.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,39,'../image/subdivision/nanzhuang/mianao/7/171017_705i0116a3cef0858akba5g0jel23_726x654.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,39,'../image/subdivision/nanzhuang/mianao/7/171017_6hk19l5l9cd3eehde4kj8flf84gbh_734x657.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,40,'../image/subdivision/nanzhuang/mianao/8/171017_3dfd0608bch4e09li1e1031dc22dl_807x649.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,40,'../image/subdivision/nanzhuang/mianao/8/171017_1hhe4i811e1a4i9e8ha4b978gb7ii_823x553.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,40,'../image/subdivision/nanzhuang/mianao/8/171017_6c6eb68ic4ii7dl51k35jjae42eaf_742x590.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,40,'../image/subdivision/nanzhuang/mianao/8/171017_8adehg5g61k092c2b6kg7gig88b9d_800x670.png_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,41,'../image/subdivision/nanzhuang/Tx/1/170905_8ei1ckhdcahcgbklf635g06lkfj00_790x857.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,41,'../image/subdivision/nanzhuang/Tx/1/170905_4h65156hcc87cbi2cfe4187gei1g3_790x504.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,41,'../image/subdivision/nanzhuang/Tx/1/170905_7l4fjda577550e55ibi53jk6gba8l_790x894.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,41,'../image/subdivision/nanzhuang/Tx/1/170905_09jc7i5h08ag2jkibbb70aj4bh04b_790x893.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,42,'../image/subdivision/nanzhuang/Tx/2/170920_5h2ca21ebjl828445h11315j2l6k4_790x781.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,42,'../image/subdivision/nanzhuang/Tx/2/170920_67864cd8k3bd713klkec790346067_790x848.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,42,'../image/subdivision/nanzhuang/Tx/2/170920_5diced668cg9k643adekig76bdeb3_790x592.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,42,'../image/subdivision/nanzhuang/Tx/2/170920_0a4jh124d2jfi0i8307kj64ga15df_790x823.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,43,'../image/subdivision/nanzhuang/Tx/3/170808_1hiaac72k35j3ibhl3ih1a45db7bl_790x1152.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,43,'../image/subdivision/nanzhuang/Tx/3/170808_20fejh73ec13868k13g2f88if7c5h_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,43,'../image/subdivision/nanzhuang/Tx/3/170808_0kl713a7hede704lhd40i82f08fj8_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,43,'../image/subdivision/nanzhuang/Tx/3/170808_2cdia8g3a47acdjldfd2f6g4i3dhg_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,44,'../image/subdivision/nanzhuang/Tx/4/170616_6c5h1c33l2gi1h78h8clk9l4dh3b2_749x1005.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,44,'../image/subdivision/nanzhuang/Tx/4/170616_17ea2b1h680d54e5k481agca09f84_750x848.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,44,'../image/subdivision/nanzhuang/Tx/4/170616_6la21hil6i97d637ddab6c3ciie4h_750x1324.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES      (null,44,'../image/subdivision/nanzhuang/Tx/4/170616_23l8c1f5h9h19805h99l5el42e7dh_750x1217.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,45,'../image/subdivision/nanzhuang/Tx/5/170712_16246bjdigc835gabjkb2gjhlkcjk_750x1097.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,45,'../image/subdivision/nanzhuang/Tx/5/170712_5l92fjj394l0bglb8893k3956840l_750x769.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,45,'../image/subdivision/nanzhuang/Tx/5/170712_3dbgji5i7d9fbgl6j0649l5329hd6_750x1236.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,45,'../image/subdivision/nanzhuang/Tx/5/170712_61ijai0kiii37ilhkee122l67l9h1_750x1200.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,46,'../image/subdivision/nanzhuang/Tx/6/171010_5d71c71757ih7c9fglal17bgi5kl4_750x778.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,46,'../image/subdivision/nanzhuang/Tx/6/171010_23528db86aahc18bfc7lke65kccl2_750x672.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,46,'../image/subdivision/nanzhuang/Tx/6/171010_5c98h6blh18fabbf4lib028cl3f0k_750x860.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,46,'../image/subdivision/nanzhuang/Tx/6/171010_0561jge6ll48be17fk01i8bb0d6kb_750x949.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,47,'../image/subdivision/nanzhuang/Tx/7/170604_56dl7hj4c5kkh3k02kefclhi4akh0_800x800.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,47,'../image/subdivision/nanzhuang/Tx/7/170604_0b617ig3ih9b0gi1acc3eh66jj409_800x800.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,47,'../image/subdivision/nanzhuang/Tx/7/170604_0c6aa64f56dj7ldgb64fbb6ekh4ee_800x800.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,47,'../image/subdivision/nanzhuang/Tx/7/77101615_6f3ak83kkl00329ged9249aa93ifb_1125x285.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,48,'../image/subdivision/nanzhuang/Tx/8/171015_1lid9k3a11l64l75ei291hcagalb3_750x964.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,48,'../image/subdivision/nanzhuang/Tx/8/171015_07khi70j28649bc04f46be16i5229_750x465.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,48,'../image/subdivision/nanzhuang/Tx/8/171015_3b0cj6h239375i880fd689da21g82_750x467.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,48,'../image/subdivision/nanzhuang/Tx/8/171015_6d16ida6b97fcf5l35k1jb1fhbh5j_750x898.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,49,'../image/subdivision/nanzhuang/niuku/1/171017_4202k9jdlc2bf06ei7lld82fi2c6c_739x824.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES	(null,49,'../image/subdivision/nanzhuang/niuku/1/171001_8b659k3i45a93ad2da97alk605ke4_750x728.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,49,'../image/subdivision/nanzhuang/niuku/1/171001_2cj2475d7c163d1i5e7ll11f38ej9_750x721.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,49,'../image/subdivision/nanzhuang/niuku/1/171001_661hl6lkjb702bebke2kee3b2l00d_750x858.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,50,'../image/subdivision/nanzhuang/niuku/2/170820_4e3b4jef5d31bdjc32g14gag3f1ib_750x964.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,50,'../image/subdivision/nanzhuang/niuku/2/170820_2e8cc3g6956kj251g6d7b6khai976_750x626.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,50,'../image/subdivision/nanzhuang/niuku/2/170820_1fgihc02gfjhc6i6846i7f77hj614_750x891.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,50,'../image/subdivision/nanzhuang/niuku/2/170820_02e7gi3a89ilk50dkb7fgg2d7e2ac_750x1013.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,51,'../image/subdivision/nanzhuang/niuku/3/170504_6094g8kachie759i978e7dkgj9g5e_750x450.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,51,'../image/subdivision/nanzhuang/niuku/3/170504_86hfd1d783i54c7a64736e0aei4bc_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,51,'../image/subdivision/nanzhuang/niuku/3/170504_0b4fc4akk5d411a3di2ebk79d1504_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,51,'../image/subdivision/nanzhuang/niuku/3/170504_2213ghkb565h30e2id4ddc116ckg4_640x960.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,52,'../image/subdivision/nanzhuang/niuku/4/171006_64i7h2clfi3eie46flj1610ia224f_790x966.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,52,'../image/subdivision/nanzhuang/niuku/4/171006_6a1ala2b5dj1dgba8lgfh2cfg7692_790x823.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,52,'../image/subdivision/nanzhuang/niuku/4/171006_3ia0c57fg9khj257b95kl84k1i6kk_790x1063.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,52,'../image/subdivision/nanzhuang/niuku/4/171006_8b8a27b1dl223edhfdhf31h2hf261_790x624.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,53,'../image/subdivision/nanzhuang/niuku/5/170906_4fhf335e3jbad01kj9g52h3ebg478_790x749.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,53,'../image/subdivision/nanzhuang/niuku/5/170906_75hega27bhg5jcgc04je7b78eekc0_790x925.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,53,'../image/subdivision/nanzhuang/niuku/5/170906_8b20f3bh8gb10he5f181ah05f3dhb_790x643.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,53,'../image/subdivision/nanzhuang/niuku/5/170906_0dfk3kh1e1db1i3bk2f87egb338j9_790x804.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,54,'../image/subdivision/nanzhuang/niuku/6/170809_4448egbl8647gh45c6266i2ljil8g_790x895.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,54,'../image/subdivision/nanzhuang/niuku/6/170809_2jlbkhjgbk9ke6l0ddc1496034495_790x903.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,54,'../image/subdivision/nanzhuang/niuku/6/170809_3fkf59ejdjke35c2g3964hi21ih93_790x698.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,54,'../image/subdivision/nanzhuang/niuku/6/170809_89753iclb35afd8f41g7hj01fl1ek_790x937.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,55,'../image/subdivision/nanzhuang/niuku/7/170624_7de7ce76klab3c5k8ilcj658cac96_750x741.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,55,'../image/subdivision/nanzhuang/niuku/7/170624_8gc22ka2b73hhe47dll01be347e8b_648x367.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,55,'../image/subdivision/nanzhuang/niuku/7/170624_3f275h2fjl2la8gkk922fi50fclfi_750x850.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,55,'../image/subdivision/nanzhuang/niuku/7/170624_4195854ha9909ef46fjggjcdi0c67_750x692.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,56,'../image/subdivision/nanzhuang/niuku/8/101381997_5dbd040e0ib0c1ilhach2eegf6775_750x1029.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,56,'../image/subdivision/nanzhuang/niuku/8/101381997_1cb3b381lge0g51hcf8f1a8i9e5k1_750x980.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES(null,56,'../image/subdivision/nanzhuang/niuku/8/101381997_113k5b14cj26af5a4k608g8595i82_750x979.jpg_750x999.jpg');
INSERT INTO  mg_laptop_pic  VALUES
	(null,56,'../image/subdivision/nanzhuang/niuku/8/170908_0ei9kkj2b61d70df4fi4ji09d1daj_790x1163.jpg_750x999.jpg'),
	(null,57,'../image/subdivision/nanzhuang/xiuxian/1/171019_27kga7kg061ie20da8l8d9bb71a2c_790x937.jpg_750x999.jpg'),
	(null,57,'../image/subdivision/nanzhuang/xiuxian/1/171019_59jjcd499g251ghkk7327fa56g9h3_750x732.jpg_750x999.jpg'),
	(null,57,'../image/subdivision/nanzhuang/xiuxian/1/171019_2eh1g1852j13098fga8f3lkhjh2b0_790x2941.jpg_750x999.jpg'),
	(null,57,'../image/subdivision/nanzhuang/xiuxian/1/171019_2eh1g1852j13098fga8f3lkhjh2b0_790x2941.jpg_750x999 (1).jpg'),
	(null,58,'../image/subdivision/nanzhuang/xiuxian/2/171015_1hb062i66c46fh9elk2d5hf94d4e5_750x701.jpg_750x999.jpg'),
	(null,58,'../image/subdivision/nanzhuang/xiuxian/2/171015_2fe5c3chd1clii040if8k25i8k0h0_800x800.jpg_750x999.jpg'),
	(null,58,'../image/subdivision/nanzhuang/xiuxian/2/171015_6d5bh778ld9fd1452f2aa2471i129_750x627.jpg_750x999.jpg'),
	(null,58,'../image/subdivision/nanzhuang/xiuxian/2/171015_4ccc2d41018c0cfl41f59jge3jia9_750x648.jpg_750x999.jpg'),
	(null,59,'../image/subdivision/nanzhuang/xiuxian/3/170815_3d6id920099jbbj4efe701le3c8k2_750x948.jpg_750x999.jpg'),
	(null,59,'../image/subdivision/nanzhuang/xiuxian/3/170815_345if1j58ji0fha3ghi776034aa1f_750x1296.jpg_750x999.jpg'),
	(null,59,'../image/subdivision/nanzhuang/xiuxian/3/170815_19a487460j0127hi8i99285538khk_750x1081.jpg_750x999.jpg'),
	(null,59,'../image/subdivision/nanzhuang/xiuxian/3/170815_74hf9gfc1iacgh4eaf6g0jjhk721a_750x819.jpg_750x999.jpg'),
	(null,60,'../image/subdivision/nanzhuang/xiuxian/4/170819_5gh6131jk0254k5lj97ae963ka0dg_790x1100.jpg_750x999.jpg'),
	(null,60,'../image/subdivision/nanzhuang/xiuxian/4/170819_06282612311b2k7il62a1db6gf6a1_790x647.jpg_750x999.jpg'),
	(null,60,'../image/subdivision/nanzhuang/xiuxian/4/170819_0l2a253fk4963ijhjh11ic8ggej07_790x750.jpg_750x999.jpg'),
	(null,60,'../image/subdivision/nanzhuang/xiuxian/4/170819_6f09ai107c852a6g4fd427clih9dj_790x748.jpg_750x999.jpg'),
	(null,61,'../image/subdivision/nanzhuang/xiuxian/5/170816_81adce6j9ejf1ecj94617k4ee8c9g_750x775.jpg_750x999.jpg'),
	(null,61,'../image/subdivision/nanzhuang/xiuxian/5/170816_128d5b4hjke3b7fl850f14hfj98l6_750x823.jpg_750x999.jpg'),
	(null,61,'../image/subdivision/nanzhuang/xiuxian/5/170816_325afh1a3bk70j91h2elda1lceghe_750x773.jpg_750x999.jpg'),
	(null,61,'../image/subdivision/nanzhuang/xiuxian/5/170816_736d2l3c92d0ed80d76a2j9311dea_750x815.jpg_750x999.jpg'),
	(null,62,'../image/subdivision/nanzhuang/xiuxian/6/170609_8fjfebf25j7h13f3c24f092ggbhi1_750x878.jpg_750x999.jpg'),
	(null,62,'../image/subdivision/nanzhuang/xiuxian/6/170609_0ij7l4c9j1l4e52cjl2k9316dh9cb_750x854.jpg_750x999.jpg'),
	(null,62,'../image/subdivision/nanzhuang/xiuxian/6/170609_1aa6bdhjjh2h31gkic86calhg4k40_750x1023.jpg_750x999.jpg'),
	(null,62,'../image/subdivision/nanzhuang/xiuxian/6/170609_0ac9ji5l0816b56j36c82k71i96kl_750x823.jpg_750x999.jpg'),
	(null,63,'../image/subdivision/nanzhuang/xiuxian/7/101695604_74dlgf1i7a2klh67dai4g4967kid0_750x1130.jpg_750x999.jpg'),
	(null,63,'../image/subdivision/nanzhuang/xiuxian/7/101695604_6c316f35580i6ca209020k9l4j6j0_750x630.jpg_750x999.jpg'),
	(null,63,'../image/subdivision/nanzhuang/xiuxian/7/101695604_3la91d192gje7116aa70jg38696fe_640x960.jpg_750x999.jpg'),
	(null,63,'../image/subdivision/nanzhuang/xiuxian/7/101695604_1b8cc9gjegiejef3ge761c54ca1bk_640x848.jpg_750x999.jpg'),
	(null,64,'../image/subdivision/nanzhuang/xiuxian/8/170807_1ekgil525f998lef5jd7ica1ah6h0_640x362.jpg_750x999.jpg'),
	(null,64,'../image/subdivision/nanzhuang/xiuxian/8/170807_1gk12ffhb5hikk7a47440j6jf2i3j_790x502.jpg_750x999.jpg'),
	(null,64,'../image/subdivision/nanzhuang/xiuxian/8/170807_5ike2g0d21g56e6415ef4h1g4g6di_790x527.jpg_750x999.jpg'),
	(null,64,'../image/subdivision/nanzhuang/xiuxian/8/170807_5l1962e9lfd7ahkhc99f32klfgajj_790x527.jpg_750x999.jpg'),
	(null,65,'../image/subdivision/nvxie/xiaobai/1/171016_86blde0a3ab2l9h5jh45cd6c2k0ea_750x1126.jpg_750x999.jpg'),
	(null,65,'../image/subdivision/nvxie/xiaobai/1/171016_03l0ahfgf7e70g3dcagag74hjal16_750x878.jpg_750x999.jpg'),
	(null,65,'../image/subdivision/nvxie/xiaobai/1/171016_87i175255ihde1c4k27bc993fg021_750x1390.jpg_750x999.jpg'),
	(null,65,'../image/subdivision/nvxie/xiaobai/1/171016_34gh944igd86cick23f6ldff0l86c_750x1276.jpg_750x999.jpg'),
	(null,66,'../image/subdivision/nvxie/xiaobai/2/170421_1k09dj5i3714gad18f4eedhk21a80_640x960.jpg_750x999.jpg'),
	(null,66,'../image/subdivision/nvxie/xiaobai/2/170426_2lhibebfcchk2j11l748gf1adag95_750x1300.jpg_750x999.jpg'),
	(null,66,'../image/subdivision/nvxie/xiaobai/2/170426_1lbb5lgdj68la077i98lgdc742hj8_750x1008.jpg_750x999.jpg'),
	(null,66,'../image/subdivision/nvxie/xiaobai/2/170426_70j373271j0ga53jj8k55ch4c3he7_750x1174.jpg_750x999.jpg'),
	(null,67,'../image/subdivision/nvxie/xiaobai/3/171007_4e85j8hl40ljljljbkj79g96e79gk_750x1125.jpg_750x999.jpg'),
	(null,67,'../image/subdivision/nvxie/xiaobai/3/171007_0jldbic9c9e2b888483hg878c9l7c_750x720.jpg_750x999.jpg'),
	(null,67,'../image/subdivision/nvxie/xiaobai/3/171007_31b3ca711e2ddhbl23d45517egi18_750x1070.jpg_750x999.jpg'),
	(null,67,'../image/subdivision/nvxie/xiaobai/3/171007_5b1a80hli0g5050919bjlclbcfb8d_750x1448.jpg_750x999.jpg'),
	(null,68,'../image/subdivision/nvxie/xiaobai/4/170929_87if8c34jgkcehh0dle4l6i5id7hh_750x652.jpg_750x999.jpg'),
	(null,68,'../image/subdivision/nvxie/xiaobai/4/170929_1jh956cl6lg065i984i3f5ac77gj3_750x708.jpg_750x999.jpg'),
	(null,68,'../image/subdivision/nvxie/xiaobai/4/170929_4a83fj4fac50dd6kjiaf24i5gb0i4_750x639.jpg_750x999.jpg'),
	(null,68,'../image/subdivision/nvxie/xiaobai/4/170929_3l40aj02k726c72768ldd11k36fb1_750x707.jpg_750x999.jpg'),
	(null,69,'../image/subdivision/nvxie/xiaobai/5/170801_74gfch71i874de5i3402fjl08a5f3_800x1178.jpg_750x999.jpg'),
	(null,69,'../image/subdivision/nvxie/xiaobai/5/170801_576ff47f00kef232i8lcjg818h9hb_800x715.jpg_750x999.jpg'),
	(null,69,'../image/subdivision/nvxie/xiaobai/5/170801_4l9gj2274ldikbk5e9016b34822j2_800x800.jpg_750x999.jpg'),
	(null,69,'../image/subdivision/nvxie/xiaobai/5/170801_4fj8910l2329aa0c07582118dg76a_800x800.jpg_750x999.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170416_617676behl558ijke803ahbf0bk21_747x638.jpg_750x999.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170416_0bhb87i5ghbc4d11c5gdid22ijjbd_750x722.jpg_750x999.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170416_22ai77b6j4311i0fjgf803h14b70c_790x554.jpg_750x999.jpg'),
	(null,70,'../image/subdivision/nvxie/xiaobai/6/170416_1fblejeb6k1194451d6i6fgi4k40a_790x734.jpg_750x999.jpg'),
	(null,71,'../image/subdivision/nvxie/xiaobai/7/171016_4fcde1d1ciaii34hek459305ja7ba_640x640.jpg_750x999.jpg'),
	(null,71,'../image/subdivision/nvxie/xiaobai/7/170504_7243f4890gakl78d254akg8jlfade_640x960.jpg_750x999.jpg'),
	(null,71,'../image/subdivision/nvxie/xiaobai/7/170504_828igl3d2gl26l351l79ig20k5cck_640x960.jpg_750x999.jpg'),
	(null,71,'../image/subdivision/nvxie/xiaobai/7/170504_45hkic5dc01cgj401l58h196dd187_640x960.jpg_750x999.jpg'),
	(null,72,'../image/subdivision/nvxie/xiaobai/8/170828_35dj90k2437766j8c2cgjb61c0hha_750x1102.jpg_750x999.jpg'),
	(null,72,'../image/subdivision/nvxie/xiaobai/8/170828_581l35i9c3g1bi9jg3ffdc9j3h2h4_750x1132.jpg_750x999.jpg'),
	(null,72,'../image/subdivision/nvxie/xiaobai/8/170828_6khlhed5f205bdd1585j9dclf4dhb_750x1166.jpg_750x999.jpg'),
	(null,72,'../image/subdivision/nvxie/xiaobai/8/170828_45e91i2g28l45ll492l66gb1eji58_750x1096.jpg_750x999.jpg'),
	(null,73,'../image/subdivision/nvxie/xuezi/1/170805_4jeg0b83id3ee37g5j5k2jj27ejec_805x1208.jpg_750x999.jpg'),
	(null,73,'../image/subdivision/nvxie/xuezi/1/170915_705k5j4ff0fi3h6ce5abeg95ki9e4_775x1162.jpg_750x999.jpg'),
	(null,73,'../image/subdivision/nvxie/xuezi/1/170915_50k93e0akd81ih50i00k3hb6b996i_750x722.jpg_750x999.jpg'),
	(null,73,'../image/subdivision/nvxie/xuezi/1/170915_3k0f9bkg2laj7afha4kh89k99jf2g_750x733.jpg_750x999.jpg'),
	(null,74,'../image/subdivision/nvxie/xuezi/2/171026_3ekkk1ci31k3fccbf4bf90e37gkcd_640x1180.jpg_750x999.jpg'),
	(null,74,'../image/subdivision/nvxie/xuezi/2/171026_0geelhkje558ic8f35fe0c667bfb3_640x1064.jpg_750x999.jpg'),
	(null,74,'../image/subdivision/nvxie/xuezi/2/83773287_6303e7kj7g6al88ab962i160e1620_800x800.jpg_750x999.jpg'),
	(null,74,'../image/subdivision/nvxie/xuezi/2/83773287_7116777k0k0544kg8e1f7a8ggfl7c_640x960.jpg_750x999.jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_72ak2clgc18le8ke3lbfcf0hk9bh3_750x811.jpg_750x999.jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_7k1ahkb6i0kgbbg8g91ie4135fd6a_750x953.jpg_750x999.jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_1c4ichej0a8c23gf6e31hi07k61cg_750x757.jpg_750x999.jpg'),
	(null,75,'../image/subdivision/nvxie/xuezi/3/170913_3bdgfa2h3ckcd6b1d4aadakijka72_750x729.jpg_750x999.jpg'),
	(null,76,'../image/subdivision/nvxie/xuezi/4/48016605_2j9li734818ge43lg1h9dgg9lj3lg_800x800.jpg_750x999.jpg'),
	(null,76,'../image/subdivision/nvxie/xuezi/4/48016605_0c8l1k54egeie2hhd20iklkli5k9c_2000x3000.jpg_750x999.jpg'),
	(null,76,'../image/subdivision/nvxie/xuezi/4/48016605_08egj11ihbfgfbeace6aj7j6j1a5d_2000x3000.jpg_750x999.jpg'),
	(null,76,'../image/subdivision/nvxie/xuezi/4/48016605_8c1e8aa47ceha2kcj5939hgga233k_2000x3000.jpg_750x999.jpg'),
	(null,77,'../image/subdivision/nvxie/xuezi/5/170927_00f4bdl06bik56cclcfbg037c6773_750x1560.jpg_750x999.jpg'),
	(null,77,'../image/subdivision/nvxie/xuezi/5/170927_4ldljj2bfe2j0agh34dg869ll9h4a_750x487.jpg_750x999.jpg'),
	(null,77,'../image/subdivision/nvxie/xuezi/5/170927_52ck00a40l2j419k77796800icb83_750x1044.jpg_750x999.jpg'),
	(null,77,'../image/subdivision/nvxie/xuezi/5/170927_079iki90d46bj7069j04k78kedjai_750x904.jpg_750x999.jpg'),
	(null,78,'../image/subdivision/nvxie/xuezi/6/170914_3cih80g7l5i45072f464ejhei258k_970x970.jpg_750x999.jpg'),
	(null,78,'../image/subdivision/nvxie/xuezi/6/170914_1bgacjei015fj5j1865ekab5ibgcl_970x970.jpg_750x999.jpg'),
	(null,78,'../image/subdivision/nvxie/xuezi/6/170914_4ik4l5cf72g9j7g5eha2bbgec8jb8_970x970.jpg_750x999.jpg'),
	(null,78,'../image/subdivision/nvxie/xuezi/6/170914_8b2h1jdfbc63e991df80eif24je23_970x970.jpg_750x999.jpg'),
	(null,79,'../image/subdivision/nvxie/xuezi/7/171009_452670k0a08lc5a4c1j9be0k6d78e_790x1424.jpg_750x999.jpg'),
	(null,79,'../image/subdivision/nvxie/xuezi/7/171009_452670k0a08lc5a4c1j9be0k6d78e_790x1424.jpg_750x999 (1).jpg'),
	(null,79,'../image/subdivision/nvxie/xuezi/7/170911_888ek8j9hdead9gc9k9ai7d62c69h_750x754.jpg_750x999.jpg'),
	(null,79,'../image/subdivision/nvxie/xuezi/7/170816_2a4e4ce0kg16bik0e7990e80e4ie1_640x1200.jpg_750x999.jpg'),
	(null,80,'../image/subdivision/nvxie/xuezi/8/171019_364i1cgl32h4ceddgb0bgdefba4ji_640x1251.jpg_750x999.jpg'),
	(null,80,'../image/subdivision/nvxie/xuezi/8/171019_083gckf91kdhhea160g12j28dcj8b_640x960.jpg_750x999.jpg'),
	(null,80,'../image/subdivision/nvxie/xuezi/8/171019_8h408l6d1k7kilgg43j354iigbc9k_640x960.jpg_750x999.jpg'),
	(null,80,'../image/subdivision/nvxie/xuezi/8/171019_72jd2i2kei4cb2f21bc0032fkbf40_640x640.jpg_750x999.jpg'),
	(null,81,'../image/subdivision/nvxie/danxie/1/171018_5b1g7bg4h5eb8kdgkilfad7l68ck1_750x750.jpg_750x999.jpg'),
(null,81,'../image/subdivision/nvxie/danxie/1/171018_2f41g3g11967h9j6k0d1ghjf58kd7_750x750.jpg_750x999.jpg'),
(null,81,'../image/subdivision/nvxie/danxie/1/171020_6dce0570ed83iehe7e684ba9deceb_750x750.jpg_750x999.jpg'),
(null,81,'../image/subdivision/nvxie/danxie/1/171020_6gl17db692a5868kli9bb43bg09cl_750x750.jpg_750x999.jpg'),
(null,82,'../image/subdivision/nvxie/danxie/2/171012_2bj3dbj99jjc96683i32g1861bbjd_800x800.jpg_750x999.jpg'),
(null,82,'../image/subdivision/nvxie/danxie/2/171012_5k9c71f04hke9h80jb9c9a4l0id3c_800x800.jpg_750x999.jpg'),
(null,82,'../image/subdivision/nvxie/danxie/2/171012_2hhglca5667kccdhh7ail9iaig9ek_800x800.jpg_750x999.jpg'),
(null,82,'../image/subdivision/nvxie/danxie/2/171012_3h4k25i0k08jgg1f7eihlfe6a7h73_800x800.jpg_750x999.jpg'),
(null,83,'../image/subdivision/nvxie/danxie/3/171005_8c8l4767h71gg545bdf3f2lb566e1_750x750.jpg_750x999.jpg'),
(null,83,'../image/subdivision/nvxie/danxie/3/171005_3hh3ic4kad3i8kdcdkb3h39797ehb_750x750.jpg_750x999.jpg'),
(null,83,'../image/subdivision/nvxie/danxie/3/171005_1991b94beb3b53572i03db21hljib_750x750.jpg_750x999.jpg'),
(null,83,'../image/subdivision/nvxie/danxie/3/171005_00be6j6ecf9e5df111f2246a38bfd_750x750.jpg_750x999.jpg'),
(null,84,'../image/subdivision/nvxie/danxie/4/170923_0fd9c2egi440eh11jahjfb45513f3_686x624.png_750x999.jpg'),
(null,84,'../image/subdivision/nvxie/danxie/4/170923_4c4llbk86a3be6f5496227dkg8286_737x723.png_750x999.jpg'),
(null,84,'../image/subdivision/nvxie/danxie/4/170923_6546dd23ag4kd8c9cak3i72k3if8f_731x740.png_750x999.jpg'),
(null,84,'../image/subdivision/nvxie/danxie/4/170923_3cc9de0j38ebf86k5dg1kah09l086_713x700.png_750x999.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_64c8i90gd32i3ie72570h9ad642e3_677x643.jpg_750x999.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_3jja5i0ia5a20ckb3j2eah015j6bi_688x629.jpg_750x999.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_4119f4be9h0ecljk30643430b9k4i_692x671.jpg_750x999.jpg'),
(null,85,'../image/subdivision/nvxie/danxie/5/170920_68h22feii305dggf7l8je9j88ge9a_677x661.jpg_750x999.jpg'),
(null,86,'../image/subdivision/nvxie/danxie/6/170701_0jagca9712878kfi43a1b08cb7hje_970x970.jpg_750x999.jpg'),
(null,86,'../image/subdivision/nvxie/danxie/6/170701_0g7ja296kg86i990eahbd75j7haf1_970x970.jpg_750x999.jpg'),
(null,86,'../image/subdivision/nvxie/danxie/6/170701_1kgkjc6c54d3khd9l60ljhlbgaali_970x970.jpg_750x999.jpg'),
(null,86,'../image/subdivision/nvxie/danxie/6/170701_31gga8b83iil46h7j0fb3d5cb51ja_970x970.jpg_750x999.jpg'),
(null,87,'../image/subdivision/nvxie/danxie/7/171022_5l5acl9c0hi4ja6d0j9i1jk9clb8d_750x2715.jpg_750x999.jpg'),
(null,87,'../image/subdivision/nvxie/danxie/7/171022_5l5acl9c0hi4ja6d0j9i1jk9clb8d_750x2715.jpg_750x999 (1).jpg'),
(null,87,'../image/subdivision/nvxie/danxie/7/171022_5l5acl9c0hi4ja6d0j9i1jk9clb8d_750x2715.jpg_750x999 (2).jpg'),
(null,87,'../image/subdivision/nvxie/danxie/7/171022_68d52e6f4g5akgik72k75bfgf805k_750x3390.jpg_750x999.jpg'),
(null,88,'../image/subdivision/nvxie/danxie/8/171013_57i9cd69cal2648fgk56ggjblbki0_800x1027.jpg_750x999.jpg'),
(null,88,'../image/subdivision/nvxie/danxie/8/171013_4l5b26kkhid30lg8jafgjc48ibke4_800x1025.jpg_750x999.jpg'),
(null,88,'../image/subdivision/nvxie/danxie/8/171014_4edjc0b4j5l23b6c076gafldi219h_800x836.jpg_750x999.jpg'),
(null,88,'../image/subdivision/nvxie/danxie/8/171014_6j857l50731j657k4jbc2e4jj4ehd_800x768.jpg_750x999.jpg'),
(null,89,'../image/subdivision/nanxie/yundong/1/171003_131gefk8jk186283bg933gf051aab_790x1108.jpg_750x999.jpg'),
(null,89,'../image/subdivision/nanxie/yundong/1/171003_5chl8g54ebe1jj854ca91e935b6d0_790x1062.jpg_750x999.jpg'),
(null,89,'../image/subdivision/nanxie/yundong/1/171003_1ag7fj5c110625jk4idd56g75hlh9_790x1294.jpg_750x999.jpg'),
(null,89,'../image/subdivision/nanxie/yundong/1/171003_5377d2ja7l46fg648b7047cdj45lc_790x1382.jpg_750x999.jpg'),
(null,90,'../image/subdivision/nanxie/yundong/2/171005_24b09gic477f20ihc2fb84e4e688g_800x800.jpg_750x999.jpg'),
(null,90,'../image/subdivision/nanxie/yundong/2/171005_438a8f9ifb8780ca637j2070j4881_800x800.jpg_750x999.jpg'),
(null,90,'../image/subdivision/nanxie/yundong/2/171019_304338k1le57d53lkk44b5lbj9a5f_790x988.jpg_750x999.jpg'),
(null,90,'../image/subdivision/nanxie/yundong/2/171019_78g42064aac0ckj0l778h1k75l691_790x1100.jpg_750x999.jpg'),
(null,91,'../image/subdivision/nanxie/yundong/3/170708_180kkj1lac0g1k7lbi5g797f9ak1d_790x1010.jpg_750x999.jpg'),
(null,91,'../image/subdivision/nanxie/yundong/3/170708_49e35leh5f45lf3gbagfgafegdcc5_790x1000.jpg_750x999.jpg'),
(null,91,'../image/subdivision/nanxie/yundong/3/170708_3c46ii932329i16159hdl4dhhal7a_790x1268.jpg_750x999.jpg'),
(null,91,'../image/subdivision/nanxie/yundong/3/170803_0958gg18fbdcld8423acja3j8410f_790x975.jpg_750x999.jpg'),
(null,92,'../image/subdivision/nanxie/yundong/4/171005_1i7ef1h872d5bj1k7i50263bj5c7j_750x930.jpg_750x999.jpg'),
(null,92,'../image/subdivision/nanxie/yundong/4/171005_02hfc1780di1l38hlk6cjh0d9j0h5_750x930.jpg_750x999.jpg'),
(null,92,'../image/subdivision/nanxie/yundong/4/171005_1ac87e8diaj67i9l4g7cl064e1d4k_750x940.jpg_750x999.jpg'),
(null,92,'../image/subdivision/nanxie/yundong/4/171005_5c8fg66j3dc20jk32djlcjl67dafh_750x1164.jpg_750x999.jpg'),
(null,93,'../image/subdivision/nanxie/yundong/5/171028_5h4d4ec56gia7jghla42ejhll099k_750x889.jpg_750x999.jpg'),
(null,93,'../image/subdivision/nanxie/yundong/5/170720_76fj11ldik6lk106ciha0319jf6f8_749x1167.jpg_750x999.jpg'),
(null,93,'../image/subdivision/nanxie/yundong/5/170720_3g7d9abc8d6f754k7i0630falefie_728x1160.jpg_750x999.jpg'),
(null,93,'../image/subdivision/nanxie/yundong/5/170720_151dgd8245bflcd43f9kk4e0i6hh4_750x1109.jpg_750x999.jpg'),
(null,94,'../image/subdivision/nanxie/yundong/6/170818_6beja8ld07aale08id7lkegf4h045_800x800.jpg_750x999.jpg'),
(null,94,'../image/subdivision/nanxie/yundong/6/170818_3dcehh60bfjd9edj93472130acj9j_800x800.jpg_750x999.jpg'),
(null,94,'../image/subdivision/nanxie/yundong/6/170818_03c5538gfbelgbi1kl03698gdb3e9_800x800.jpg_750x999.jpg'),
(null,94,'../image/subdivision/nanxie/yundong/6/170818_391747760labfgjd7j32lecielc64_800x800.jpg_750x999.jpg'),
(null,95,'../image/subdivision/nanxie/yundong/7/170829_3jbaff1e2cgb0e4db459a03g2hgi3_750x687.jpg_750x999.jpg'),
(null,95,'../image/subdivision/nanxie/yundong/7/170829_55077df682ha13bkec2a5hh310fh7_750x697.jpg_750x999.jpg'),
(null,95,'../image/subdivision/nanxie/yundong/7/170829_75c76ci00abekfhd2f526e4de4leg_750x524.jpg_750x999.jpg'),
(null,95,'../image/subdivision/nanxie/yundong/7/170829_7d9bh9all7aj57k8f3fdc1600bha3_750x880.jpg_750x999.jpg'),
(null,96,'../image/subdivision/nanxie/yundong/8/170730_792619iid136feb17glkb3a788l13_790x870.jpg_750x999.jpg'),
(null,96,'../image/subdivision/nanxie/yundong/8/170730_6ad364l4c0bjlg9j6bk6caiibbaf2_790x770.jpg_750x999.jpg'),
(null,96,'../image/subdivision/nanxie/yundong/8/170730_6g44la3c9kg07d8b4c722h3k7e7k7_790x1166.jpg_750x999.jpg'),
(null,96,'../image/subdivision/nanxie/yundong/8/170730_49bh8i742al09ik79hkbg4bi9fj8l_790x844.jpg_750x999.jpg'),
(null,97,'../image/subdivision/nanxie/nanxue/1/171013_04ahg0801503ghif06hl9618c5idb_790x1328.jpg_750x999.jpg'),
(null,97,'../image/subdivision/nanxie/nanxue/1/170905_5beh8kijlk95158bae41ghd5k7lbk_790x780.jpg_750x999.jpg'),
(null,97,'../image/subdivision/nanxie/nanxue/1/170905_76idhi5i1h41k5hg5l58ah2hifehj_790x1014.jpg_750x999.jpg'),
(null,97,'../image/subdivision/nanxie/nanxue/1/170905_4e9ehkf2ijbbijefgacifg20309c1_790x1262.jpg_750x999.jpg'),
(null,98,'../image/subdivision/nanxie/nanxue/2/170926_5ij69k042hjk9ljdachgka102lek4_790x929.jpg_750x999.jpg'),
(null,98,'../image/subdivision/nanxie/nanxue/2/170926_4cd9fcid9e9g2bchdi6gkfgbidb43_790x1038.jpg_750x999.jpg'),
(null,98,'../image/subdivision/nanxie/nanxue/2/170926_1947b37138d13alj0h3db791lfjcj_790x1295.jpg_750x999.jpg'),
(null,98,'../image/subdivision/nanxie/nanxue/2/170926_5kb1g5f69f2941g56d931dkeb6245_790x1175.jpg_750x999.jpg'),
(null,99,'../image/subdivision/nanxie/nanxue/3/170921_4b4269b8i2lddk17ci2ci1gcj9c12_800x800.jpg_750x999.jpg'),
(null,99,'../image/subdivision/nanxie/nanxue/3/170921_5k67ge7acjd5cl778jjjji09d4eb4_800x800.jpg_750x999.jpg'),
(null,99,'../image/subdivision/nanxie/nanxue/3/170921_20hik22a2e4e1j97977blch589il4_800x800.jpg_750x999.jpg'),
(null,99,'../image/subdivision/nanxie/nanxue/3/170921_1l351k187heklaf0i9358f1ceg30h_800x800.jpg_750x999.jpg'),
(null,100,'../image/subdivision/nanxie/nanxue/4/170925_1h4915h2cec7chk4gk48cgga48i6f_790x918.jpg_750x999.jpg'),
(null,100,'../image/subdivision/nanxie/nanxue/4/170925_5hglj94llhc8hddfad0gf01c987f3_790x939.jpg_750x999.jpg'),
(null,100,'../image/subdivision/nanxie/nanxue/4/170925_892jj1aa74e32f1893lk67ged065h_790x976.jpg_750x999.jpg'),
(null,100,'../image/subdivision/nanxie/nanxue/4/170925_3k8jj3h888500416494fc1aie81i1_790x905.jpg_750x999.jpg'),
(null,101,'../image/subdivision/nanxie/nanxue/5/170927_1gaj9gj3ckf093f59979b332cb42b_640x418.jpg_750x999.jpg'),
(null,101,'../image/subdivision/nanxie/nanxue/5/170927_63jb4kg27513dhed8gglhg5ljg7ff_640x669.jpg_750x999.jpg'),
(null,101,'../image/subdivision/nanxie/nanxue/5/170927_2009f0h64dfbg45ida4gfa7d0c381_640x524.jpg_750x999.jpg'),
(null,101,'../image/subdivision/nanxie/nanxue/5/170927_8gd8hbd2aa821k9h3853lh16597j0_640x555.jpg_750x999.jpg'),
(null,102,'../image/subdivision/nanxie/nanxue/6/171001_7e5id98ele2k44e6h80l9b3k5ej0e_750x1579.jpg_750x999.jpg'),
(null,102,'../image/subdivision/nanxie/nanxue/6/171001_2jhg7iggb0f7d7lgfb72g7alblk79_750x1550.jpg_750x999.jpg'),
(null,102,'../image/subdivision/nanxie/nanxue/6/171001_6b92fedk2l7jc12dlf55bk8d20dah_750x1595.jpg_750x999.jpg'),
(null,102,'../image/subdivision/nanxie/nanxue/6/171001_4gbdha0dd170li3g6l61f3258fa1e_750x1541.jpg_750x999.jpg'),
(null,103,'../image/subdivision/nanxie/nanxue/7/170805_050h5iih99lkkj4c9jaf3ca2c8102_790x1160.jpg_750x999.jpg'),
(null,103,'../image/subdivision/nanxie/nanxue/7/170805_5dklakielj5j60ckf4ja0fk5b26dc_790x1033.jpg_750x999.jpg'),
(null,103,'../image/subdivision/nanxie/nanxue/7/170805_46ld74hc1ll4fad54f2gj9i0ed87h_790x864.jpg_750x999.jpg'),
(null,103,'../image/subdivision/nanxie/nanxue/7/170805_0g6kgh4b40a16la3ce20138jeflh4_790x1176.jpg_750x999.jpg'),
(null,104,'../image/subdivision/nanxie/nanxue/8/83224545_6i5bfebca75kaii16826glfakb4l6_800x800.jpg_750x999.jpg'),
(null,104,'../image/subdivision/nanxie/nanxue/8/83224545_54ll2c2ibi9efkl1g69hfgl83il0b_800x800.jpg_750x999.jpg'),
(null,104,'../image/subdivision/nanxie/nanxue/8/83224545_189aacd0bb5g4372likl2gdae3864_800x800.jpg_750x999.jpg'),
(null,104,'../image/subdivision/nanxie/nanxue/8/77101615_6f3ak83kkl00329ged9249aa93ifb_1125x285.jpg_750x999.jpg'),
(null,105,'../image/subdivision/quanshen/1/171026_00l6b43g008c4jd1f46j5j38def3i_673x966.jpg_750x999.jpg'),
(null,105,'../image/subdivision/quanshen/1/171026_5kkg3e7ej90c9je5c1fc8ej3b9hd3_750x1292.jpg_750x999.jpg'),
(null,105,'../image/subdivision/quanshen/1/171026_717f3eg1j711a32gga0hg64je228h_750x768.jpg_750x999.jpg'),
(null,105,'../image/subdivision/quanshen/1/171026_4h1dckh1l83b3chc2la6lh2kg3g5g_673x1167.jpg_750x999.jpg'),
(null,106,'../image/subdivision/quanshen/2/171005_60a4j4h8lfdalkbddhc1e2kai00c7_750x1125.jpg_750x999.jpg'),
(null,106,'../image/subdivision/quanshen/2/171005_6664g5j5b63e8k9chjjfg6e4ke5l6_750x1125.jpg_750x999.jpg'),
(null,106,'../image/subdivision/quanshen/2/171005_77ii6fl9bfj1728fa6b2bh4jcb8d8_750x500.jpg_750x999.jpg'),
(null,106,'../image/subdivision/quanshen/2/171005_8a515c0j9b2hfa91lcbje16213kdl_750x1125.jpg_750x999.jpg'),
(null,107,'../image/subdivision/quanshen/3/171024_5b579c4901cd3faa95kbf41gfc5h7_800x800.jpg_750x999.jpg'),
(null,107,'../image/subdivision/quanshen/3/171024_46df4jlk83i728i5ge75jbah4bc76_800x800.jpg_750x999.jpg'),
(null,107,'../image/subdivision/quanshen/3/171024_6fgi52ce6daicdda2c72f0f28cl20_800x800.jpg_750x999.jpg'),
(null,107,'../image/subdivision/quanshen/3/171024_4kbj6c4hg20jeiaed26hlb38bgebj_750x1125.jpg_750x999.jpg'),
(null,108,'../image/subdivision/quanshen/4/171030_3cf30cgla070cjf9ik0d7g5iag361_790x1056.jpg_750x999.jpg'),
(null,108,'../image/subdivision/quanshen/4/171030_332e330gc95i2gb8g76i2j6la78g7_790x1167.jpg_750x999.jpg'),
(null,108,'../image/subdivision/quanshen/4/171030_83i158j4g2kl98eb9hi673i7gb6fe_640x960.jpg_750x999.jpg'),
(null,108,'../image/subdivision/quanshen/4/171030_5ffc549lb0dg33be21ejlia8je2ak_640x960.jpg_750x999.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_41dbgi61j4e2k7ib9ked4f876c6gd_640x758.jpg_750x999.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_6g30672khghlk363i036k39ee8dk9_750x1054.jpg_750x999.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_621g4b4ah3i0d8e9g1k6901h8cf3l_750x1117.jpg_750x999.jpg'),
(null,109,'../image/subdivision/quanshen/5/170927_4cid1gddb151lkg174f9cbab7hegl_750x699.jpg_750x999.jpg'),
(null,110,'../image/subdivision/quanshen/6/171025_710ill5ffh4ec4i40f62kag6b6g2l_750x1070.jpg_750x999.jpg'),
(null,110,'../image/subdivision/quanshen/6/171025_743h44g20g7845jg6hd234e7h68ga_750x601.jpg_750x999.jpg'),
(null,110,'../image/subdivision/quanshen/6/171025_3ki11hc128205ihib5cc549j57751_750x810.jpg_750x999.jpg'),
(null,110,'../image/subdivision/quanshen/6/171025_2fd656366i50jhi858404fl5i5ce6_750x750.jpg_750x999.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_02de7kkbh5e727gdeigkbelk03hkc_750x1057.jpg_750x999.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_3a63d154b4i02gb5j653k1k9h342e_750x794.jpg_750x999.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_5edka86kbi6h1k2k343bb94k27jj1_750x1055.jpg_750x999.jpg'),
(null,111,'../image/subdivision/quanshen/7/170927_700hjg0k1k30j6b3jeejb20j12f24_750x924.jpg_750x999.jpg'),
(null,112,'../image/subdivision/quanshen/8/171023_4fac6304cg05if5df9kc6cb44cl7f_750x882.jpg_750x999.jpg'),
(null,112,'../image/subdivision/quanshen/8/171023_620ag0bbjkh9e7144be7h0743f0fl_750x656.jpg_750x999.jpg'),
(null,112,'../image/subdivision/quanshen/8/171023_31ghab2la642i4gbelblbabckaag8_750x988.jpg_750x999.jpg'),
(null,112,'../image/subdivision/quanshen/8/171023_6akgl26c41f48h10ljdbg88jcf2a1_750x989.jpg_750x999.jpg'),
(null,113,'../image/subdivision/quanshen/9/170821_6062a7k677da37dbdha515hlg4119_750x1000.jpg_750x999.jpg'),
(null,113,'../image/subdivision/quanshen/9/170821_31154iecjjh79fc3h2dg1j2k0j655_720x1080.jpg_750x999.jpg'),
(null,113,'../image/subdivision/quanshen/9/170821_5f5h6effkb0kig2fila047c3jflba_720x1080.jpg_750x999.jpg'),
(null,113,'../image/subdivision/quanshen/9/170821_67h90la8e148g49li10jg3ccda4kg_720x1080.jpg_750x999.jpg'),
(null,114,'../image/subdivision/quanshen/10/171028_19222fbk6575dabl9dh187634ih14_750x540.jpg_750x999.jpg'),
(null,114,'../image/subdivision/quanshen/10/171028_289k5gc35a3a44lajg8c8222hl0h7_750x1165.jpg_750x999.jpg'),
(null,114,'../image/subdivision/quanshen/10/171028_4khi57ek5e563b2h4cl8l76859ba7_750x1165.jpg_750x999.jpg'),
(null,114,'../image/subdivision/quanshen/10/171028_80bjf72e14c9i4kg32bdce310ahgj_750x1165.jpg_750x999.jpg'),
(null,115,'../image/subdivision/quanshen/11/171026_4chdi45di217i9b935gih462j377a_640x640.jpg_750x999.jpg'),
(null,115,'../image/subdivision/quanshen/11/171026_85j7c514563ghk3kbfae36cjbi7l9_640x640.jpg_750x999.jpg'),
(null,115,'../image/subdivision/quanshen/11/171026_6g76j59hl0cd85ld5l7f330k844hd_640x640.jpg_750x999.jpg'),
(null,115,'../image/subdivision/quanshen/11/171026_493l36eea1i450ge48a1h4igj19bb_640x640.jpg_750x999.jpg'),
(null,116,'../image/subdivision/quanshen/12/171027_0ie2cb2ed9088kki7e092idj81ilf_750x1134.jpg_750x999.jpg'),
(null,116,'../image/subdivision/quanshen/12/171027_4a97ibkj3b6a3562j33ch408f87l1_750x938.jpg_750x999.jpg'),
(null,116,'../image/subdivision/quanshen/12/171027_1l0hg3ek149bjlafc0bd128k03k1c_750x1205.jpg_750x999.jpg'),
(null,116,'../image/subdivision/quanshen/12/171027_66kbhfajl6kb9ecddaec7645a7468_750x1182.jpg_750x999.jpg');
