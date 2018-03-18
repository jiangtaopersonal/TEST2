SET NAMES UTF8;
DROP DATABASE IF EXISTS redwine;
CREATE DATABASE redwine CHARSET=UTF8;
USE redwine;

CREATE TABLE products(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(16),
  way VARCHAR(50), /*路径*/
  imgway VARCHAR(20), /*图片路径*/
  breed VARCHAR(20), /*品种*/
  sales VARCHAR(2000), /*销量*/
  priceage VARCHAR(5), /*价格高*/
  pricenow VARCHAR(5), /*价格低*/
  productnumber VARCHAR(10), /*商品编号*/
  youhui VARCHAR(100), /*优惠政策*/
  weight VARCHAR(5), /*重量*/
  intr VARCHAR(100)/*简介*/
  );
INSERT INTO products VALUES(1, '法国红酒1','proddetails.html?pid=1','img/product1.jpg','红葡萄酒',50,1198,150,100040,'满199元减100元','0.02Kg','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(2, '日本橙酒2','proddetails.html?pid=2','img/product1.jpg','甜葡萄酒',50,1908,150,100041,'满199元减100元','0.58Kg','甜葡萄酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(3, '中国黄酒3','proddetails.html?pid=3','img/product1.jpg','白葡萄酒',50,205,150,100042,'满199元减100元','0.42Kg','白葡萄酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(4, '德国绿酒4','proddetails.html?pid=4','img/product1.jpg','桃红葡萄酒',50,1358,150,100043,'满199元减100元','0.92Kg','桃红葡萄酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(5, '英国青酒5','proddetails.html?pid=5','img/product1.jpg','起泡酒',50,198,1550,100044,'满199元减100元','0.32Kg','起泡酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(6, '加拿大蓝酒6','proddetails.html?pid=6','img/product1.jpg','白葡萄酒',50,1980,150,100045,'满199元减100元','0.82Kg','白葡萄酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(7, '越南紫酒7','proddetails.html?pid=7','img/product1.jpg','红葡萄酒',50,198,250,100046,'满199元减100元','0.02Kg','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(8, '缅甸鸡尾酒8','proddetails.html?pid=8','img/product1.jpg','水晶葡萄酒',50,5208,150,100047,'满199元减100元','0.22Kg','红葡萄酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(9, '俄罗斯七色酒9','proddetails.html?pid=9','img/product1.jpg','红葡萄酒',50,325,150,100048,'满199元减100元','0.32Kg','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');
INSERT INTO products VALUES(10, '巴基斯坦酒10','proddetails.html?pid=10','img/product1.jpg','红葡萄酒',50,238,150,100049,'满199元减100元','0.22Kg','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。');


CREATE TABLE articles(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  timeyear VARCHAR(10), /*时间年*/
  timemonth VARCHAR(10), /*时间月*/
  timesecond VARCHAR(10), /*时间分*/
  way VARCHAR(50), /*路径*/
  imgway VARCHAR(20), /*图片路径*/
  content VARCHAR(5000), /*文章内容*/
  breed VARCHAR(50) /*分类*/
  );
INSERT INTO articles VALUES(1, '最全澳洲葡萄酒详细介绍之一','1980','09-18','12.35','article_detail.html?aid=1','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(2, '最全澳洲葡萄酒详细介绍之二','1981','09-18','12.35','article_detail.html?aid=2','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(3, '最全澳洲葡萄酒详细介绍之三','1982','09-18','12.35','article_detail.html?aid=3','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(4, '最全澳洲葡萄酒详细介绍之四','1983','09-18','12.35','article_detail.html?aid=4','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(5, '最全澳洲葡萄酒详细介绍之无','1984','09-18','12.35','article_detail.html?aid=5','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(6, '最全澳洲葡萄酒详细介绍之六','1985','09-18','12.35','article_detail.html?aid=6','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(7, '最全澳洲葡萄酒详细介绍之七','1986','09-18','12.35','article_detail.html?aid=7','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(8, '最全澳洲葡萄酒详细介绍之八','1987','09-18','12.35','article_detail.html?aid=8','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(9, '最全澳洲葡萄酒详细介绍之九','1988','09-18','12.35','article_detail.html?aid=9','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(10, '最全澳洲葡萄酒详细介绍之十','1989','09-18','12.35','article_detail.html?aid=10','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(11, '最全澳洲葡萄酒详细介绍之十一','1990','09-18','12.35','article_detail.html?aid=11','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');
INSERT INTO articles VALUES(12, '最全澳洲葡萄酒详细介绍之十二','2010','09-18','12.35','article_detail.html?aid=12','img/product1.jpg','澳大利亚的国土面积与美国和西欧大致相同，为祖祖辈辈的葡萄酿酒师们提供了从寒冷、凉爽到温暖的各种气候和大量不同的土壤，如著名的Coonawarra terrarossa（库拉瓦拉特罗莎土）.

这些优越的自然条件和澳大利亚人自由奔放的天性相得益彰。


Cabernet Sauvignon （加本力苏维翁）在澳大利亚的葡萄酒产区有几个天然家园。一百多年来，著名的Coonawarra terra rossa（库拉瓦拉特罗莎）土壤最适于出产优质的Cabernet Sauvignon (加本力苏维翁)。就纯粹的风味而言，没有几个地区比得上西澳Margaret River (玛格利特河)出产的产品。

Pinot Noir（黑皮诺）这个品种通常不好栽培,不过它在澳大利亚凉爽的地区长得很好。而Shiraz（设拉子）除了在最冷的地区外，它实际上都能长势良好。有几个气候相对温和的地区则特别适合出产澳大利亚别具特色的佳酿——sparkling red Shiraz(设拉子红葡萄汽酒)。

无论你对红葡萄酒有什么样的特别喜好，大多数情况下澳大利亚葡萄酒中都有适合你的口味。下面向你介绍不同品种的澳大利亚葡萄酒各有哪些特色。',
'全部资讯');

CREATE TABLE shopcart(
  sid INT(20) PRIMARY KEY AUTO_INCREMENT,
  uuid INT(20), /*用户名*/
  ppid INT(20), /*产品名*/
  num INT(20) /*数量*/
  );
INSERT INTO shopcart VALUES(1, 1, 1,5);



CREATE TABLE user (
  `uid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `upwd` varchar(32),
  `uname` varchar(32),
  `email` varchar(64),
  `gender` int(11)
);
INSERT INTO user VALUES(default,'123456', 'dingding','1725748596@qq.com',1);



