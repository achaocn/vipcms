
SET FOREIGN_KEY_CHECKS=0;|

DROP TABLE IF EXISTS `tkjd_ad`;|
CREATE TABLE `tkjd_ad` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `board_id` int(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_ad VALUES ('11', '4', 'image', '登陆页广告图片', '#', '1704/19/58f736a6475d8.png', '', '', '', '1419782400', '1577548800', '0', '0', '255', '1');|
INSERT INTO tkjd_ad VALUES ('12', '5', 'image', '注册页广告', '#', '1704/20/58f8209e5fe43.png', '', '', '', '1419782400', '1609171200', '0', '0', '255', '1');|
INSERT INTO tkjd_ad VALUES ('20', '10', 'image', '顶部通栏广告位', '', '1512/31/5684d206233f8.jpg', '', '', '顶部通栏广告位', '1451491200', '1546185600', '0', '0', '255', '1');|
INSERT INTO tkjd_ad VALUES ('24', '13', 'image', '首页弹窗广告', '', '1607/18/578c7ed78954d.png', '', '', '首页弹窗广告', '1468771200', '1595001600', '0', '0', '255', '0');|
INSERT INTO tkjd_ad VALUES ('25', '14', 'image', '护肤专场', '', '1704/15/58f1d313469fe.jpg', '', '', '品牌街1', '1492185600', '1546099200', '0', '0', '255', '1');|
INSERT INTO tkjd_ad VALUES ('33', '14', 'image', '低价专场', '', '1707/03/5959e33416e36.jpg', '', '', '', '1499011200', '1546099200', '0', '0', '255', '1');|
INSERT INTO tkjd_ad VALUES ('34', '14', 'image', '品牌专场', '', '1707/03/5959e32653ec6.jpg', '', '', '', '1499011200', '1546099200', '0', '0', '255', '1');|


DROP TABLE IF EXISTS `tkjd_adboard`;|
CREATE TABLE `tkjd_adboard` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tpl` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_adboard VALUES ('4', '登陆页广告位', 'login', '510', '428', '', '1');|
INSERT INTO tkjd_adboard VALUES ('5', '注册页广告位', 'zhuce', '510', '428', '', '1');|
INSERT INTO tkjd_adboard VALUES ('10', '顶部通栏广告位', 'top', '1423', '50', '', '1');|
INSERT INTO tkjd_adboard VALUES ('13', '首页弹窗广告位', 'tanchuang', '554', '450', '', '1');|
INSERT INTO tkjd_adboard VALUES ('14', '首页品牌推荐', 'pinpai', '380', '150', '', '1');|


DROP TABLE IF EXISTS `tkjd_address`;|
CREATE TABLE `tkjd_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `address_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_admin`;|
CREATE TABLE `tkjd_admin` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` smallint(5) NOT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `last_time` int(10) DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_admin VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '101.24.122.193', '1499394860', 'admin@qq.com', '1');|

DROP TABLE IF EXISTS `tkjd_admin_auth`;|
CREATE TABLE `tkjd_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_admin_auth VALUES ('1', '1');|
INSERT INTO tkjd_admin_auth VALUES ('1', '2');|
INSERT INTO tkjd_admin_auth VALUES ('1', '3');|
INSERT INTO tkjd_admin_auth VALUES ('1', '4');|
INSERT INTO tkjd_admin_auth VALUES ('1', '6');|
INSERT INTO tkjd_admin_auth VALUES ('1', '7');|
INSERT INTO tkjd_admin_auth VALUES ('1', '8');|
INSERT INTO tkjd_admin_auth VALUES ('1', '9');|
INSERT INTO tkjd_admin_auth VALUES ('1', '10');|
INSERT INTO tkjd_admin_auth VALUES ('1', '11');|
INSERT INTO tkjd_admin_auth VALUES ('1', '12');|
INSERT INTO tkjd_admin_auth VALUES ('1', '13');|
INSERT INTO tkjd_admin_auth VALUES ('1', '14');|
INSERT INTO tkjd_admin_auth VALUES ('1', '15');|
INSERT INTO tkjd_admin_auth VALUES ('1', '17');|
INSERT INTO tkjd_admin_auth VALUES ('1', '18');|
INSERT INTO tkjd_admin_auth VALUES ('1', '19');|
INSERT INTO tkjd_admin_auth VALUES ('1', '23');|
INSERT INTO tkjd_admin_auth VALUES ('1', '24');|
INSERT INTO tkjd_admin_auth VALUES ('1', '25');|
INSERT INTO tkjd_admin_auth VALUES ('1', '26');|
INSERT INTO tkjd_admin_auth VALUES ('1', '27');|
INSERT INTO tkjd_admin_auth VALUES ('1', '28');|
INSERT INTO tkjd_admin_auth VALUES ('1', '31');|
INSERT INTO tkjd_admin_auth VALUES ('1', '32');|
INSERT INTO tkjd_admin_auth VALUES ('1', '33');|
INSERT INTO tkjd_admin_auth VALUES ('1', '34');|
INSERT INTO tkjd_admin_auth VALUES ('1', '36');|
INSERT INTO tkjd_admin_auth VALUES ('1', '37');|
INSERT INTO tkjd_admin_auth VALUES ('1', '38');|
INSERT INTO tkjd_admin_auth VALUES ('1', '50');|
INSERT INTO tkjd_admin_auth VALUES ('1', '51');|
INSERT INTO tkjd_admin_auth VALUES ('1', '52');|
INSERT INTO tkjd_admin_auth VALUES ('1', '54');|
INSERT INTO tkjd_admin_auth VALUES ('1', '56');|
INSERT INTO tkjd_admin_auth VALUES ('1', '57');|
INSERT INTO tkjd_admin_auth VALUES ('1', '58');|
INSERT INTO tkjd_admin_auth VALUES ('1', '59');|
INSERT INTO tkjd_admin_auth VALUES ('1', '60');|
INSERT INTO tkjd_admin_auth VALUES ('1', '61');|
INSERT INTO tkjd_admin_auth VALUES ('1', '62');|
INSERT INTO tkjd_admin_auth VALUES ('1', '63');|
INSERT INTO tkjd_admin_auth VALUES ('1', '64');|
INSERT INTO tkjd_admin_auth VALUES ('1', '65');|
INSERT INTO tkjd_admin_auth VALUES ('1', '66');|
INSERT INTO tkjd_admin_auth VALUES ('1', '70');|
INSERT INTO tkjd_admin_auth VALUES ('1', '117');|
INSERT INTO tkjd_admin_auth VALUES ('1', '118');|
INSERT INTO tkjd_admin_auth VALUES ('1', '119');|
INSERT INTO tkjd_admin_auth VALUES ('1', '148');|
INSERT INTO tkjd_admin_auth VALUES ('1', '149');|
INSERT INTO tkjd_admin_auth VALUES ('1', '150');|
INSERT INTO tkjd_admin_auth VALUES ('1', '151');|
INSERT INTO tkjd_admin_auth VALUES ('1', '152');|
INSERT INTO tkjd_admin_auth VALUES ('1', '153');|
INSERT INTO tkjd_admin_auth VALUES ('1', '154');|
INSERT INTO tkjd_admin_auth VALUES ('1', '155');|
INSERT INTO tkjd_admin_auth VALUES ('1', '156');|
INSERT INTO tkjd_admin_auth VALUES ('1', '157');|
INSERT INTO tkjd_admin_auth VALUES ('1', '158');|
INSERT INTO tkjd_admin_auth VALUES ('1', '159');|
INSERT INTO tkjd_admin_auth VALUES ('1', '160');|
INSERT INTO tkjd_admin_auth VALUES ('1', '161');|
INSERT INTO tkjd_admin_auth VALUES ('1', '162');|
INSERT INTO tkjd_admin_auth VALUES ('1', '164');|
INSERT INTO tkjd_admin_auth VALUES ('1', '181');|
INSERT INTO tkjd_admin_auth VALUES ('1', '185');|
INSERT INTO tkjd_admin_auth VALUES ('1', '186');|
INSERT INTO tkjd_admin_auth VALUES ('1', '187');|
INSERT INTO tkjd_admin_auth VALUES ('1', '190');|
INSERT INTO tkjd_admin_auth VALUES ('1', '195');|
INSERT INTO tkjd_admin_auth VALUES ('1', '199');|
INSERT INTO tkjd_admin_auth VALUES ('1', '200');|
INSERT INTO tkjd_admin_auth VALUES ('1', '201');|
INSERT INTO tkjd_admin_auth VALUES ('1', '202');|
INSERT INTO tkjd_admin_auth VALUES ('1', '203');|
INSERT INTO tkjd_admin_auth VALUES ('1', '216');|
INSERT INTO tkjd_admin_auth VALUES ('1', '232');|
INSERT INTO tkjd_admin_auth VALUES ('1', '233');|
INSERT INTO tkjd_admin_auth VALUES ('1', '234');|
INSERT INTO tkjd_admin_auth VALUES ('1', '235');|
INSERT INTO tkjd_admin_auth VALUES ('1', '236');|
INSERT INTO tkjd_admin_auth VALUES ('1', '237');|
INSERT INTO tkjd_admin_auth VALUES ('1', '238');|
INSERT INTO tkjd_admin_auth VALUES ('1', '240');|
INSERT INTO tkjd_admin_auth VALUES ('1', '242');|
INSERT INTO tkjd_admin_auth VALUES ('1', '245');|
INSERT INTO tkjd_admin_auth VALUES ('1', '249');|
INSERT INTO tkjd_admin_auth VALUES ('1', '250');|
INSERT INTO tkjd_admin_auth VALUES ('1', '256');|
INSERT INTO tkjd_admin_auth VALUES ('1', '257');|
INSERT INTO tkjd_admin_auth VALUES ('1', '258');|
INSERT INTO tkjd_admin_auth VALUES ('1', '259');|
INSERT INTO tkjd_admin_auth VALUES ('1', '260');|
INSERT INTO tkjd_admin_auth VALUES ('1', '261');|
INSERT INTO tkjd_admin_auth VALUES ('1', '262');|
INSERT INTO tkjd_admin_auth VALUES ('1', '263');|
INSERT INTO tkjd_admin_auth VALUES ('1', '264');|
INSERT INTO tkjd_admin_auth VALUES ('1', '265');|
INSERT INTO tkjd_admin_auth VALUES ('1', '269');|
INSERT INTO tkjd_admin_auth VALUES ('1', '270');|
INSERT INTO tkjd_admin_auth VALUES ('1', '271');|
INSERT INTO tkjd_admin_auth VALUES ('1', '274');|
INSERT INTO tkjd_admin_auth VALUES ('1', '275');|
INSERT INTO tkjd_admin_auth VALUES ('1', '276');|
INSERT INTO tkjd_admin_auth VALUES ('1', '277');|
INSERT INTO tkjd_admin_auth VALUES ('1', '278');|
INSERT INTO tkjd_admin_auth VALUES ('1', '279');|
INSERT INTO tkjd_admin_auth VALUES ('1', '280');|
INSERT INTO tkjd_admin_auth VALUES ('1', '281');|
INSERT INTO tkjd_admin_auth VALUES ('1', '282');|
INSERT INTO tkjd_admin_auth VALUES ('1', '283');|
INSERT INTO tkjd_admin_auth VALUES ('1', '284');|
INSERT INTO tkjd_admin_auth VALUES ('1', '286');|
INSERT INTO tkjd_admin_auth VALUES ('1', '287');|
INSERT INTO tkjd_admin_auth VALUES ('1', '288');|
INSERT INTO tkjd_admin_auth VALUES ('1', '289');|
INSERT INTO tkjd_admin_auth VALUES ('1', '290');|
INSERT INTO tkjd_admin_auth VALUES ('1', '291');|

DROP TABLE IF EXISTS `tkjd_admin_role`;|
CREATE TABLE `tkjd_admin_role` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `ordid` tinyint(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_admin_role VALUES ('1', '超级管理员', '超级管理员', '0', '1');|

DROP TABLE IF EXISTS `tkjd_alimama`;|
CREATE TABLE `tkjd_alimama` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '采集器ID',
  `name` varchar(200) NOT NULL COMMENT '采集器名称',
  `keyword` varchar(255) NOT NULL COMMENT '关键词',
  `cat` varchar(11) NOT NULL COMMENT '要采集的分类ID',
  `cate_id` int(11) DEFAULT '0' COMMENT '所属分类',
  `startTkRate` varchar(5) NOT NULL COMMENT '起始佣金百分比',
  `endTkRate` varchar(5) NOT NULL COMMENT '结束佣金百分比',
  `user_type` varchar(2) NOT NULL COMMENT '店铺类型',
  `jhs` varchar(10) NOT NULL COMMENT '是否聚划算',
  `queryType` varchar(10) NOT NULL COMMENT '是否高人气',
  `startRatesum` varchar(5) NOT NULL COMMENT '卖家信用',
  `startDsr` varchar(10) NOT NULL COMMENT '店铺（DSR）动态评分',
  `xfzbz` varchar(10) NOT NULL COMMENT '是否加入消费者保障',
  `qtth` varchar(10) NOT NULL COMMENT '是否7天包退换',
  `loc` varchar(200) NOT NULL COMMENT '地区',
  `page` varchar(6) NOT NULL COMMENT '采集页数',
  `start_price` varchar(20) NOT NULL COMMENT '起始价',
  `end_price` varchar(20) NOT NULL COMMENT '结束价',
  `startQuantity` varchar(50) NOT NULL COMMENT '库存量',
  `coupon_start_time` int(11) NOT NULL COMMENT '开始时间',
  `coupon_end_time` int(11) NOT NULL COMMENT '结束时间',
  `startRlRate` varchar(8) NOT NULL COMMENT '折扣比率',
  `ordid` tinyint(11) unsigned NOT NULL DEFAULT '255',
  `status` int(11) DEFAULT '1',
  `sort` varchar(255) NOT NULL COMMENT '排序方式',
  `picQuality` varchar(255) NOT NULL COMMENT '图片质量(图片美观，清晰等综合评价)',
  `last_page` int(11) DEFAULT '0' COMMENT '上次采集页数',
  `last_time` int(11) DEFAULT NULL,
  `npxType` varchar(10) NOT NULL COMMENT '图片有无牛皮廯',
  `ems` int(1) NOT NULL DEFAULT '1',
  `startBiz30day` varchar(10) NOT NULL COMMENT '商品月销量',
  `sex` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_alimama VALUES ('8', '鞋子（女）', '鞋', '50006843', '3', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453307902', '1453912702', '', '255', '1', '', '', '1', '1453307951', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('9', '母婴', 'i hua', '', '4', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453307969', '1453912769', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('10', '居家', '居家', '', '5', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453307981', '1453912781', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('6', '女装', '女装', '', '1', '10', '90', '', '', '0', '5', '', '', '', '', '5', '', '', '', '1453307580', '1453912380', '', '255', '1', '5', '1', '1', '1453307859', '1', '0', '50', '0');|
INSERT INTO tkjd_alimama VALUES ('7', '男装', '男装', '30', '2', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453307862', '1453912662', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('11', '美妆', '美妆', '', '6', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308000', '1453912800', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('12', '数码', '数码', '', '7', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308014', '1453912814', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('13', '美食', '美食', '', '8', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308026', '1453912826', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('14', '文体', '文体', '', '9', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308040', '1453912840', '', '255', '1', '', '', '0', '0', '', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('15', '内衣', '内衣', '50043423', '13', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308053', '1453912853', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('16', '箱包', '箱包', '50072688', '22', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308092', '1453912892', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('17', '电器', '电器', '', '27', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308127', '1453912927', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('18', '家纺', '家纺', '', '33', '10', '90', '', '', '0', '1', '', '', '', '', '5', '', '', '', '1453308143', '1453912943', '', '255', '1', '', '', '0', '0', '1', '0', '', '0');|
INSERT INTO tkjd_alimama VALUES ('19', '9.9包邮采集', '9.9', '', '25', '10', '90', '', '', '0', '1', '', '', '', '', '10', '1', '9.9', '', '1453308156', '1453912956', '', '255', '1', '', '', '1', '1453308236', '1', '0', '100', '0');|
INSERT INTO tkjd_alimama VALUES ('20', '20元封顶', '19.9', '', '26', '10', '90', '', '', '0', '1', '', '', '', '', '10', '10', '19.9', '', '1453308261', '1453913061', '', '255', '1', '', '', '0', '0', '1', '0', '100', '0');|

DROP TABLE IF EXISTS `tkjd_article`;|
CREATE TABLE `tkjd_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `tui` int(1) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_article_cate`;|
CREATE TABLE `tkjd_article_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_article_cate VALUES ('1', '流行服饰', '0', '0', '1', '1', '热门资讯', '热门资讯', '热门资讯');|
INSERT INTO tkjd_article_cate VALUES ('2', '美容护肤', '0', '0', '2', '1', '美容护肤', '美容护肤', '美容护肤');|
INSERT INTO tkjd_article_cate VALUES ('3', '美体减肥', '0', '0', '3', '1', '美体减肥', '美体减肥', '美体减肥');|
INSERT INTO tkjd_article_cate VALUES ('4', '健康休闲', '0', '0', '4', '1', '健康休闲', '健康休闲', '健康休闲');|

DROP TABLE IF EXISTS `tkjd_article_url`;|
CREATE TABLE `tkjd_article_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `onlyid` int(11) NOT NULL,
  `pass` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_auto_user`;|
CREATE TABLE `tkjd_auto_user` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_badword`;|
CREATE TABLE `tkjd_badword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_brand`;|
CREATE TABLE `tkjd_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` int(11) DEFAULT '99999',
  `title` varchar(255) NOT NULL,
  `cate_id` int(11) DEFAULT '0',
  `sellerId` int(20) NOT NULL,
  `activityId` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `pic` varchar(255) NOT NULL,
  `newpic` varchar(255) NOT NULL,
  `desc` text,
  `add_time` int(11) DEFAULT NULL,
  `coupon_start_time` int(11) NOT NULL,
  `coupon_end_time` int(11) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(255) DEFAULT NULL,
  `seo_desc` text,
  `pass` int(1) DEFAULT '0',
  `hot` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_brand_cate`;|
CREATE TABLE `tkjd_brand_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_brand_cate VALUES ('1', '时尚女士', '0', '0', '1', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('2', '精品男士', '0', '0', '2', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('3', '运动鞋包', '0', '0', '3', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('4', '内衣配饰', '0', '0', '4', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('5', '母婴童装', '0', '0', '5', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('6', '美妆珠宝', '0', '0', '6', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('7', '食品百货', '0', '0', '7', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('8', '数码家电', '0', '0', '8', '1', '', '', '');|
INSERT INTO tkjd_brand_cate VALUES ('9', '家装车品', '0', '0', '9', '1', '', '', '');|

DROP TABLE IF EXISTS `tkjd_brand_items`;|
CREATE TABLE `tkjd_brand_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` varchar(9999) NOT NULL DEFAULT '9999',
  `cate_id` int(11) DEFAULT '0' COMMENT '属于分类',
  `num_iid` varchar(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cu` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `desc` longtext,
  `onetag` varchar(255) DEFAULT NULL,
  `twotag` varchar(255) NOT NULL,
  `threetag` varchar(255) NOT NULL,
  `sellerId` varchar(11) DEFAULT NULL,
  `activityId` int(11) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `price` decimal(11,1) NOT NULL,
  `click_url` text,
  `volume` int(11) NOT NULL,
  `coupon_price` decimal(11,1) NOT NULL,
  `coupon_rate` decimal(11,1) NOT NULL,
  `pass` int(11) DEFAULT '1' COMMENT '是否审核',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(255) DEFAULT NULL,
  `seo_desc` text,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `num_iid` (`num_iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_help`;|
CREATE TABLE `tkjd_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `info` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_help VALUES ('1', '关于我们', '关于我们', '', '', '', '1362411168');|
INSERT INTO tkjd_help VALUES ('2', '广告合作', '<p>广告合作</p>', '1', '2', '34', '1498785771');|
INSERT INTO tkjd_help VALUES ('8', '消费保障', '<p>消费保障</p>', '', '', '', '1495612857');|
INSERT INTO tkjd_help VALUES ('3', '联系我们', '<p>淘客基地（<a href=\"http://www.tkjidi.com）\" _src=\"http://www.tkjidi.com）\">http://www.tkjidi.com）</a><br/>客服中心：<a href=\"http://www.tkjidi.com/contact.html\" _src=\"http://www.tkjidi.com/contact.html\">http://www.tkjidi.com/contact.html</a> &nbsp;</p><p><br/></p>', '', '', '', '1498785830');|
INSERT INTO tkjd_help VALUES ('5', '免责声明', '<p>免责声明</p>', '', '', '', '1498785866');|
INSERT INTO tkjd_help VALUES ('9', '积分规则', '<p>积分规则</p>', '积分规则title', '积分规则key', '积分规则desc', '1498179023');|
INSERT INTO tkjd_help VALUES ('10', '常见问题', '<p>常见问题</p>', '', '', '', '1499133174');|
INSERT INTO tkjd_help VALUES ('11', '积分兑换规则', '<ul class=" list-paddingleft-2"><li><p><strong>兑换说明</strong></p></li><li><p>1、兑换开始后，所有网站会员均可点击“我要兑换”按钮进行兑换。</p></li><li><p>2、为了更好的回馈会员，所有的礼品兑换不收取任何费用（实物礼品我们包邮为您送到家）。</p></li><li><p>3、只能使用在网站获得的积分兑换，积分余额不足则不能兑换。</p></li><li><p>4、一旦兑换即扣除相应积分，所兑换的礼品将在后台审核后发出。如审核过程中发现该用户积分行为异常，兑换礼品将不予发放，已扣除积分不退还。如该用户恶意刷积分行为严重，我们保留不另行通知而直接封禁该用户账号的权利。</p></li><li><p><strong>注意事项</strong></p></li><li><p>1、所有礼品（除支付宝红包、优惠券等虚拟礼品除外）在兑换后的1-2个工作日，本站将从合作商城购买，具体到货时间取决于合作商城发货情况。</p></li><li><p>2、若兑换礼品缺货或收货地址无法送达，我们会在1~2个工作日将相应返利或积分返还至您的账户中。</p></li><li><p>3、提交兑换后，需经管理员审核，成功后将以站内信，邮件等方式通知您。</p></li><li><p>4、兑换下单都有数量限制，兑换数量不足时，将无法申请兑换。</p></li><li><p>5、实物礼品是网站与第三方网站合作完成的兑换。如因购买时价格变动，网站和会员双方均不需要作差价补偿。</p></li></ul>', '积分兑换规则title', '积分兑换规则key', '积分兑换规则desc', '1498179023');|

DROP TABLE IF EXISTS `tkjd_huameiquancaiji`;|
CREATE TABLE `tkjd_huameiquancaiji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '采集器ID',
  `name` varchar(200) DEFAULT NULL COMMENT '采集器名称',
  `name1` varchar(200) DEFAULT NULL COMMENT '采集器名称',
  `cate` int(11) DEFAULT '0' COMMENT '所属分类',
  `cate1` int(11) DEFAULT '0' COMMENT '所属分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_huameiquancaiji VALUES ('1', '女装', '女装', '1', '35');|
INSERT INTO tkjd_huameiquancaiji VALUES ('2', '母婴', '母婴', '2', '36');|
INSERT INTO tkjd_huameiquancaiji VALUES ('3', '化妆品', '化妆品', '3', '37');|
INSERT INTO tkjd_huameiquancaiji VALUES ('4', '家居', '居家', '4', '38');|
INSERT INTO tkjd_huameiquancaiji VALUES ('5', '鞋包', '鞋包配饰', '5', '39');|
INSERT INTO tkjd_huameiquancaiji VALUES ('6', '美食', '美食', '6', '40');|
INSERT INTO tkjd_huameiquancaiji VALUES ('7', '车品', '文体车品', '7', '41');|
INSERT INTO tkjd_huameiquancaiji VALUES ('8', '数码家电', '数码家电', '8', '42');|
INSERT INTO tkjd_huameiquancaiji VALUES ('9', '男装', '男装', '9', '2');|
INSERT INTO tkjd_huameiquancaiji VALUES ('10', '内衣', '内衣', '10', '13');|

DROP TABLE IF EXISTS `tkjd_ipban`;|
CREATE TABLE `tkjd_ipban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `expires_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_items`;|
CREATE TABLE `tkjd_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` int(11) DEFAULT '9999' COMMENT '自定义排序',
  `cate_id` int(11) DEFAULT '0' COMMENT '属于分类',
  `orig_id` smallint(6) DEFAULT '1',
  `num_iid` varchar(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `headPic` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `nicker` varchar(255) DEFAULT NULL,
  `nicker1` varchar(255) DEFAULT NULL,
  `feedback1` varchar(255) DEFAULT NULL,
  `headPic1` varchar(255) DEFAULT NULL,
  `nicker2` varchar(255) DEFAULT NULL,
  `feedback2` varchar(255) DEFAULT NULL,
  `headPic2` varchar(255) DEFAULT NULL,
  `nicker3` varchar(255) DEFAULT NULL,
  `feedback3` varchar(255) DEFAULT NULL,
  `headPic3` varchar(255) DEFAULT NULL,
  `nicker4` varchar(255) DEFAULT NULL,
  `feedback4` varchar(255) DEFAULT NULL,
  `headPic4` varchar(255) DEFAULT NULL,
  `desc` longtext,
  `tags` varchar(255) DEFAULT NULL,
  `nick` varchar(200) NOT NULL,
  `sellerId` varchar(11) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '1',
  `uname` varchar(20) NOT NULL DEFAULT 'admin',
  `pic_url` varchar(200) NOT NULL,
  `pic_urls` varchar(200) DEFAULT NULL COMMENT '宽版图片',
  `price` decimal(11,2) NOT NULL,
  `click_url` text,
  `volume` int(11) NOT NULL,
  `commission` decimal(11,2) NOT NULL,
  `commission_rate` int(11) NOT NULL,
  `coupon_price` decimal(11,2) NOT NULL,
  `coupon_rate` int(11) NOT NULL,
  `coupon_start_time` int(11) DEFAULT NULL,
  `coupon_end_time` int(11) DEFAULT NULL,
  `pass` int(11) DEFAULT '0' COMMENT '是否审核',
  `status` varchar(20) DEFAULT 'underway' COMMENT '出售状态',
  `fail_reason` varchar(500) DEFAULT NULL COMMENT '未通过理由',
  `shop_type` varchar(11) DEFAULT NULL,
  `item_url` varchar(500) DEFAULT NULL COMMENT '宝贝地址',
  `ems` int(11) DEFAULT '0',
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT '',
  `realname` varchar(25) DEFAULT NULL,
  `hits` int(11) DEFAULT '0' COMMENT '点击量',
  `isshow` int(11) DEFAULT '1',
  `likes` int(11) DEFAULT '0',
  `inventory` int(11) DEFAULT '0' COMMENT '库存',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(255) DEFAULT NULL,
  `seo_desc` text,
  `add_time` int(11) DEFAULT NULL,
  `last_rate_time` int(10) NOT NULL DEFAULT '0',
  `is_collect_comments` int(1) DEFAULT '0' COMMENT '是否采集了淘宝评论1表示已经采集了淘宝评论',
  `cu` varchar(200) NOT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `isq` smallint(1) NOT NULL DEFAULT '0',
  `quan` varchar(50) NOT NULL,
  `quanurl` text NOT NULL,
  `Quan_condition` varchar(255) NOT NULL,
  `Quan_surplus` int(50) NOT NULL,
  `Quan_receive` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `num_iid` (`num_iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_items_cate`;|
CREATE TABLE `tkjd_items_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cateimg` varchar(200) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `sort` varchar(50) NOT NULL DEFAULT 'id  desc',
  `wait_time` varchar(50) NOT NULL DEFAULT '0',
  `end_time` varchar(50) NOT NULL DEFAULT '0',
  `shop_type` varchar(11) NOT NULL COMMENT 'B:商城C:集市',
  `mix_price` decimal(11,2) DEFAULT NULL,
  `max_price` decimal(11,2) DEFAULT NULL,
  `mix_volume` int(11) DEFAULT NULL,
  `max_volume` int(11) DEFAULT NULL,
  `ems` varchar(50) NOT NULL DEFAULT '0',
  `thiscid` int(11) NOT NULL DEFAULT '0' COMMENT '是否当前分类',
  `add_time` int(10) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  `quan` tinyint(1) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_items_cate VALUES ('1', '服饰鞋包', '', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '80', '0', '0', '3434234', 'sdfsdf', 'sdfsdf');|
INSERT INTO tkjd_items_cate VALUES ('2', '男装', 'nanzhuang', '', '0', '0', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '2', '1', '0', '精选帅气男装', '精选帅气男装', '精选帅气男装');|
INSERT INTO tkjd_items_cate VALUES ('3', '鞋子', 'xiezi', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('4', '母婴', 'muying', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('5', '居家', 'jujia', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('6', '美妆', 'meizhuang', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('7', '数码', 'shuma', '', '0', '0', '', 'coupon_start_time  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('8', '美食', 'meishi', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('9', '文体', 'wenti', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('10', '上衣', '', '', '1', '1|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('11', '裙装', '', '', '1', '1|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('12', '裤装', '', '', '1', '1|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('13', '内衣', 'neiyi', '', '0', '0', '', 'coupon_start_time  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '内衣 ', '内衣 ', '内衣 ');|
INSERT INTO tkjd_items_cate VALUES ('14', '特色服装', '', '', '1', '1|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('15', '上衣', '', '', '2', '2|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('16', '裤子', '', '', '2', '2|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('17', '内衣', '', '', '2', '2|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('18', '男鞋', '', '', '3', '3|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('19', '女鞋', '', '', '3', '3|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('20', '男包', '', '', '3', '3|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('21', '女包', '', '', '3', '3|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('22', '箱包', 'xiangbao', '', '0', '0', '', 'coupon_start_time  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '箱包 ', '箱包 ', '箱包 ');|
INSERT INTO tkjd_items_cate VALUES ('23', '孕妇', '', '', '4', '4|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('24', '儿童', '', '', '4', '4|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('25', '九块九', '', '', '0', '0', '', 'id  desc', '0', '0', '', '0.00', '9.99', '0', '0', '0', '1', '0', '255', '0', '0', '九块九', '九块九', '九块九');|
INSERT INTO tkjd_items_cate VALUES ('26', '20元封顶', '', '', '0', '0', '', 'coupon_start_time  desc', '0', '0', '', '10.00', '19.99', '0', '0', '0', '1', '0', '255', '0', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('28', '明日预告', '', '', '0', '0', '', 'id  desc', '1', '0', '', '0.00', '999999.00', '0', '9999999', '0', '1', '0', '255', '0', '0', '明日预告', '明日预告', '明日预告');|
INSERT INTO tkjd_items_cate VALUES ('27', '电器', 'dianqi', '', '0', '0', '', 'coupon_start_time  desc', '0', '0', '', '0.00', '999999.00', '0', '999999', '0', '0', '0', '255', '1', '0', '电器', '电器', '电器');|
INSERT INTO tkjd_items_cate VALUES ('31', '年货', '', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '0', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('32', '其他', 'peishi', '', '0', '0', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '热销商品特价,', '热销商品特价,', '热销商品特价,');|
INSERT INTO tkjd_items_cate VALUES ('33', '家纺', 'jiafang', '', '0', '0', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '家纺', '家纺', '家纺');|
INSERT INTO tkjd_items_cate VALUES ('34', '优惠券', '', '', '0', '0', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '0', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('35', '服装', '', '', '34', '34|', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('36', '母婴', '', '', '34', '34|', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('37', '化妆品', '', '', '34', '34|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('38', '居家', '', '', '34', '34|', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('39', '鞋包配饰', '', '', '34', '34|', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('40', '美食', '', '', '34', '34|', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('41', '文体车品', '', '', '34', '34|', '', 'id  desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|
INSERT INTO tkjd_items_cate VALUES ('42', '数码家电', '', '', '34', '34|', '', 'volume desc', '0', '0', '', '0.00', '0.00', '0', '0', '0', '0', '0', '255', '1', '0', '', '', '');|

DROP TABLE IF EXISTS `tkjd_items_comment`;|
CREATE TABLE `tkjd_items_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `rateid` varchar(30) DEFAULT NULL COMMENT '淘宝评论唯一ID号',
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_items_like`;|
CREATE TABLE `tkjd_items_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_iid` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_items_orig`;|
CREATE TABLE `tkjd_items_orig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_items_orig VALUES ('1', '50b2e721a6c1e_thumb.jpg', '淘宝', '0', 'taobao.com', '0');|
INSERT INTO tkjd_items_orig VALUES ('2', '50b2e726d4ade_thumb.jpg', '天猫', '1', 'tmall.com', '0');|

DROP TABLE IF EXISTS `tkjd_items_site`;|
CREATE TABLE `tkjd_items_site` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_items_site VALUES ('3', 'taobao', '淘宝API2.0', 'http://www.taobao.com', '', 'http://daxue.tkjidi.com', 'a:2:{s:7:"app_key";s:0:"";s:10:"app_secret";s:0:"";}', '淘客基地', '255', '1');|

DROP TABLE IF EXISTS `tkjd_link`;|
CREATE TABLE `tkjd_link` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_link VALUES ('1', '淘客基地', '', 'http://www.tkjidi.com', '2', '1');|
INSERT INTO tkjd_link VALUES ('2', '巨爆款', '', 'http://www.jbkuan.com', '4', '1');|
INSERT INTO tkjd_link VALUES ('3', '巨打折', '', 'http://www.judazhe.com', '3', '1');|
INSERT INTO tkjd_link VALUES ('4', '淘客基地大学', '', 'http://daxue.tkjidi.com', '1', '1');|


DROP TABLE IF EXISTS `tkjd_mail_queue`;|
CREATE TABLE `tkjd_mail_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_to` varchar(120) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` text NOT NULL,
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `err_num` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL,
  `lock_expiry` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_menu`;|
CREATE TABLE `tkjd_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=783 DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_menu VALUES ('1', '系统设置', '0', 'setting', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('2', '核心设置', '1', 'setting', 'index', '', '网站核心设置', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('4', '邮件设置', '148', 'setting', 'index', '&type=mail', '', '0', '5', '1');|
INSERT INTO tkjd_menu VALUES ('6', '菜单管理', '2', 'menu', 'index', '', '', '0', '7', '1');|
INSERT INTO tkjd_menu VALUES ('7', '新增', '6', 'menu', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('8', '编辑', '6', 'menu', 'edit', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('9', '删除', '6', 'menu', 'delete', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('11', '广告管理', '288', 'ad', 'index', '', '', '0', '3', '1');|
INSERT INTO tkjd_menu VALUES ('12', '广告管理', '11', 'ad', 'index', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('13', '广告位管理', '11', 'adboard', 'index', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('14', '友情链接', '288', 'link', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('15', '友情链接', '14', 'link', 'index', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('17', '新增', '15', 'link', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('18', '编辑', '15', 'link', 'edit', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('19', '删除', '15', 'link', 'delete', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('23', '新增', '12', 'ad', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('24', '编辑', '12', 'ad', 'edit', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('25', '删除', '12', 'ad', 'delete', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('26', '新增', '13', 'adboard', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('27', '编辑', '13', 'adboard', 'edit', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('28', '删除', '13', 'adboard', 'delete', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('31', '数据库管理', '331', 'backup', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('32', '数据备份', '31', 'backup', 'index', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('33', '数据恢复', '31', 'backup', 'restore', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('34', '清理缓存', '2', 'cache', 'index', '', '', '1', '0', '0');|
INSERT INTO tkjd_menu VALUES ('36', '禁止 IP', '117', 'ipban', 'index', '', '', '1', '3', '0');|
INSERT INTO tkjd_menu VALUES ('37', '新增', '36', 'ipban', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('38', '编辑', '36', 'ipban', 'edit', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('50', '标签管理', '0', 'content', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('51', '标签管理', '50', 'article', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('60', '管理员管理', '1', 'admin', 'index', '', '', '0', '3', '1');|
INSERT INTO tkjd_menu VALUES ('61', '管理员管理', '60', 'admin', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('62', '新增', '61', 'admin', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('63', '编辑', '61', 'admin', 'edit', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('64', '删除', '61', 'admin', 'delete', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('65', '分组管理', '60', 'admin_role', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('66', '新增', '65', 'admin_role', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('70', '用户管理', '0', 'user', 'index', '', '', '0', '4', '1');|
INSERT INTO tkjd_menu VALUES ('117', '会员管理', '70', 'user', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('118', '编辑', '149', 'user', 'edit', '', '', '0', '4', '0');|
INSERT INTO tkjd_menu VALUES ('119', '新增', '149', 'user', 'add', '', '', '0', '3', '0');|
INSERT INTO tkjd_menu VALUES ('148', '站点设置', '2', 'setting', 'index', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('149', '会员管理', '117', 'user', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('150', '删除', '149', 'user', 'delete', '', '', '0', '5', '0');|
INSERT INTO tkjd_menu VALUES ('151', '导航设置', '288', 'nav', 'index', '', '', '1', '1', '1');|
INSERT INTO tkjd_menu VALUES ('152', '主导航', '151', 'nav', 'index', '&type=main', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('153', '顶部导航', '151', 'nav', 'index', '&type=top', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('181', '删除', '36', 'ipban', 'delete', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('185', 'API接口', '245', 'items_site', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('187', '删除', '186', 'items_comment', 'delete', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('195', '登陆接口', '245', 'oauth', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('198', '新增', '196', 'message', 'add', '', '', '0', '0', '0');|
INSERT INTO tkjd_menu VALUES ('235', '通知模版', '2', 'message_tpl', 'index', '&type=msg', '', '0', '5', '1');|
INSERT INTO tkjd_menu VALUES ('236', '添加模版', '235', 'message_tpl', 'add', '', '', '0', '7', '1');|
INSERT INTO tkjd_menu VALUES ('237', '编辑', '235', 'message_tpl', 'edit', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('238', '删除', '235', 'message_tpl', 'delete', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('242', '积分记录', '269', 'score', 'logs', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('245', '系统接口', '1', 'apis', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('247', '应用中心', '246', 'plugin', 'index', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('248', '已安装应用', '246', 'plugin', 'list', '', '', '0', '0', '1');|
INSERT INTO tkjd_menu VALUES ('256', '积分礼品', '70', 'score_item', 'index', '', '', '0', '3', '1');|
INSERT INTO tkjd_menu VALUES ('257', '积分商品', '256', 'score_item', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('258', '商品分类', '256', 'score_item_cate', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('259', '新增', '258', 'score_item_cate', 'add', '', '', '0', '1', '0');|
INSERT INTO tkjd_menu VALUES ('260', '编辑', '258', 'score_item_cate', 'edit', '', '', '0', '2', '0');|
INSERT INTO tkjd_menu VALUES ('261', '删除', '258', 'score_item_cate', 'delete', '', '', '0', '3', '0');|
INSERT INTO tkjd_menu VALUES ('262', '订单管理', '256', 'score_order', 'index', '', '', '0', '3', '1');|
INSERT INTO tkjd_menu VALUES ('263', '添加商品', '257', 'score_item', 'add', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('264', '编辑', '257', 'score_item', 'edit', '', '', '0', '3', '0');|
INSERT INTO tkjd_menu VALUES ('265', '删除', '257', 'score_item', 'edit', '', '', '0', '4', '0');|
INSERT INTO tkjd_menu VALUES ('269', '积分设置', '117', 'score', 'setting', '', '', '0', '4', '1');|
INSERT INTO tkjd_menu VALUES ('270', '邮件模板', '235', 'message_tpl', 'index', '&type=mail', '', '0', '6', '1');|
INSERT INTO tkjd_menu VALUES ('271', '短消息模板', '235', 'message_tpl', 'index', '&type=msg', '', '0', '5', '1');|
INSERT INTO tkjd_menu VALUES ('275', '站点设置', '148', 'setting', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('276', '积分设置', '269', 'score', 'setting', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('279', '会员管理', '149', 'user', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('280', '积分商品', '257', 'score_item', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('282', 'SEO设置', '2', 'seo', 'url', '', '', '0', '6', '1');|
INSERT INTO tkjd_menu VALUES ('283', 'UR静态化', '282', 'seo', 'url', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('284', '页面SEO', '282', 'seo', 'page', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('286', '注册登陆', '148', 'setting', 'user', '', '', '0', '3', '1');|
INSERT INTO tkjd_menu VALUES ('287', '插件管理', '0', 'plugins', 'index', '', '', '0', '5', '1');|
INSERT INTO tkjd_menu VALUES ('288', '插件管理', '287', 'plugins', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('295', '站内帮助', '398', 'help', 'index', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('296', '帮助文件', '295', 'help', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('297', '帮助文件', '296', 'help', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('298', '添加帮助', '296', 'help', 'add', '', '', '0', '2', '1');|
INSERT INTO tkjd_menu VALUES ('306', '其他设置', '148', 'setting', 'index', '&type=other', '', '0', '6', '1');|
INSERT INTO tkjd_menu VALUES ('331', '工具', '0', 'plugin', 'index', '', '', '0', '7', '1');|
INSERT INTO tkjd_menu VALUES ('332', '插件管理', '288', 'plugin', 'plugin_list', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('333', '正在使用', '287', 'plugin', 'index', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('338', '友情链接', '333', 'link', 'index', '', '', '1', '255', '0');|
INSERT INTO tkjd_menu VALUES ('339', '模板样式', '148', 'setting', 'index', '&type=template', '', '0', '7', '0');|
INSERT INTO tkjd_menu VALUES ('340', '性能优化', '2', 'setting', 'cache', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('346', '生成sitemap', '282', 'sitemap', 'index', '', '', '1', '255', '1');|
INSERT INTO tkjd_menu VALUES ('393', '鹊桥管理', '392', 'queqiao', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('394', '鹊桥商品', '393', 'queqiao', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('395', '鹊桥采集', '393', 'queqiaocaiji', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('396', '鹊桥清理', '393', 'queqiao', 'clear', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('398', '文章中心', '0', 'article', 'index', '', '', '0', '4', '1');|
INSERT INTO tkjd_menu VALUES ('399', '内容管理', '398', 'article', 'index', '', '', '0', '1', '1');|
INSERT INTO tkjd_menu VALUES ('400', '文章管理', '399', 'article', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('401', '文章列表', '400', 'article', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('402', '添加文章', '400', 'article', 'add', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('403', '编辑', '400', 'article', 'edit', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('404', '删除', '400', 'article', 'delete', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('405', '文章分类', '399', 'article_cate', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('406', '添加', '405', 'article_cate', 'add', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('407', '编辑', '405', 'article_cate', 'edit', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('408', '删除', '405', 'article_cate', 'delete', '', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('438', '标签管理', '51', 'tag', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('528', '手机左侧导航', '151', 'nav', 'index', '&type=wap', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('529', '手机首页图标', '151', 'nav', 'index', '&type=other', '', '0', '255', '0');|
INSERT INTO tkjd_menu VALUES ('780', '会员晒单', '70', 'user', '', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('781', '晒单管理', '780', 'shai', 'index', '', '', '0', '255', '1');|
INSERT INTO tkjd_menu VALUES ('782', '首页参数', '310', 'setting', 'index', '&type=site', '', '1', '2', '1');|


DROP TABLE IF EXISTS `tkjd_message`;|
CREATE TABLE `tkjd_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ftid` int(10) unsigned NOT NULL,
  `from_id` int(10) NOT NULL,
  `from_name` varchar(50) NOT NULL,
  `to_id` int(10) NOT NULL,
  `to_name` varchar(50) NOT NULL,
  `add_time` int(10) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_message_tpl`;|
CREATE TABLE `tkjd_message_tpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL COMMENT '别名',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_message_tpl VALUES ('1', 'msg', '1', '登录', 'login', '<p>\r\n	欢迎</p><p>&nbsp; &nbsp; 欢迎您</p><p><br/></p>');|
INSERT INTO tkjd_message_tpl VALUES ('3', 'mail', '1', '找回密码', 'findpwd', '<div style=\"border-bottom:#ff5500 3px solid;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;width:602px;font:12px/20px \'lucida Grande\', Verdana;white-space:normal;orphans:2;letter-spacing:normal;height:auto;color:#000000;overflow:hidden;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\n	<br class=\"Apple-interchange-newline\" />\n	<div style=\"margin-top:20px;width:185px;float:right;height:20px;\">\n	</div>\n</div>\n<div style=\"padding-bottom:25px;widows:2;text-transform:none;background-color:#f6f6f6;text-indent:0px;padding-left:30px;width:542px;padding-right:30px;font:12px/20px \'lucida Grande\', Verdana;white-space:normal;orphans:2;letter-spacing:normal;color:#000000;clear:both;word-spacing:0px;padding-top:25px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\n	<p style=\"line-height:23px;font-size:14px;font-weight:bold;\">\n		<span style=\"color:#ff0000;font-size:14px;font-weight:bold;margin-right:5px;\">Hi！{$username}</span>请您尽快点击进行密码重置\n	</p>\n	<div style=\"border-bottom:#dedede 1px solid;border-left:#dedede 1px solid;padding-bottom:15px;line-height:25px;background-color:#ffffff;margin-top:12px;padding-left:25px;width:492px;padding-right:25px;font-size:14px;border-top:#dedede 1px solid;border-right:#dedede 1px solid;padding-top:25px;\">\n		我们收到了您发出的密码重置请求。请您点击该链接重置您的密码：<a style=\"outline-style:none;outline-color:invert;outline-width:medium;color:#1e5494;cursor:pointer;text-decoration:underline;\" href=\"{$reset_url}\" target=\"_blank\">{$reset_url}</a><span class=\"Apple-converted-space\">&nbsp;</span><br />\n<span style=\"color:#999999;\">(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏，本链接只能当天内有效)</span><br />\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录了。\n	</div>\n	<p style=\"border-bottom:#e3e3e3 1px solid;line-height:30px;height:30px;color:#666666;\">\n		此邮件为系统邮件，系统不接受回信，请勿直接回复\n	</p>\n</div>\n<div style=\"text-align:center;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/30px \'lucida Grande\', Verdana;white-space:normal;orphans:2;margin-bottom:30px;letter-spacing:normal;height:30px;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\n	Copyright (c) 网络淘宝客 2012-2016, All Rights Reserved\n</div>');|

DROP TABLE IF EXISTS `tkjd_msg`;|
CREATE TABLE `tkjd_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuid` int(11) DEFAULT NULL,
  `fname` varchar(51) DEFAULT NULL,
  `tuid` int(11) DEFAULT '0',
  `tname` varchar(50) DEFAULT 'SYSTEM',
  `info` text,
  `status` tinyint(1) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_nav`;|
CREATE TABLE `tkjd_nav` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `icon1` varchar(100) NOT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `des` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` tinyint(1) NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `mod` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_nav VALUES ('10', 'main', '热门资讯', 'article', '', '', '0', '', '/?m=article', '0', '4', '', '0');|
INSERT INTO tkjd_nav VALUES ('11', 'top', '邀友得礼', 'yaoyou', '', '', '0', '', '/?m=user&a=union', '0', '1', '', '1');|
INSERT INTO tkjd_nav VALUES ('16', 'top', '晒单得礼', 'shai', '', '', '0', '', '/?m=user&a=shai', '0', '1', '', '1');|
INSERT INTO tkjd_nav VALUES ('17', 'main', '领券直播', 'quan', '', '', '0', '', '/?m=quan', '1', '3', '', '1');|
INSERT INTO tkjd_nav VALUES ('69', 'main', '20元封顶', 'shijiu', '', '', '2', '', '/?m=shijiu', '1', '2', '', '1');|
INSERT INTO tkjd_nav VALUES ('20', 'main', '查全网券', 'cha', '', '', '0', '', '/?m=quan&a=cha', '1', '5', '', '1');|
INSERT INTO tkjd_nav VALUES ('21', 'wap', '服饰折扣', '', '', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=1', '0', '1', '', '1');|
INSERT INTO tkjd_nav VALUES ('22', 'wap', '母婴折扣', '', '', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=4', '0', '3', '', '1');|
INSERT INTO tkjd_nav VALUES ('24', 'wap', '其他折扣', '', '', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=32', '0', '4', '', '1');|
INSERT INTO tkjd_nav VALUES ('23', 'wap', '男装折扣', '', '', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=2', '0', '2', '', '1');|
INSERT INTO tkjd_nav VALUES ('25', 'wap', '鞋包折扣', '', '', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=22', '0', '5', '', '1');|
INSERT INTO tkjd_nav VALUES ('26', 'wap', '特惠精品', 'tehui', '', '', '0', '', '/?m=tehu', '0', '6', '', '1');|
INSERT INTO tkjd_nav VALUES ('27', 'wap', '时尚资讯', 'article', '', '', '0', '', '/?m=article', '0', '7', '', '1');|
INSERT INTO tkjd_nav VALUES ('28', 'wap', '穿衣搭配', 'dapei', '', '', '0', '', '/?m=dapei', '0', '9', '', '1');|
INSERT INTO tkjd_nav VALUES ('30', 'wap', '积分商城', 'gift', '', '', '0', '', '/?m=gift', '0', '8', '', '1');|
INSERT INTO tkjd_nav VALUES ('31', 'other', '居家', '', '/1601/20/569f3303a2ad8.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=5', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('32', 'other', '女装', '', '/1601/20/569f33381e3b5.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=1', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('33', 'other', '内衣', '', '/1601/20/569f3340de022.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=13', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('34', 'other', '鞋子', '', '/1601/20/569f334a4e70d.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=3', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('35', 'other', '母婴', '', '/1601/20/569f33560092e.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=4', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('36', 'other', '男装', '', '/1601/20/569f3360eee9d.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=2', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('37', 'other', '美妆', '', '/1601/20/569f3411685fa.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=6', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('38', 'other', '美食', '', '/1601/20/569f33feb3876.png', '', '0', '', '/index.php?g=m&m=index&a=cate&cid=8', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('39', 'foot', '每日更新', 'dapei', '/1512/01/565dbe9f66a5e.png', '/1512/01/565dbeb79ea05.png', '0', '每天10:00更新', '/index/cate/cid/1.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('40', 'foot', '精彩预告', 'shijian', '/1512/01/565dbecada901.png', '', '0', '好货早收藏', '/yugao/index.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('41', 'foot', '9.9包邮', 'shijian', '/1512/01/565dc170e99d7.png', '', '0', '全网最低价', '/jiu/index.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('42', 'foot', '美丽说精选', 'shijian', '/1512/01/565dc0869e11e.png', '', '0', '女性购物前堂', '/index/cate/cid/1.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('43', 'foot', '20元好货', 'shijian', '/1512/01/565dc22748fe7.png', '', '0', '好货天天有', '/shijiu/index.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('44', 'foot', '品牌团', 'hot', '/1512/01/565dbfe5e0525.jpg', '', '0', '大品牌 大折扣', '/tehui/index.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('45', 'foot', '天猫精选', 'hot', '/1512/01/565dc1f17ebd9.jpg', '', '0', '总有一款适合你', '/tehui/index.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('46', 'foot', '时尚资讯', 'temai', '/1512/01/565dbf35e4f8d.png', '', '2', '站在时尚前沿', '/article/index.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('47', 'foot', '时尚搭配', 'temai', '/1512/01/565dbef1586f6.png', '', '1', '穿出自己的风格', '/dapei/index.html', '0', '255', '', '1');|
INSERT INTO tkjd_nav VALUES ('68', 'main', '8.8包邮', 'jiu', '', '', '2', '', '/?m=jiu', '1', '1', '', '1');|
INSERT INTO tkjd_nav VALUES ('71', 'main', '晒单广场', 'shai', '', '', '0', '', '/?m=shai', '1', '6', '', '1');|
INSERT INTO tkjd_nav VALUES ('72', 'main', '看货', 'video', '', '', '0', '', '/?m=video', '1', '255', '', '1');|

DROP TABLE IF EXISTS `tkjd_niup_cate`;|
CREATE TABLE `tkjd_niup_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cid` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_niup_cate VALUES ('1', '女装', '1', '0', '0', '0');|
INSERT INTO tkjd_niup_cate VALUES ('2', '男装', '2', '0', '0', '0');|
INSERT INTO tkjd_niup_cate VALUES ('3', '母婴', '3', '0', '0', '0');|
INSERT INTO tkjd_niup_cate VALUES ('4', '鞋包', '100', '0', '0', '0');|
INSERT INTO tkjd_niup_cate VALUES ('5', '居家', '101', '0', '0', '0');|
INSERT INTO tkjd_niup_cate VALUES ('6', '美食', '6', '0', '0', '0');|


DROP TABLE IF EXISTS `tkjd_oauth`;|
CREATE TABLE `tkjd_oauth` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `config` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_oauth VALUES ('1', 'qq', 'QQ登录', 'a:2:{s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}', '申请地址：http://connect.opensns.qq.com/', '淘客基地', '255', '1');|
INSERT INTO tkjd_oauth VALUES ('2', 'sina', '新浪微博登录', 'a:2:{s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}', '申请地址：http://open.weibo.com/', '淘客基地', '255', '1');|
INSERT INTO tkjd_oauth VALUES ('3', 'taobao', '淘宝登录', 'a:2:{s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}', '申请地址：http://open.taobao.com/', '淘客基地', '255', '0');|

DROP TABLE IF EXISTS `tkjd_online`;|
CREATE TABLE `tkjd_online` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `account` varchar(20) NOT NULL DEFAULT 'Guest',
  `username` varchar(20) NOT NULL DEFAULT '游客',
  `lasttime` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_online VALUES ('3', '7', '15690326296', '15690326296', '1498814094', '101.24.119.93');|

DROP TABLE IF EXISTS `tkjd_pjword`;|
CREATE TABLE `tkjd_pjword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

DROP TABLE IF EXISTS `tkjd_promo`;|
CREATE TABLE `tkjd_promo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `click_url` longtext NOT NULL,
  `intro` varchar(500) NOT NULL,
  `intro1` varchar(500) NOT NULL,
  `intro2` varchar(500) NOT NULL,
  `intro3` varchar(500) NOT NULL,
  `intro4` varchar(500) NOT NULL,
  `intro5` varchar(500) NOT NULL,
  `ordid` int(11) unsigned NOT NULL DEFAULT '9999' COMMENT '排序值',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `pass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_promo_cate`;|
CREATE TABLE `tkjd_promo_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_promo_cate VALUES ('1', '店铺活动', '0', '0', '255', '1', '店铺活动', '店铺活动', '店铺活动');|
INSERT INTO tkjd_promo_cate VALUES ('2', '神头条', '0', '0', '255', '1', '神头条', '神头条', '神头条');|


DROP TABLE IF EXISTS `tkjd_queqiao`;|
CREATE TABLE `tkjd_queqiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` int(11) DEFAULT '9999' COMMENT '自定义排序',
  `title` varchar(255) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `coupon_price` decimal(11,2) NOT NULL,
  `click_url` text,
  `volume` int(11) NOT NULL,
  `coupon_start_time` int(11) DEFAULT NULL,
  `coupon_end_time` int(11) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(255) DEFAULT NULL,
  `seo_desc` text,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `pic_url` (`pic_url`),
  KEY `price` (`price`),
  KEY `volume` (`volume`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_report`;|
CREATE TABLE `tkjd_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `reason` int(2) DEFAULT '7',
  `comment` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_robots`;|
CREATE TABLE `tkjd_robots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '16',
  `cate_id` int(11) DEFAULT '0' COMMENT '所属分类',
  `shop_type` varchar(50) NOT NULL DEFAULT 'all',
  `start_coupon_rate` int(11) NOT NULL DEFAULT '100',
  `end_coupon_rate` int(11) NOT NULL DEFAULT '10000',
  `start_commissionRate` int(11) NOT NULL DEFAULT '1000',
  `end_commissionRate` int(11) NOT NULL DEFAULT '9000',
  `start_credit` varchar(50) NOT NULL DEFAULT '1heart',
  `end_credit` varchar(50) NOT NULL DEFAULT '5goldencrown',
  `start_price` decimal(8,2) DEFAULT '0.00',
  `end_price` decimal(8,2) DEFAULT '999.00',
  `start_volume` int(11) NOT NULL DEFAULT '0',
  `end_volume` int(11) NOT NULL DEFAULT '999999',
  `ems` int(11) DEFAULT '0' COMMENT '采集包邮',
  `recid` int(11) DEFAULT '1' COMMENT '是否更新分类',
  `page` int(11) NOT NULL DEFAULT '100' COMMENT '采集页数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` int(11) DEFAULT '1',
  `sort` varchar(50) NOT NULL DEFAULT 'volume|desc',
  `last_page` int(11) DEFAULT '0' COMMENT '上次采集页数',
  `last_time` int(11) DEFAULT NULL,
  `http_mode` int(11) DEFAULT '0' COMMENT '采集模式',
  `tb_cid` int(11) DEFAULT NULL COMMENT '淘宝网分类ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_robots VALUES ('1', '女装', '女装', '0', '1', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '5', '1491880944', '0', '0');|
INSERT INTO tkjd_robots VALUES ('2', '男装', '男装', '0', '2', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'total_sales', '3', '1452176699', '0', '0');|
INSERT INTO tkjd_robots VALUES ('3', '鞋子（运动鞋）', '', '50012029', '3', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '1', '1452176787', '0', '0');|
INSERT INTO tkjd_robots VALUES ('4', '居家', '居家', '0', '5', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'total_sales', '0', '1452176839', '0', '0');|
INSERT INTO tkjd_robots VALUES ('5', '美妆', '美妆', '0', '6', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '0', '1452176865', '0', '0');|
INSERT INTO tkjd_robots VALUES ('6', '数码（3G数码配件）', '', '50008090', '7', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '3', '1452176897', '0', '0');|
INSERT INTO tkjd_robots VALUES ('7', '美食', '美食', '0', '8', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '0', '1452176941', '0', '0');|
INSERT INTO tkjd_robots VALUES ('8', '文体', '文体', '0', '9', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '0', '1452176952', '0', '0');|
INSERT INTO tkjd_robots VALUES ('9', '美妆（彩妆/香水/美妆工具）', '', '50010788', '6', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'total_sales', '0', '1452176987', '0', '0');|
INSERT INTO tkjd_robots VALUES ('10', '内衣（男女内衣家居服）', '', '1625', '13', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '0', '1452177043', '0', '0');|
INSERT INTO tkjd_robots VALUES ('11', '箱包（箱包皮具男女包）', '', '50006842', '22', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '0', '1452177112', '0', '0');|
INSERT INTO tkjd_robots VALUES ('12', '九块九', '9.9', '0', '25', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '9.90', '0', '999999', '0', '0', '6', '255', '1', 'total_sales', '0', '1452177133', '0', '0');|
INSERT INTO tkjd_robots VALUES ('13', '十九块九', '19.9', '0', '26', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '10.00', '19.90', '0', '999999', '0', '0', '6', '255', '1', 'total_sales', '6', '1491878087', '0', '0');|
INSERT INTO tkjd_robots VALUES ('14', '年货', '年货', '0', '31', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'total_sales', '6', '1491878074', '0', '0');|
INSERT INTO tkjd_robots VALUES ('15', '电器', '电器', '0', '27', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '6', '1491878052', '0', '0');|
INSERT INTO tkjd_robots VALUES ('16', '家纺', '家纺', '0', '33', 'all', '100', '10000', '100', '9900', '1heart', '5goldencrown', '0.00', '99999.00', '0', '999999', '0', '0', '6', '255', '1', 'tk_rate', '0', '1452177335', '0', '0');|

DROP TABLE IF EXISTS `tkjd_score_item`;|
CREATE TABLE `tkjd_score_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(120) NOT NULL,
  `img` varchar(255) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `stock` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_num` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `buy_num` mediumint(8) NOT NULL DEFAULT '0',
  `num_iid` varchar(12) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `coupon_price` decimal(11,2) DEFAULT NULL,
  `desc` text NOT NULL,
  `info` text,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `start_time` int(10) DEFAULT NULL COMMENT '兑换开始时间',
  `end_time` int(10) DEFAULT NULL COMMENT '兑换结束时间',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `pass` tinyint(1) DEFAULT '0' COMMENT '1显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_score_item_cate`;|
CREATE TABLE `tkjd_score_item_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_score_item_cate VALUES ('1', '积分商品', '1', '1');|

DROP TABLE IF EXISTS `tkjd_score_log`;|
CREATE TABLE `tkjd_score_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `score` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;|



DROP TABLE IF EXISTS `tkjd_score_order`;|
CREATE TABLE `tkjd_score_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `item_id` int(12) unsigned NOT NULL,
  `item_name` varchar(120) DEFAULT NULL,
  `item_num` mediumint(8) NOT NULL,
  `iid` varchar(20) DEFAULT '',
  `realname` varchar(25) NOT NULL DEFAULT '',
  `mobile` varchar(13) NOT NULL DEFAULT '',
  `qq` varchar(15) DEFAULT NULL,
  `address` text NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `order_score` int(10) NOT NULL,
  `ems_name` varchar(20) DEFAULT NULL,
  `ems_id` varchar(20) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_setting`;|
CREATE TABLE `tkjd_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|

INSERT INTO tkjd_setting VALUES ('site_name\r\nsite_name', '淘客基地vipcms', '');|
INSERT INTO tkjd_setting VALUES ('site_status', '1', '');|
INSERT INTO tkjd_setting VALUES ('closed_reason', '网站升级中。。', '');|
INSERT INTO tkjd_setting VALUES ('site_icp', '备案', '');|
INSERT INTO tkjd_setting VALUES ('statistics_code', '<script src=\"https://s19.cnzz.com/z_stat.php?id=1000474319&web_id=1000474319\" language=\"JavaScript\"></script>', '');|
INSERT INTO tkjd_setting VALUES ('statics_url', '', '');|
INSERT INTO tkjd_setting VALUES ('mail_server', 'a:6:{s:4:\"mode\";s:4:\"smtp\";s:4:\"host\";s:12:\"smtp.163.com\";s:4:\"port\";s:2:\"25\";s:4:\"from\";s:0:\"\";s:13:\"auth_username\";s:0:\"\";s:13:\"auth_password\";s:0:\"\";}', '');|
INSERT INTO tkjd_setting VALUES ('item_check', '1', '');|
INSERT INTO tkjd_setting VALUES ('score_rule', 'a:12:{s:8:\"register\";s:2:\"50\";s:13:\"register_nums\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:10:\"login_nums\";s:1:\"1\";s:4:\"sign\";s:1:\"5\";s:9:\"sign_nums\";s:1:\"1\";s:8:\"sign_add\";s:1:\"5\";s:8:\"sign_day\";s:1:\"8\";s:11:\"union_visit\";s:1:\"5\";s:16:\"union_visit_nums\";s:2:\"10\";s:9:\"union_reg\";s:2:\"10\";s:14:\"union_reg_nums\";s:1:\"5\";}', '');|
INSERT INTO tkjd_setting VALUES ('integrate_code', 'default', '');|
INSERT INTO tkjd_setting VALUES ('integrate_config', '', '');|
INSERT INTO tkjd_setting VALUES ('avatar_size', '24,32,48,64,100,200', '');|
INSERT INTO tkjd_setting VALUES ('attr_allow_exts', 'jpg,gif,png,jpeg,swf', '');|
INSERT INTO tkjd_setting VALUES ('attr_allow_size', '2048', '');|
INSERT INTO tkjd_setting VALUES ('itemcate_img', 'a:2:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"170\";}', '');|
INSERT INTO tkjd_setting VALUES ('reg_protocol', '加入和使用我们的网站，表明您已经阅读并同意本使用条款，您的会员活动会遵从本使用条款。本协议由您与淘客基地共同缔结，本协议具有合同效力。\r\n　　本协议中协议双方合称协议方，我们在协议中亦称为“淘客基地”。域名 www.tkjidi.com\r\n　　一、协议内容及签署\r\n　　1、本协议内容包括协议正文及所有淘客基地已经发布的或将来可能发布的各类规则，包括但不仅限于网站公告及帮助在内的官方声明。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何淘客基地及其关联公司提供的服务均受本协议约束。\r\n　　2、您应当在使用淘客基地服务之前认真阅读全部协议内容，如您对协议有任何疑问的，应向淘客基地咨询。但无论您事实上是否在使用淘客基地服务之前认真阅读了本协议内容，只要您使用淘客基地服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得淘客基地对您问询的解答等理由，主张本协议无效，或要求撤销本协议。\r\n　　3、淘客基地有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当您使用淘客基地特殊服务时，您和淘客基地应遵守淘客基地随时公布的与该服务相关的指引、公告以及规则。前述所有的指引、公告以及规则，均构成本使用协议的一部分。如您不同意相关变更，应当立即停止使用淘客基地服务。您继续使用淘客基地服务的，即表示您接受经修订的协议和规则。\r\n　　4、您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且淘客基地有权注销（永久冻结）您的淘客基地账户，并向您及您的监护人索偿。\r\n　　5、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用淘客基地服务。您一旦使用淘客基地服务，即视为您已了解并完全同意本使用协议各项内容，包括淘客基地对使用协议随时所做的任何修改，并成为淘客基地用户（以下简称“用户”）。\r\n　　二、淘客基地服务使用规范\r\n　　1、遵守法律\r\n　　您同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用您的密码和您的帐号使用本服务的任何行为及其结果承担全部责任。如您的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由您承担全部法律责任。\r\n　　同时如果淘客基地有理由认为您的任何行为，包括但不限于您的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，淘客基地可在任何时候不经任何事先通知终止向您提供服务。\r\n　　2、您的注册义务\r\n　　为了能使用本服务，您同意以下事项：依本服务注册提示请您填写正确的注册邮箱、密码和名号，并确保今后更新的登录邮箱、名号、头像等资料的有效性和合法性。若您提供任何违法、不道德或淘客基地认为不适合在淘客基地上展示的资料；或者淘客基地有理由怀疑您的资料属于程序或恶意操作，淘客基地有权暂停或终止您的帐号，并拒绝您于现在和未来使用本服务之全部或任何部分。\r\n　　淘客基地无须对任何用户的任何登记资料承担任何责任，包括但不限于鉴别、核实任何登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。\r\n　　3、用户帐号、密码及安全\r\n　　完成本服务的注册程序并成功注册之后，您可使用您的账号和密码，登录到您在淘客基地的帐户（下称“帐号”）。保护您的帐号安全，是您的责任。\r\n　　您应对所有使用您的密码及帐号的活动负完全的责任。您同意：\r\n　　1）您的淘客基地帐号遭到未获授权的使用，或者发生其它任何安全问题时，您将立即通知淘客基地；\r\n　　2）如果您未保管好自己的帐号和密码，因此而产生的任何损失或损害，淘客基地无法也不承担任何责任；\r\n　　3）每个用户都要对其帐号中的所有行为和事件负全责。如果您未保管好自己的帐号和密码而对您、淘客基地或第三方造成了损害，您将负全部责任。\r\n　　4、淘客基地隐私权政策\r\n　　您提供的登记资料及淘客基地保留的有关您的若干其它资料将受到中国有关隐私的法律和本公司《隐私声明》之规范。\r\n　　5、提供者之责任\r\n　　根据有关法律法规，淘客基地在此郑重提醒您注意，任何经由本服务而发布、上传的文字、资讯、资料、照片、图形、视讯、信息或其它资料（以下简称“内容 ”），无论是公开还是私下传送，均由内容提供者承担责任。淘客基地仅为用户提供内容存储空间，无法控制经由本服务传送之内容，因此不保证内容的正确性、完整性或品质。您已预知使用本服务时，可能会接触到令人不快、不适当或令人厌恶之内容。在任何情况下，淘客基地均不为任何内容负责，但淘客基地有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用本服务的全部或部分，保存有关记录，并向有关机关报告。\r\n　　6、用户行为\r\n　　用户同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶\r\n　　1）用户不得发布或以其它方式传送含有下列内容之一的信息：\r\n　　* 反对宪法所确定的基本原则的；\r\n　　* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\r\n　　* 损害国家荣誉和利益的；\r\n　　* 煽动民族仇恨、民族歧视、破坏民族团结的；\r\n　　* 破坏国家宗教政策，宣扬邪教和封建迷信的；\r\n　　* 散布谣言，扰乱社会秩序，破坏社会稳定的；\r\n　　* 散布淫秽、色情、赌博、暴力、凶杀、恐怖、吸毒或者教唆犯罪的；\r\n　　* 侮辱或者诽谤他人，侵害他人合法权利的；\r\n　　* 含有虚假、诈骗、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；\r\n　　* 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；\r\n　　* 含有淘客基地认为不适合在淘客基地展示的内容；\r\n　　2）用户不得出现恶意注册恶意点击等行为。严禁通过购买产品恶意取消订单等非法手段来提高个人收入，一经发现，淘客基地有权取消会员的资格，并追回已经支付的全部佣金，同时该用户必须承担由此给淘客基地带来的所有损失。淘客基地严禁各种针对淘客基地活动的作弊行为。对于查实的作弊行为，我们将收回该账号全部的邀请奖励、取消邀请资格，给予一定处罚，并列入淘客基地黑名单账户。作弊行为包括但不限于：使用相同的电脑、相同的IP地址在同一天内注册多个账号，以骗取奖励邀请的行为、以注册送钱或注册送奖励等利益诱导来骗取注册的行为。\r\n　　3）用户不得以任何方式危害他人的合法权益；冒充其他任何人或机构，或以虚假不实的方式陈述或谎称与任何人或机构有关发布或以其它方式传送相关内容；\r\n　　4）将依据任何法律或合约或法定关系（例如由于雇佣关系和依据保密合约所得知或揭露之内部资料、专属及机密资料）知悉但无权传送之任何内容加以发布、发送电子邮件或以其它方式传送；\r\n　　5）将侵害他人著作权、专利权、商标权、商业秘密、或其它专属权利（以下简称“专属权利”）之内容加以发布或以其它方式传送；\r\n　　6）将任何广告信函、促销资料、“垃圾邮件”、““滥发信件”、“连锁信件”、“直销”或其它任何形式的劝诱资料加以发布、发送或以其它方式传送；\r\n　　7）将设计目的在于干扰、破坏或限制任何计算机软件、硬件或通讯设备功能之计算机病毒（包括但不限于木马程序（trojan horses）、蠕虫（worms）、定时炸弹、删除蝇（cancelbots）（以下简称“病毒”）或其它计算机代码、档案和程序之任何资料，加以发布、发送或以其它方式传送；\r\n　　8）干扰或破坏本服务或与本服务相连线之服务器和网络，或违反任何关于本服务连线网络之规定、程序、政策或规范；\r\n　　9）跟踪、人肉搜索或以其它方式骚扰他人；\r\n　　10）故意或非故意地违反任何适用的当地、国家法律，以及任何具有法律效力的规则；\r\n　　11）未经合法授权而截获、篡改、收集、储存或删除他人个人信息、站内邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。\r\n　　您已认可淘客基地未对用户的使用行为进行全面控制，您使用任何内容时，包括依赖前述内容之正确性、完整性或实用性时，您同意将自行加以判断并承担所有风险，而不依赖于淘客基地。您同意淘客基地依其自行之考虑，删除可经由本服务提供之违反本条款的或其它引起淘客基地反感的任何内容。\r\n　　您了解并同意，淘客基地依据法律法规的要求，或基于诚信为了以下目的或在合理必要范围内，认定必须将内容加以保存或揭露时，得加以保存或揭露：\r\n　　a）遵守法律程序；\r\n　　b）执行本使用协议；\r\n　　c）回应任何第三人提出的权利主张；\r\n　　d）保护淘客基地、其用户及公众之权利、财产或个人安全；\r\n　　e）其它淘客基地认为有必要的情况。\r\n　　7、国际使用之特别警告\r\n　　您已了解国际互联网的无国界性，同意遵守当地所有关于网上行为及内容之法律法规。您特别同意遵守有关从中国或您所在国家或地区输出信息之传输的所有适用法律法规。\r\n　　8、在淘客基地发布的公开信息\r\n　　1）在本使用协议中，“本服务公开使用区域”系指一般公众可以使用的区域；\r\n　　2）用户在淘客基地上传或发布的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益，用户同意授予淘客基地所有上述内容在全球范围内的免费、不可撤销的、永久的、可再许或可转让的独家使用权许可，据该许可淘客基地将有权以展示、推广及其他不为法律所禁止的方式使用前述内容。\r\n　　9、赔偿\r\n　　由于您通过本服务提供、发布或传送之内容、您与本服务连线、您违反本使用协议、或您侵害他人任何权利因而衍生或导致任何第三人提出任何索赔或请求，包括合理的律师费，您同意赔偿淘客基地及其关联企业、职员、代理人、品牌共有人或其它合作伙伴及员工，并使其免受损害，并承担由此引发的全部法律责任。\r\n　　10、关于使用及储存之一般措施\r\n　　您承认关于本服务的使用淘客基地有权制订基本措施及限制，包含但不限于本服务将保留所发布内容或其它发布内容之最长期间，以及一定期间内您使用本服务之次数上限（及每次使用时间之上限）。通过本服务发布或传送之任何信息、通讯资料和其它内容，如被删除或未予储存，您同意淘客基地毋须承担任何责任。您也同意，淘客基地有权依其自行之考虑，不论通知与否，随时变更这些一般措施及限制。\r\n　　三、责任范围和责任限制\r\n　　1、淘客基地负责按\"现状\"和\"可得到\"的状态向您提供服务。但对服务不作任何明示或暗示的保证，包括但不限于淘客基地服务的适用性、没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，淘客基地也不对服务所涉及的技术及信息的有效性、准确性、正确性、可靠性、质量、稳定、完整和及时性作出任何承诺和保证。\r\n　　2、与广告商及其他第三方进行交易\r\n　　您通过本网站与合作者或间接合作者及其他第三方进行任何形式的通讯或商业往来，或参与促销活动，包含相关商品或服务之付款及交付，以及达成的其它任何相关条款、条件、保证或声明，完全为您与合作者或间接合作者及其他第三方之间之行为。您因前述任何交易或前述合作者或间接合作者及其他第三方而遭受的任何性质的损失或损害，淘客基地对此不负任何法律责任。\r\n　　您了解并同意淘客基地上的信息是用户自行发布，且可能存在风险和瑕疵。淘客基地仅作为交易地点。淘客基地仅作为您获取物品或服务信息、物色交易对象、就物品和/或服务的交易进行协商及开展交易的场所，但淘客基地无法控制交易所涉及的物品的质量、安全或合法性，商贸信息的真实性或准确性，以及交易各方履行其在贸易协议中各项义务的能力。您应自行谨慎判断确定相关物品及/或信息的真实性、合法性和有效性，并自行承担因此产生的责任与损失。\r\n　　3、除非法律法规明确要求，或出现以下情况，否则，淘客基地没有义务对所有用户的注册数据、商品（服务）信息、交易行为以及与交易有关的其它事项进行事先审查：\r\n　　a） 淘客基地有合理的理由认为特定会员及具体交易事项可能存在重大违法或违约情形。\r\n　　b） 淘客基地有合理的理由认为用户在返利网的行为涉嫌违法或不当。\r\n　　4、淘客基地及其关联公司有权受理您与其他会员因交易产生的争议，并有权单方判断与该争议相关的事实及应适用的规则，进而作出处理决定。该处理决定对您有约束力。如您未在限期内执行处理决定的，则淘客基地及其关联公司有权利（但无义务）直接使用您淘客基地账户内的款项。应及时弥补淘客基地及其关联公司的损失，否则淘客基地及其关联公司有权直接抵减您在其它合同项下的权益，并有权继续追偿。\r\n　　您理解并同意，淘客基地及其关联公司并非司法机构，仅能以普通人的身份对证据进行鉴别，淘客基地及其关联公司对争议的调处完全是基于您的委托，淘客基地及其关联公司无法保证争议处理结果符合您的期望，也不对争议调处结论承担任何责任。如您因此遭受损失，您同意自行向受益人索偿。\r\n　　5、您了解并同意，淘客基地不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿 (无论淘客基地是否已被告知该损害赔偿的可能性) ：\r\n　　a） 使用或未能使用淘客基地服务。\r\n　　b） 第三方未经批准的使用您的账户或更改您的数据；您的传输或数据遭到未获授权的存取或变更。\r\n　　c）通过淘客基地服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。\r\n　　d） 您对淘客基地服务的误解，与本服务相关的其它事宜，但本使用协议有明确规定的除外。\r\n　　e）任何第三方在本服务中所作之声明或行为； 任何非因淘客基地的原因而引起的与淘客基地服务有关的其它损失。\r\n　　6、不论在何种情况下，淘客基地均不对由于信息网络正常的设备维护，信息网络连接故障，电脑、通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。\r\n　　7、淘客基地之专属权利\r\n　　您了解并同意，本服务及本服务所使用之相关软件（以下简称“软件”）含有受到相关知识产权及其它法律保护之专有保密资料。您也了解并同意，经由本服务合作者或间接合作者及其他第三方或向您呈现之赞助广告或信息所包含之内容，亦受到著作权、商标权、服务商标、专利权或其它专属权利之法律保护。未经淘客基地或合作者或间接合作者及其他第三方明示授权，您不得修改、出租、出借、出售、散布本服务或软件之任何部份或全部，或据以制作衍生著作，使用擅自修改后的软件，包括但不限于为了未经授权而使用本服务之目的。淘客基地仅授予您个人、不可移转及非专属之使用权，使您得于单机计算机使用其软件之目的码，但您不得（并不得允许任何第三人）复制、修改、创作衍生著作、进行还原工程、反向组译，或以其它方式发现原始码，或出售、转让、再授权或提供软件设定担保，或以其它方式移转软件之任何权利。您同意将通过由淘客基地所提供的界面而非任何其它途径使用本服务。\r\n　　8、用户专属权利\r\n　　淘客基地尊重他人知识产权，呼吁用户也要同样尊重知识产权。如果您对他人的知识产权或其他人身权利造成了侵害，淘客基地将依国家法律法规的规定，或在适当的情形下，将依其服务条款或其相关规范性规定，删除特定内容或以至终止您对账户的使用。\r\n　　四、协议终止\r\n　　1、您了解并同意淘客基地有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部淘客基地平台服务，暂时冻结或永久冻结（注销）您的账户，且无须为此向您或任何第三方承担任何责任。您同意淘客基地基于其自行之考虑，因任何理由，包含但不限于缺乏使用，或淘客基地认为您已经违反本使用协议的文字及精神，终止您的帐号或本服务之使用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本使用协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并同意，淘客基地可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您的帐号及相关信息和文件被关闭或删除，淘客基地对您或任何第三人均不承担任何责任。\r\n　　2、出现以下情况时，淘客基地有权直接以注销账户的方式终止本协议:\r\n　　a） 淘客基地终止向您提供服务后，您涉嫌再一次直接或间接或以他人名义注册为淘客基地用户的；\r\n　　b） 您提供的电子邮箱不存在或无法接收电子邮件，且没有其他方式可以与您进行联系，或淘客基地以其它联系方式通知您更改电子邮件信息,而您在淘客基地通知后三个工作日内仍未更改为有效的电子邮箱的。\r\n　　c） 您注册信息中的主要内容不真实或不准确或不及时或不完整。\r\n　　d） 本协议（含规则及上述其他）变更时，您明示并通知淘客基地不愿接受新的服务协议的；\r\n　　e） 其它淘客基地认为应当终止服务的情况。\r\n　　3、您有权向淘客基地要求注销您的账户，经淘客基地审核同意的，淘客基地注销（永久冻结）您的账户，届时，您与淘客基地基于本协议的合同关系即终止。您的账户被注销（永久冻结）后，淘客基地没有义务为您保留或向您披露您账户中的任何信息，也没有义务向您或第三方转发任何您未曾阅读或发送过的信息。\r\n　　4、您了解并同意您与淘客基地的合同关系终止后，淘客基地仍享有下列权利\r\n　　a） 继续保存您的注册信息及您使用淘客基地服务期间的所有交易信息。\r\n　　b） 您在使用淘客基地服务期间存在违法行为或违反本协议和/或规则的行为的，淘客基地仍可依据本协议向您主张权利。\r\n　　5、淘客基地中止或终止向您提供服务后，对于您在服务中止或终止之前的交易行为依下列原则处理，您应独力处理并完全承担进行以下处理所产生的任何争议、损失或增加的任何费用，并应确保淘客基地免于因此产生任何损失或承担任何费用：\r\n　　a） 您在服务中止或终止之前已经上传至淘客基地的物品尚未交易的，淘客基地有权在中止或终止服务的同时删除此项物品的相关信息；\r\n　　b） 您在服务中止或终止之前已经与其他会员达成买卖合同，但合同尚未实际履行的，淘客基地有权删除该买卖合同及其交易物品的相关信息；\r\n　　c） 您在服务中止或终止之前已经与其他会员达成买卖合同且已部分履行的，淘客基地可以不删除该项交易，但淘客基地有权在中止或终止服务的同时将相关情形通知您的交易对方。\r\n　　五、一般条款\r\n　　1）本使用协议、网站公告、帮助中心和免责声明构成您与淘客基地之全部协议，并规范您对于本服务之使用行为。在您使用相关服务、使用第三方提供的内容或软件时，亦应遵从所适用之附加条款及条件；\r\n　　2）本使用协议及您与淘客基地之关系，均受到中华人民共和国法律管辖。本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，如无相关法律规定的，则应参照通用国际商业惯例和（或）行业惯例。您与淘客基地就本服务、本使用协议或其它有关事项发生的争议，应首先友好协商解决，协商不成时应提请中国国际经济贸易仲裁委员会仲裁，仲裁裁决是终局性的，对双方均有约束力；\r\n　　3）淘客基地未行使或执行本使用协议任何权利或规定，不构成对前述权利或权利之放弃；\r\n　　4）倘本使用协议之任何规定因与中华人民共和国法律抵触而无效，您依然同意应依照法律，努力使该规定所反映之当事人意向具备效力，且本使用协议其它规定仍应具有完整的效力及效果；\r\n　　5） 只要您登录了淘客基地，就代表您任何以上所有协议。\r\n　　6）淘客基地对本使用协议享有最终解释权。', '');|
INSERT INTO tkjd_setting VALUES ('user_intro_default', '淘客基地 ', '');|
INSERT INTO tkjd_setting VALUES ('ipban_switch', '0', '');|
INSERT INTO tkjd_setting VALUES ('score_item_img', 'a:4:{s:6:\"swidth\";s:3:\"210\";s:7:\"sheight\";s:3:\"210\";s:6:\"bwidth\";s:3:\"350\";s:7:\"bheight\";s:3:\"350\";}', '');|
INSERT INTO tkjd_setting VALUES ('seo_config', 'a:15:{s:5:\"index\";a:3:{s:5:\"title\";s:12:\"{site_title}\";s:8:\"keywords\";s:15:\"{site_keywords}\";s:11:\"description\";s:18:\"{site_description}\";}s:4:\"cate\";a:3:{s:5:\"title\";s:23:\"{cate_name}-{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:4:\"item\";a:3:{s:5:\"title\";s:7:\"{title}\";s:8:\"keywords\";s:6:\"{tags}\";s:11:\"description\";s:7:\"{intro}\";}s:10:\"gift_index\";a:3:{s:5:\"title\";s:12:\"积分商城\";s:8:\"keywords\";s:23:\"积分兑换,0元兑换\";s:11:\"description\";s:45:\"会员积分可以兑换你想要的东西哦\";}s:4:\"gift\";a:3:{s:5:\"title\";s:11:\"{cate_name}\";s:8:\"keywords\";s:11:\"{cate_name}\";s:11:\"description\";s:11:\"{cate_name}\";}s:9:\"gift_item\";a:3:{s:5:\"title\";s:7:\"{title}\";s:8:\"keywords\";s:6:\"{tags}\";s:11:\"description\";s:7:\" {info}\";}s:11:\"dapei_index\";a:3:{s:5:\"title\";s:3:\"8.8\";s:8:\"keywords\";s:25:\"衣服搭配,服装搭配\";s:11:\"description\";s:42:\"精选自淘宝网的女装搭配方案。\";}s:11:\"brand_index\";a:3:{s:5:\"title\";s:30:\"领券直播-{seo_description}\";s:8:\"keywords\";s:21:\"领券直播·1···\";s:11:\"description\";s:15:\"领券直播454\";}s:10:\"brand_cate\";a:3:{s:5:\"title\";s:36:\"{cate_name}- {seo_title}-{site_name}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:9:\"tag_index\";a:3:{s:5:\"title\";s:11:\"20元封顶\";s:8:\"keywords\";s:19:\"Keywords20元封顶\";s:11:\"description\";s:25:\"Description   20元封顶\";}s:13:\"article_index\";a:3:{s:5:\"title\";s:12:\"文章首页\";s:8:\"keywords\";s:59:\"文章,软文,原创文章,摘要,精彩网文,服装搭配\";s:11:\"description\";s:27:\"精选时尚资讯文章。\";}s:12:\"article_cate\";a:3:{s:5:\"title\";s:36:\"{cate_name}- {seo_title}-{site_name}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:7:\"article\";a:3:{s:5:\"title\";s:19:\"{title}-{site_name}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:11:\"promo_index\";a:3:{s:5:\"title\";s:15:\"大家来晒单\";s:8:\"keywords\";s:21:\"大家来晒单eyword\";s:11:\"description\";s:17:\"eywordDescription\";}s:11:\"video_index\";a:3:{s:5:\"title\";s:6:\"看货\";s:8:\"keywords\";s:6:\"视频\";s:11:\"description\";s:7:\"视频1\";}}', '');|
INSERT INTO tkjd_setting VALUES ('taojindian_html', '', '');|
INSERT INTO tkjd_setting VALUES ('shai_pic', '2048', '');|
INSERT INTO tkjd_setting VALUES ('shai_score', '10', '');|
INSERT INTO tkjd_setting VALUES ('item_img', 'a:2:{s:5:\"width\";s:3:\"210\";s:6:\"height\";s:4:\"1000\";}', '');|
INSERT INTO tkjd_setting VALUES ('item_simg', 'a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}', '');|
INSERT INTO tkjd_setting VALUES ('item_bimg', 'a:2:{s:5:\"width\";s:3:\"468\";s:6:\"height\";s:4:\"1000\";}', '');|
INSERT INTO tkjd_setting VALUES ('attach_path', 'data/upload/', '');|
INSERT INTO tkjd_setting VALUES ('reg_status', '1', '');|
INSERT INTO tkjd_setting VALUES ('reg_closed_reason', '<h1>暂时关闭注册</h1>', '');|
INSERT INTO tkjd_setting VALUES ('index_page_size', '80', '');|
INSERT INTO tkjd_setting VALUES ('kefu_html', '网络', '');|
INSERT INTO tkjd_setting VALUES ('site_url', 'http://www.您的域名.com/', '');|
INSERT INTO tkjd_setting VALUES ('index_sort', 'id  desc', '');|
INSERT INTO tkjd_setting VALUES ('wait_time', '0', '');|
INSERT INTO tkjd_setting VALUES ('end_time', '1501746671', '');|
INSERT INTO tkjd_setting VALUES ('index_ems', '0', '');|
INSERT INTO tkjd_setting VALUES ('index_mix_price', '0', '');|
INSERT INTO tkjd_setting VALUES ('index_max_price', '0', '');|
INSERT INTO tkjd_setting VALUES ('index_shop_type', '', '');|
INSERT INTO tkjd_setting VALUES ('index_mix_volume', '1000', '');|
INSERT INTO tkjd_setting VALUES ('index_max_volume', '0', '');|
INSERT INTO tkjd_setting VALUES ('index_mix_quan', '5', '');|
INSERT INTO tkjd_setting VALUES ('index_max_quan', '0', '');|
INSERT INTO tkjd_setting VALUES ('item_add_time', '72', '');|
INSERT INTO tkjd_setting VALUES ('qq', '2850881774', '');|
INSERT INTO tkjd_setting VALUES ('header_html', '', '');|
INSERT INTO tkjd_setting VALUES ('zhi_page_size', '5', '');|
INSERT INTO tkjd_setting VALUES ('zhi_sort', 'volume desc', '');|
INSERT INTO tkjd_setting VALUES ('zhi_shop_type', '', '');|
INSERT INTO tkjd_setting VALUES ('zhi_mix_price', '0', '');|
INSERT INTO tkjd_setting VALUES ('zhi_max_price', '0', '');|
INSERT INTO tkjd_setting VALUES ('zhi_mix_volume', '0', '');|
INSERT INTO tkjd_setting VALUES ('zhi_max_volume', '0', '');|
INSERT INTO tkjd_setting VALUES ('zhi_ems', '0', '');|
INSERT INTO tkjd_setting VALUES ('orlike_page_size', '8', '');|
INSERT INTO tkjd_setting VALUES ('orlike_sort', 'volume desc', '');|
INSERT INTO tkjd_setting VALUES ('orlike_shop_type', '', '');|
INSERT INTO tkjd_setting VALUES ('orlike_mix_price', '', '');|
INSERT INTO tkjd_setting VALUES ('orlike_max_price', '', '');|
INSERT INTO tkjd_setting VALUES ('orlike_mix_volume', '', '');|
INSERT INTO tkjd_setting VALUES ('orlike_max_volume', '', '');|
INSERT INTO tkjd_setting VALUES ('orlike_ems', '1', '');|
INSERT INTO tkjd_setting VALUES ('orlike_end_time', '0', '');|
INSERT INTO tkjd_setting VALUES ('orlike_time', '0', '');|
INSERT INTO tkjd_setting VALUES ('qq_code', '报名页面的公告文字内容在后台首页参数设置中修改。', '');|
INSERT INTO tkjd_setting VALUES ('site_cachetime', '3600', '');|
INSERT INTO tkjd_setting VALUES ('tencent_code', '', '');|
INSERT INTO tkjd_setting VALUES ('weibo_code', '', '');|
INSERT INTO tkjd_setting VALUES ('zhi_end_time', '0', '');|
INSERT INTO tkjd_setting VALUES ('zhi_time', '0', '');|
INSERT INTO tkjd_setting VALUES ('coupon_add_time', '72', '');|
INSERT INTO tkjd_setting VALUES ('index_not_text', '', '');|
INSERT INTO tkjd_setting VALUES ('index_cids', 'a:28:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"9\";i:4;s:2:\"10\";i:5;s:2:\"11\";i:6;s:2:\"12\";i:7;s:2:\"13\";i:8;s:2:\"14\";i:9;s:2:\"15\";i:10;s:2:\"16\";i:11;s:2:\"17\";i:12;s:2:\"18\";i:13;s:2:\"19\";i:14;s:2:\"20\";i:15;s:2:\"21\";i:16;s:2:\"22\";i:17;s:2:\"23\";i:18;s:2:\"24\";i:19;s:2:\"27\";i:20;s:2:\"35\";i:21;s:2:\"36\";i:22;s:2:\"37\";i:23;s:2:\"38\";i:24;s:2:\"39\";i:25;s:2:\"40\";i:26;s:2:\"41\";i:27;s:2:\"42\";}', '');|
INSERT INTO tkjd_setting VALUES ('site_width', 'w980', '');|
INSERT INTO tkjd_setting VALUES ('site_wc', 'w1005', '');|
INSERT INTO tkjd_setting VALUES ('index_admin', 'admin', '');|
INSERT INTO tkjd_setting VALUES ('site_cache', '0', '');|
INSERT INTO tkjd_setting VALUES ('site_cachepath', '', '');|
INSERT INTO tkjd_setting VALUES ('item_hit', '0', '');|
INSERT INTO tkjd_setting VALUES ('coupon_quan', '0', '');|
INSERT INTO tkjd_setting VALUES ('site_logo', '/data/upload/site/591aa60ece8bf.png', '');|
INSERT INTO tkjd_setting VALUES ('site_navlogo', '/data/upload/site/54a1939500fc7.gif', '');|
INSERT INTO tkjd_setting VALUES ('site_flogo', '/data/upload/site/54a19c9814c8b.png', '');|
INSERT INTO tkjd_setting VALUES ('site_weixin', '/data/upload/site/5959c4233d090.jpg', '');|
INSERT INTO tkjd_setting VALUES ('site_browser', '/data/upload/site/5959c42b44aa2.jpg', '');|
INSERT INTO tkjd_setting VALUES ('sina_url', 'http://www.tkjidi.com', '');|
INSERT INTO tkjd_setting VALUES ('qzone_url', 'http://www.tkjidi.com', '');|
INSERT INTO tkjd_setting VALUES ('tenxun_url', 'http://www.tkjidi.com', '');|
INSERT INTO tkjd_setting VALUES ('click_ai', '0', '');|
INSERT INTO tkjd_setting VALUES ('quancaiji', '0', '');|
INSERT INTO tkjd_setting VALUES ('site_zidong', '0', '');|
INSERT INTO tkjd_setting VALUES ('wap_title', '淘宝客手机客户端', '');|
INSERT INTO tkjd_setting VALUES ('wap_keywords', '手机淘宝,手机折扣,手机购物', '');|
INSERT INTO tkjd_setting VALUES ('wap_description', '', '');|
INSERT INTO tkjd_setting VALUES ('wap_logo', '/static/jwap/images/about/juan04_logo.png', '');|
INSERT INTO tkjd_setting VALUES ('user_logo', '/static/newpi/bao/images/logo.png', '');|
INSERT INTO tkjd_setting VALUES ('site_secret', '', '');|
INSERT INTO tkjd_setting VALUES ('site_title', '淘客基地vip商城演示 白菜大额淘宝天猫独家专享全优惠券 超级折扣优惠1折白送拼团', '');|
INSERT INTO tkjd_setting VALUES ('site_description', '淘客基地vip商城演示 白菜大额淘宝天猫独家专享全优惠券 超级折扣优惠1折白送拼团', '');|
INSERT INTO tkjd_setting VALUES ('site_token', '', '');|
INSERT INTO tkjd_setting VALUES ('robots_key', '', '');|
INSERT INTO tkjd_setting VALUES ('yhq_pid', 'mm_0000_0000_0000', '');|
INSERT INTO tkjd_setting VALUES ('site_uri', '', '');|
INSERT INTO tkjd_setting VALUES ('qq_qun', 'http://shang.qq.com/wpa/qunwpa?idkey=d695b0c4a1a83b12bfdd948fd84adc65b19c6947ac4f7388adbd5e95e58cf9fc', '');|
INSERT INTO tkjd_setting VALUES ('qq_qun_intro', '欢迎您的到来，加入我们的群吧', '');|
INSERT INTO tkjd_setting VALUES ('app_img', '', '');|
INSERT INTO tkjd_setting VALUES ('show_type', '1', '');|
INSERT INTO tkjd_setting VALUES ('site_name', '我爱特卖券', '');|
INSERT INTO tkjd_setting VALUES ('site_keyword', '淘客基地vip商城演示 白菜大额淘宝天猫独家专享全优惠券 超级折扣优惠1折白送拼团', '');|
INSERT INTO tkjd_setting VALUES ('guoqi', '1', '不显示已过期的商品');|
INSERT INTO tkjd_setting VALUES ('access_token', '', '');|
INSERT INTO tkjd_setting VALUES ('refresh_token', '', '');|
INSERT INTO tkjd_setting VALUES ('end_time', '0', '');|
INSERT INTO tkjd_setting VALUES ('open_weixin', '0', '1是打开 0是不打开');|


DROP TABLE IF EXISTS `tkjd_shaiorder`;|
CREATE TABLE `tkjd_shaiorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `desc` varchar(500) DEFAULT NULL,
  `order_num` varchar(100) DEFAULT NULL,
  `shai_pic` varchar(600) DEFAULT NULL,
  `addtime` int(11) DEFAULT '0',
  `deny_desc` varchar(500) DEFAULT NULL,
  `deny_time` int(11) DEFAULT '0',
  `status` tinyint(2) DEFAULT '0',
  `score` int(10) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `orderprice` varchar(10) DEFAULT '0',
  `ordid` int(10) DEFAULT '255' COMMENT '正序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;|



DROP TABLE IF EXISTS `tkjd_sign`;|
CREATE TABLE `tkjd_sign` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `last_date` int(10) NOT NULL DEFAULT '0',
  `sign_count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_sign_log`;|
CREATE TABLE `tkjd_sign_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `sign_date` int(10) NOT NULL DEFAULT '0',
  `score` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_tag`;|
CREATE TABLE `tkjd_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ename` varchar(255) NOT NULL,
  `pass` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_tag VALUES ('4', '花花公子', 'huahuagongzi', '1');|
INSERT INTO tkjd_tag VALUES ('6', '夏季防晒', 'fangshai', '1');|
INSERT INTO tkjd_tag VALUES ('7', '女装', 'nvzhuang', '1');|
INSERT INTO tkjd_tag VALUES ('8', '补水神器', 'bushuishenqi', '1');|

DROP TABLE IF EXISTS `tkjd_tb`;|
CREATE TABLE `tkjd_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '采集器ID',
  `name` varchar(200) NOT NULL COMMENT '采集器名称',
  `q` varchar(255) NOT NULL COMMENT '关键词',
  `cat` varchar(11) NOT NULL COMMENT '要采集的分类ID',
  `cate_id` int(11) DEFAULT '0' COMMENT '所属分类',
  `tmall` int(1) NOT NULL DEFAULT '0' COMMENT '是否商城',
  `baoyou` int(1) NOT NULL DEFAULT '0',
  `zk` int(1) NOT NULL DEFAULT '0',
  `new` int(1) NOT NULL DEFAULT '0',
  `start_price` varchar(20) NOT NULL COMMENT '起始价',
  `end_price` varchar(20) NOT NULL COMMENT '结束价',
  `page` varchar(50) NOT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `ordid` tinyint(11) unsigned NOT NULL DEFAULT '255',
  `status` int(11) DEFAULT '1',
  `sort` varchar(255) NOT NULL COMMENT '排序方式',
  `last_page` int(11) DEFAULT '0' COMMENT '上次采集页数',
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_tbapi`;|
CREATE TABLE `tkjd_tbapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '采集器ID',
  `name` varchar(200) NOT NULL COMMENT '采集器名称',
  `q` varchar(255) NOT NULL COMMENT '关键词',
  `cat` varchar(11) NOT NULL COMMENT '要采集的分类ID',
  `cate_id` int(11) DEFAULT '0' COMMENT '所属分类',
  `itemloc` varchar(20) NOT NULL COMMENT '地区',
  `is_tmall` varchar(5) NOT NULL DEFAULT 'false' COMMENT '是否商城',
  `start_tk_rate` int(10) NOT NULL DEFAULT '10',
  `end_tk_rate` int(10) NOT NULL DEFAULT '10000',
  `is_overseas` varchar(5) NOT NULL DEFAULT 'false' COMMENT '是否海外',
  `start_price` varchar(20) NOT NULL COMMENT '起始价',
  `end_price` varchar(20) NOT NULL COMMENT '结束价',
  `page` varchar(50) NOT NULL,
  `page_size` int(3) NOT NULL DEFAULT '40',
  `ordid` tinyint(11) unsigned NOT NULL DEFAULT '255',
  `status` int(11) DEFAULT '1',
  `sort` varchar(255) NOT NULL COMMENT '排序方式',
  `last_page` int(11) DEFAULT '0' COMMENT '上次采集页数',
  `last_time` int(11) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_tbapi VALUES ('1', '男装', '男装', '', '2', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451728631', '0');|
INSERT INTO tkjd_tbapi VALUES ('2', '女装', '女装', '', '1', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '2', '1451728995', '0');|
INSERT INTO tkjd_tbapi VALUES ('3', '功能箱包', '箱包', '', '3', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451729539', '0');|
INSERT INTO tkjd_tbapi VALUES ('4', '母婴（母婴用品）', '母婴', '', '4', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451729574', '0');|
INSERT INTO tkjd_tbapi VALUES ('5', '居家（居家用品）', '居家', '', '5', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451729595', '0');|
INSERT INTO tkjd_tbapi VALUES ('6', '美妆（面膜）', '面膜', '', '6', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451729622', '0');|
INSERT INTO tkjd_tbapi VALUES ('7', '数码', '数码', '', '7', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451729637', '0');|
INSERT INTO tkjd_tbapi VALUES ('8', '美食', '美食', '', '8', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451729651', '0');|
INSERT INTO tkjd_tbapi VALUES ('9', '文体', '文体', '', '9', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'tk_rate_des', '0', '1451729662', '0');|
INSERT INTO tkjd_tbapi VALUES ('10', '9.9包邮采集器', '9.9', '', '25', '', 'false', '10', '10000', 'false', '0', '9.9', '5', '40', '255', '1', 'total_sales_des', '0', '1451729682', '0');|
INSERT INTO tkjd_tbapi VALUES ('11', '十九块九采集器', '19.9', '', '26', '', 'false', '10', '10000', 'false', '10', '19.9', '5', '40', '255', '1', 'total_sales_des', '0', '1451729717', '0');|
INSERT INTO tkjd_tbapi VALUES ('12', '年货', '年货', '', '27', '', 'false', '10', '10000', 'false', '1', '99999', '5', '40', '255', '1', 'total_sales_des', '0', '1451729732', '0');|

DROP TABLE IF EXISTS `tkjd_union`;|
CREATE TABLE `tkjd_union` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `ouid` int(10) DEFAULT NULL,
  `ousername` varchar(20) DEFAULT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_union VALUES ('1', '7', '15690326296', '101.24.119.93', '5', null, null, '1498814125');|
INSERT INTO tkjd_union VALUES ('2', '7', '15690326296', '113.108.21.80', '5', null, null, '1498814272');|
INSERT INTO tkjd_union VALUES ('3', '7', '15690326296', '183.60.52.64', '5', null, null, '1498814272');|
INSERT INTO tkjd_union VALUES ('4', '7', '15690326296', '101.226.33.238', '5', null, null, '1498814471');|
INSERT INTO tkjd_union VALUES ('5', '7', '15690326296', '101.226.66.181', '5', null, null, '1498876044');|
INSERT INTO tkjd_union VALUES ('6', '8', '18611673566', '101.24.126.31', '5', null, null, '1499049014');|

DROP TABLE IF EXISTS `tkjd_user`;|
CREATE TABLE `tkjd_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uc_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '0' COMMENT '1男，0女',
  `intro` varchar(500) NOT NULL,
  `byear` smallint(4) unsigned NOT NULL,
  `bmonth` tinyint(2) unsigned NOT NULL,
  `bday` tinyint(2) unsigned NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `score_level` int(10) unsigned NOT NULL DEFAULT '0',
  `qq` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `realname` varchar(25) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `reg_ip` varchar(15) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sign_time` int(10) DEFAULT '0',
  `last_ip` varchar(15) DEFAULT '0',
  `login_count` int(10) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `login_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '商家2还是普通用户1',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `alipay` varchar(100) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `shai_score` int(10) DEFAULT '0',
  `shai_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;|



DROP TABLE IF EXISTS `tkjd_user_bind`;|
CREATE TABLE `tkjd_user_bind` (
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `type` varchar(60) NOT NULL,
  `keyid` varchar(100) NOT NULL,
  `info` text NOT NULL,
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`type`),
  KEY `type_keyid` (`type`,`keyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_user_msgtip`;|
CREATE TABLE `tkjd_user_msgtip` (
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1:关注，2:提到，3:私信，4:通知',
  `num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


DROP TABLE IF EXISTS `tkjd_user_stat`;|
CREATE TABLE `tkjd_user_stat` (
  `uid` int(10) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `uid_type` (`uid`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_user_stat VALUES ('1', 'register', '3', '1498794086');|
INSERT INTO tkjd_user_stat VALUES ('1', 'login', '5', '1498794086');|
INSERT INTO tkjd_user_stat VALUES ('2', 'register', '1', '1498799337');|
INSERT INTO tkjd_user_stat VALUES ('3', 'register', '1', '1498799400');|
INSERT INTO tkjd_user_stat VALUES ('4', 'register', '1', '1498799483');|
INSERT INTO tkjd_user_stat VALUES ('4', 'login', '1', '1498799483');|
INSERT INTO tkjd_user_stat VALUES ('5', 'register', '1', '1498799513');|
INSERT INTO tkjd_user_stat VALUES ('5', 'login', '5', '1499236792');|
INSERT INTO tkjd_user_stat VALUES ('3', 'login', '1', '1498799720');|
INSERT INTO tkjd_user_stat VALUES ('6', 'register', '1', '1498813984');|
INSERT INTO tkjd_user_stat VALUES ('6', 'login', '1', '1499046135');|
INSERT INTO tkjd_user_stat VALUES ('7', 'register', '1', '1498814094');|
INSERT INTO tkjd_user_stat VALUES ('7', 'login', '1', '1498814094');|
INSERT INTO tkjd_user_stat VALUES ('8', 'register', '1', '1499048702');|
INSERT INTO tkjd_user_stat VALUES ('8', 'login', '2', '1499065236');|

DROP TABLE IF EXISTS `tkjd_uz800_cate`;|
CREATE TABLE `tkjd_uz800_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cid` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_uz800_cate VALUES ('1', '女装', '2', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('2', '男装', '11', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('3', '居家', '7', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('4', '母婴', '8', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('5', '鞋包', '4', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('6', '配饰', '12', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('7', '美食', '6', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('8', '数码家电', '5', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('9', '化妆品', '3', '0', '0', '0');|
INSERT INTO tkjd_uz800_cate VALUES ('10', '文体', '9', '0', '0', '0');|


DROP TABLE IF EXISTS `tkjd_uzjp_cate`;|
CREATE TABLE `tkjd_uzjp_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cid` varchar(200) NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_uzjp_cate VALUES ('1', '服饰', 'fushi', '0', '0', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('2', '母婴', 'muying', '0', '0', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('3', '居家', 'jujia', '0', '0', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('4', '其他', 'qita', '0', '0', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('5', '上衣', 'shangyi', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('6', '裙裤', 'qunku', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('7', '套装', 'taozhuang', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('8', '内衣', 'neiyi', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('9', '鞋子', 'xiezi', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('10', '箱包', 'xiangbao', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('11', '配饰', 'peishi', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('12', '中老年', 'zhonglaonian', '1', '1|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('13', '童装', 'tongzhuang', '2', '2|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('14', '童鞋', 'tongxie', '2', '2|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('15', '婴幼用品', 'yingyouyongpin', '2', '2|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('16', '学习玩具', 'xuexiwanju', '2', '2|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('17', '孕妈专区', 'yunmazhuangqu', '2', '2|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('18', '床品布艺', 'chuangpinbuyi', '3', '3|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('19', '居家百货', 'jujiabaihuo', '3', '3|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('20', '餐厨清洁', 'canchuqingjie', '3', '3|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('21', '家具建材', 'jiajujiancai', '3', '3|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('22', '家用电器', 'jiayongdianqi', '3', '3|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('23', '数码', 'shuma', '4', '4|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('24', '美食', 'meishi', '4', '4|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('25', '美妆', 'meizhuang', '4', '4|', '0');|
INSERT INTO tkjd_uzjp_cate VALUES ('26', '文体', 'wenti', '4', '4|', '0');|


DROP TABLE IF EXISTS `tkjd_uzrobots`;|
CREATE TABLE `tkjd_uzrobots` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '采集器ID',
  `name` varchar(200) NOT NULL COMMENT '采集器名称',
  `keyword` varchar(255) NOT NULL COMMENT '关键词',
  `cat` varchar(11) NOT NULL COMMENT '要采集的分类ID',
  `cate_id` int(11) DEFAULT '0' COMMENT '所属分类',
  `start_time` bigint(20) NOT NULL COMMENT '起始价',
  `end_time` bigint(20) NOT NULL COMMENT '结束价',
  `ordid` tinyint(11) unsigned NOT NULL DEFAULT '255',
  `status` int(11) DEFAULT '1',
  `last_page` int(11) DEFAULT '0' COMMENT '上次采集页数',
  `last_time` int(11) DEFAULT NULL,
  `lastvolume` int(10) DEFAULT '1',
  `hm_cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;|


INSERT INTO tkjd_uzrobots VALUES ('9', 'U站（女装）', '', '', '1', '1452182400', '1443974400', '255', '1', '0', '1452140376', '10', '1');|
INSERT INTO tkjd_uzrobots VALUES ('10', 'U站（男装）', '', '', '2', '1452009600', '1452182400', '255', '1', '0', '1452140399', '10', '2');|
INSERT INTO tkjd_uzrobots VALUES ('11', 'U站（鞋包）', '', '', '3', '1452009600', '1452182400', '255', '1', '0', '1452141405', '10', '22');|
INSERT INTO tkjd_uzrobots VALUES ('12', 'U站（母婴）', '', '', '4', '1452009600', '1452182400', '255', '1', '0', '1452143129', '10', '4');|
INSERT INTO tkjd_uzrobots VALUES ('13', 'U站（居家）', '', '', '5', '1452009600', '1452182400', '255', '1', '0', '1452141439', '10', '5');|
INSERT INTO tkjd_uzrobots VALUES ('14', 'U站（美妆）', '', '', '6', '1452009600', '1452182400', '255', '1', '0', '1452141455', '10', '6');|
INSERT INTO tkjd_uzrobots VALUES ('15', 'U站（数码）', '', '', '7', '1452009600', '1452182400', '255', '1', '0', '1452141469', '10', '7');|
INSERT INTO tkjd_uzrobots VALUES ('16', 'U站（家电）', '', '', '7', '1452009600', '1452182400', '255', '1', '0', '1452141855', '10', '27');|
INSERT INTO tkjd_uzrobots VALUES ('17', 'U站（美食）', '', '', '8', '1452009600', '1452182400', '255', '1', '0', '1452141517', '10', '8');|
INSERT INTO tkjd_uzrobots VALUES ('18', 'U站（文体）', '', '', '9', '1452009600', '1452182400', '255', '1', '0', '1452141536', '10', '9');|
