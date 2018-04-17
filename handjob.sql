/*
Navicat MySQL Data Transfer

Source Server         : 去玩吧
Source Server Version : 50554
Source Host           : 119.23.30.35:3306
Source Database       : handjob

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-02-20 20:14:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hand_book
-- ----------------------------
DROP TABLE IF EXISTS `hand_book`;
CREATE TABLE `hand_book` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(16) NOT NULL,
  `title` varchar(60) NOT NULL COMMENT '书名',
  `subhead` varchar(60) DEFAULT NULL,
  `originalname` varchar(100) DEFAULT NULL COMMENT '原作名（书名）',
  `author` varchar(60) DEFAULT NULL COMMENT '作者',
  `press` varchar(30) DEFAULT NULL COMMENT '出版社',
  `translator` varchar(60) DEFAULT NULL COMMENT '译者',
  `year` varchar(12) DEFAULT NULL COMMENT '出版年',
  `pages` varchar(6) DEFAULT NULL COMMENT '页数',
  `price` varchar(12) DEFAULT NULL COMMENT '价格',
  `handcover` varchar(12) DEFAULT NULL COMMENT '装帧',
  `series` varchar(255) DEFAULT NULL COMMENT '丛书',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_book
-- ----------------------------
INSERT INTO `hand_book` VALUES ('58', '9787509560167', '《&lt;21世纪资本论&gt;到底发现了什么》 ', '到底发现了什么', null, '李实/岳希明', '中国财政经济出版社', null, '2015-11', '313', '39.8', '精装', null, '2017-12-08 16:10:11');
INSERT INTO `hand_book` VALUES ('59', '9787542942302', '一看就懂的经济常识全图解 ', null, null, '斯凯恩', '立信会计出版社', null, '2014-6', '320', '36.00', null, null, '2017-12-08 16:22:14');
INSERT INTO `hand_book` VALUES ('60', '9787108055781', '扫起落叶好过冬 ', null, null, '&nbsp;林达', '生活·读书·新知三联书店', null, '2015-11', null, '69.00元', '精装', '&nbsp;林达作品集（2015精装版）', '2017-12-08 21:42:34');
INSERT INTO `hand_book` VALUES ('61', '9787550019799', '绘画中的日常 ', null, null, '李梦', '铁葫芦/百花洲文艺出版社', null, '2017-1-1', '224', '42.00', '平装', null, '2017-12-08 21:43:19');
INSERT INTO `hand_book` VALUES ('62', '9787540479893', '去，你的旅行 ', null, null, '阿Sam', '湖南文艺出版社', null, '2017-4', '320', '42.00元', '平装', null, '2017-12-08 21:43:37');
INSERT INTO `hand_book` VALUES ('63', '9787508670836', '感觉的自然史 ', null, null, '[美]戴安娜•阿克曼', '中信出版集团', null, '2017-4', '354', '48.00元', '精装', '&nbsp;阿克曼“自然与我”系列', '2017-12-08 21:43:55');
INSERT INTO `hand_book` VALUES ('64', '9787550248380', '有种后宫叫德妃2 ', null, null, '阿琐', '北京联合出版公司', null, '2015-4', '313', '32.80', '平装', '&nbsp;有种后宫叫德妃', '2017-12-08 21:44:19');
INSERT INTO `hand_book` VALUES ('65', '9787514350418', '一张俊美的脸 ', null, 'ToLoveandBeWise', '&nbsp;[英]约瑟芬·铁伊', '现代出版社', null, '2017-1-1', '220', 'CNY32.80', '平装', '&nbsp;约瑟芬·铁伊作品', '2017-12-08 21:45:24');
INSERT INTO `hand_book` VALUES ('66', '9787121311420', '微服务那些事儿 ', null, null, '纪晓峰', '电子工业出版社', null, '2017-4', null, '65.00', null, null, '2017-12-11 19:37:58');
INSERT INTO `hand_book` VALUES ('67', '9787111362593', '编写高质量代码 ', '改善Java程序的151个建议', null, '秦小波', '机械工业出版社华章公司', null, '2011-12-28', '303', '59.00元', null, '&nbsp;实战系列', '2017-12-12 19:29:31');
INSERT INTO `hand_book` VALUES ('68', '9787115249999', 'JavaScript DOM编程艺术 （第2版） ', null, 'DOMScripting', '[英]JeremyKeith/[加]JeffreySambells', '人民邮电出版社', '杨涛/王建桥/杨晓云等', '2011-4', '300', '49.00元', '平装', '&nbsp;图灵程序设计丛书', '2018-01-07 11:00:27');
INSERT INTO `hand_book` VALUES ('69', '9787302484929', 'Vue.js 实战 ', null, null, '梁灏', '清华大学出版社', null, '2017-10-1', '330', '79.00元', '平装', null, '2018-01-19 20:11:37');
INSERT INTO `hand_book` VALUES ('70', '9787121328251', 'Spring Boot 2精髓 ', '从构建小系统到架构分布式大系统', null, '李家智', '中国工信出版集团', null, '2017-10-23', '384', '79.00', '平装', null, '2018-01-19 20:11:57');

-- ----------------------------
-- Table structure for hand_book_tag
-- ----------------------------
DROP TABLE IF EXISTS `hand_book_tag`;
CREATE TABLE `hand_book_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(6) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL COMMENT '书本标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_book_tag
-- ----------------------------
INSERT INTO `hand_book_tag` VALUES ('56', '58', '[\"\\u6d41\\u884c\\u8d22\\u7ecf\\u8bfb\\u7269\",\"\\u7ecf\\u6d4e\",\"\\u91d1\\u878d\",\"\\u6700.\\u85cf\",\"\\u6211\\u8bfb\\u8fc7\",\"\\u6211\\u60f3\\u8bfb\\u8fd9\\u672c\\u4e66\",\"\\u601d\\u60f3\",\"S\\u4f1a\\/\\u7ecf\\u6d4e\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('57', '59', '[\"\\u7ecf\\u6d4e\\u5b66\\u5165\\u95e8\",\"\\u7ecf\\u6d4e\\u5b66\",\"\\u5f53\\u5f53\\u8bfb\\u4e66\",\"\\u7f8e\\u56fd\",\"\\u7ecf\\u6d4e\",\"2017\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('58', '60', '[\"\\u793e\\u79d1\",\"\\u6797\\u8fbe\",\"*\\u4e09\\u8054@\\u5317\\u4eac*\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('59', '61', '[\"\\u827a\\u672f\",\"\\u7ed8\\u753b\",\"\\u968f\\u7b14\",\"\\u6587\\u827a\",\"\\u7ed8\\u753b\\u4e2d\\u7684\\u65e5\\u5e38\",\"\\u674e\\u68a6\",\"\\u597d\\u4e66\\uff0c\\u503c\\u5f97\\u4e00\\u8bfb\",\"\\u6211\\u60f3\\u8bfb\\u8fd9\\u672c\\u4e66\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('60', '62', '[\"\\u65c5\\u884c\",\"\\u963fSam\\u7684\\u5348\\u591c\\u573a\",\"\\u597d\\u4e66\\uff0c\\u503c\\u5f97\\u4e00\\u8bfb\",\"\\u6211\\u60f3\\u8bfb\\u8fd9\\u672c\\u4e66\",\"\\u65c5\\u6e38\\u968f\\u7b14\",\"\\u751f\\u6d3b\",\"\\u60f3\\u8bfb\\uff0c\\u4e00\\u5b9a\\u5f88\\u7cbe\\u5f69\\uff01\",\"\\u56e0\\u4e3a\\u559c\\');
INSERT INTO `hand_book_tag` VALUES ('61', '63', '[\"\\u6211\\u60f3\\u8bfb\\u8fd9\\u672c\\u4e66\",\"\\u79d1\\u666e\",\"\\u60f3\\u8bfb\\uff0c\\u4e00\\u5b9a\\u5f88\\u7cbe\\u5f69\\uff01\",\"\\u597d\\u4e66\\uff0c\\u503c\\u5f97\\u4e00\\u8bfb\",\"*\\u5317\\u4eac\\u00b7\\u4e2d\\u4fe1\\u51fa\\u7248\\u793e*\",\"\\u751f\\u6d3b\",\"\\u79d1\\u5b66\\u4eba\\u6587\",\"\\u');
INSERT INTO `hand_book_tag` VALUES ('62', '64', '[\"\\u5c0f\\u8bf4\",\"\\u6e05\\u5bab\\u5386\\u53f2\",\"\\u7f51\\u7edc\\u5c0f\\u8bf4\",\"\\u53e4\\u8a00\",\"\\u6e05\\u671d\",\"\\u963f\\u7410\",\"\\u8a00\\u60c5\",\"\\u7f51\\u7edc\\u6587\\u5b66\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('63', '65', '[\"\\u82f1\\u56fd\",\"\\u7ea6\\u745f\\u82ac\\u94c1\\u4f0a\",\"\\u63a8\\u7406\\u5c0f\\u8bf4\",\"\\u5c0f\\u8bf4\",\"\\u82f1\\u56fd@\\u7ea6\\u745f\\u82ac\\u00b7\\u94c1\\u4f0a\",\"\\u96c6\",\"\\u85cf\\u4e66\",\"\\u7ea6\\u745f\\u82ac\\u00b7\\u94c1\\u4f0a\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('64', '66', '[\"\\u5fae\\u670d\\u52a1\",\"\\u5165\\u95e8\",\"cloud\",\"Spring\",\"\\u4ea7\\u54c1\\u7ecf\\u7406\",\"\\u4e92\\u8054\\u7f51\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('65', '67', '[\"Java\",\"\\u7f16\\u7a0b\",\"\\u7f16\\u5199\\u9ad8\\u8d28\\u91cf\\u4ee3\\u7801\",\"java\",\"\\u7a0b\\u5e8f\\u8bbe\\u8ba1\",\"\\u6280\\u672f\",\"Programming\",\"\\u7a0b\\u5e8f\\u5f00\\u53d1\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('66', '68', '[\"javascript\",\"\\u524d\\u7aef\\u5f00\\u53d1\",\"JavaScript\",\"dom\",\"\\u524d\\u7aef\",\"\\u7f16\\u7a0b\",\"Web\",\"web\\u5f00\\u53d1\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('67', '69', '[\"vue.js\",\"JS\",\"\\u4f01\\u4e1a\",\"F2E\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('68', '70', '[\"SpringBoot2\",\"\\u67b6\\u6784\",\"\\u5fae\\u670d\\u52a1\",\"Java\",\"\\u7a0b\\u5e8f\\u8bbe\\u8ba1\",\"JavaEE\",\"Buy\",\"\"]');

-- ----------------------------
-- Table structure for hand_user
-- ----------------------------
DROP TABLE IF EXISTS `hand_user`;
CREATE TABLE `hand_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(32) NOT NULL COMMENT '微信用户openID',
  `nickname` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(12) DEFAULT NULL,
  `country` varchar(12) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `privilege` varchar(21) DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_user
-- ----------------------------
INSERT INTO `hand_user` VALUES ('12', 'oCipAxJnYV2tr2zmMX3Ba223Ix2I', 'With An Orchid', '1', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/lZhzJcx6ewjsickohSBIhqRyg8tCO3G4T37nk8RMGzCdRKCmxzHE4ejZIYlbiaEQZJibIg23gxe8GibFicFkIkP3Ybw/0', null, '2017-09-15 20:32:57');
INSERT INTO `hand_user` VALUES ('13', 'oCipAxDEvC0n1Jag5LWfGBHXsx0E', '樱子', '2', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJt1LtzZ5ibAF7Ozk6BglvAnjDzks9FpqT9P70jkq3reDx3Fdb7pbOqY7XjH8Frwsr45yFBaGmmqbw/0', null, '2017-09-16 23:42:16');
INSERT INTO `hand_user` VALUES ('14', 'oCipAxP_r10V2FxAVMTBoVDjs810', '君临天下', '2', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/HrfI4zof4HNFkrLBwkricxiawicYTugAcMff2BDN99AxibM74AePOCH7vBcbUeDicibXhYZk3pOhlc5mkt6dkwtJf1PQ/0', null, '2017-09-17 22:29:21');
INSERT INTO `hand_user` VALUES ('15', 'oCipAxDVqid5WXN5MUSb_NwRo1AE', '黄焕昭', '1', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epzQgTZmicUEMJTje2ykeg3ibwicmFLXOI4N45f1m7hjoAW6KsR3mgzroQQYvl8AxD3QmNwAiazucRQnw/0', null, '2017-11-16 22:33:00');
INSERT INTO `hand_user` VALUES ('16', 'oPtL5vwIDIXzUbs5bLPG5H-EakE4', 'With An Orchid', '1', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/RqicfxSMWYuibvOGLiadhSlFuicz0NWhE3qTwR7je4sUZpiaPxhqibMxzHEafOEfs1ibvn5Ve3LlKSyzMb9u9ydAEXZxQ/0', null, '2017-12-03 11:13:05');
INSERT INTO `hand_user` VALUES ('17', 'oPtL5vx1UrOESfM_l8XpP3uepGD0', '小小阳光', '1', 'zh_CN', '荆州', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKJJvOhDib2YLNEFJJ2jiblfc2cdialEZ6MqOSKpTr8HEPoGkztUvfETWTXMOcfVWl2SouI1KjnmUnibA/132', null, '2018-01-25 19:03:49');

-- ----------------------------
-- Table structure for hand_user_book
-- ----------------------------
DROP TABLE IF EXISTS `hand_user_book`;
CREATE TABLE `hand_user_book` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_location_id` int(11) DEFAULT NULL,
  `on_ofer` int(1) DEFAULT '1' COMMENT '0：已下架   1：出售中   2：仓库中',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_user_book
-- ----------------------------
INSERT INTO `hand_user_book` VALUES ('88', '16', '58', '118', '1', '2017-12-08 16:10:20');
INSERT INTO `hand_user_book` VALUES ('89', '16', '59', '118', '1', '2017-12-08 16:22:20');
INSERT INTO `hand_user_book` VALUES ('90', '16', '60', '119', '1', '2017-12-08 21:42:42');
INSERT INTO `hand_user_book` VALUES ('91', '16', '61', '119', '1', '2017-12-08 21:46:28');
INSERT INTO `hand_user_book` VALUES ('92', '16', '62', '119', '1', '2017-12-08 21:46:28');
INSERT INTO `hand_user_book` VALUES ('93', '16', '63', '119', '1', '2017-12-08 21:46:28');
INSERT INTO `hand_user_book` VALUES ('94', '16', '64', '119', '1', '2017-12-08 21:46:28');
INSERT INTO `hand_user_book` VALUES ('95', '16', '65', '119', '1', '2017-12-08 21:46:28');
INSERT INTO `hand_user_book` VALUES ('96', '16', '66', '126', '1', '2017-12-11 19:38:04');
INSERT INTO `hand_user_book` VALUES ('97', '16', '67', '127', '1', '2017-12-12 19:29:36');
INSERT INTO `hand_user_book` VALUES ('98', '16', '68', '128', '1', '2018-01-07 11:00:30');
INSERT INTO `hand_user_book` VALUES ('99', '16', '69', '136', '1', '2018-01-19 20:12:09');
INSERT INTO `hand_user_book` VALUES ('100', '16', '70', '136', '1', '2018-01-19 20:12:09');

-- ----------------------------
-- Table structure for hand_user_location
-- ----------------------------
DROP TABLE IF EXISTS `hand_user_location`;
CREATE TABLE `hand_user_location` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) NOT NULL COMMENT 'user表主键',
  `latitude` float(12,6) DEFAULT NULL COMMENT '纬度',
  `longitude` float(12,6) DEFAULT NULL COMMENT '经度',
  `speed` float(6,2) DEFAULT NULL COMMENT '移动速度',
  `accuracy` float(6,2) DEFAULT NULL COMMENT '定位精度',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '定位时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_user_location
-- ----------------------------
INSERT INTO `hand_user_location` VALUES ('118', '16', '23.046976', '113.378426', '0.00', '600.00', '2017-12-08 16:09:15');
INSERT INTO `hand_user_location` VALUES ('119', '16', '23.137127', '113.294418', '0.00', '270.00', '2017-12-08 21:27:30');
INSERT INTO `hand_user_location` VALUES ('120', '16', '23.054977', '113.377205', '0.00', '470.00', '2017-12-08 23:54:57');
INSERT INTO `hand_user_location` VALUES ('121', '16', '23.054979', '113.377205', '0.00', '470.00', '2017-12-09 11:18:07');
INSERT INTO `hand_user_location` VALUES ('123', '16', '23.054979', '113.377205', '0.00', '470.00', '2017-12-09 14:18:12');
INSERT INTO `hand_user_location` VALUES ('124', '16', '23.046988', '113.378426', '0.00', '600.00', '2017-12-09 15:15:16');
INSERT INTO `hand_user_location` VALUES ('125', '16', '23.041262', '113.390892', '0.00', '430.00', '2017-12-09 20:24:56');
INSERT INTO `hand_user_location` VALUES ('126', '16', '23.177485', '113.451027', '0.00', '270.00', '2017-12-11 19:37:45');
INSERT INTO `hand_user_location` VALUES ('127', '16', '23.177485', '113.451035', '0.00', '270.00', '2017-12-12 19:29:07');
INSERT INTO `hand_user_location` VALUES ('128', '16', '23.046286', '113.379662', '0.00', '30.00', '2018-01-07 11:00:17');
INSERT INTO `hand_user_location` VALUES ('129', '16', null, null, null, null, '2018-01-07 11:47:50');
INSERT INTO `hand_user_location` VALUES ('130', '16', '23.046286', '113.379662', '0.00', '30.00', '2018-01-07 11:53:45');
INSERT INTO `hand_user_location` VALUES ('131', '16', '23.046194', '113.379684', '0.00', '30.00', '2018-01-07 13:46:38');
INSERT INTO `hand_user_location` VALUES ('132', '16', '23.046270', '113.379669', '0.00', '30.00', '2018-01-07 15:14:29');
INSERT INTO `hand_user_location` VALUES ('133', '16', '23.046284', '113.379616', '0.00', '30.00', '2018-01-07 22:09:19');
INSERT INTO `hand_user_location` VALUES ('134', '16', '23.046242', '113.379616', '0.00', '30.00', '2018-01-07 22:50:53');
INSERT INTO `hand_user_location` VALUES ('135', '16', '23.152084', '113.490372', '0.00', '30.00', '2018-01-11 23:28:17');
INSERT INTO `hand_user_location` VALUES ('136', '16', '23.177437', '113.450851', '0.00', '220.00', '2018-01-19 20:11:28');
INSERT INTO `hand_user_location` VALUES ('137', '16', '23.046215', '113.379585', '0.00', '30.00', '2018-01-27 10:28:40');
