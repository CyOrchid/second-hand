/*
Navicat MySQL Data Transfer

Source Server         : 去玩吧
Source Server Version : 50554
Source Host           : 119.23.30.35:3306
Source Database       : handjob

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-09-17 22:08:52
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_book
-- ----------------------------
INSERT INTO `hand_book` VALUES ('9', '9787302305712', '大话数据库 ', null, '邹茂扬田洪川', '清华大学出版社', null, '2013-3', '464', '59.00元', '平装', '&nbsp;大话系列', '2017-09-15 20:46:45');
INSERT INTO `hand_book` VALUES ('10', '9787115249999', 'JavaScript DOM编程艺术 （第2版） ', 'DOMScripting', '[英]JeremyKeith/[加]JeffreySambells', '人民邮电出版社', '杨涛/王建桥/杨晓云等', '2011-4', '300', '49.00元', '平装', '&nbsp;图灵程序设计丛书', '2017-09-15 20:54:36');
INSERT INTO `hand_book` VALUES ('11', '9787518022649', '互联网+融资必读 ', null, '严行方著', '中国纺织出版社', null, '2016-3-1', '256', '38.00元', '平装', null, '2017-09-15 21:06:38');
INSERT INTO `hand_book` VALUES ('12', '9787518022649', '互联网+融资必读 ', null, '严行方著', '中国纺织出版社', null, '2016-3-1', '256', '38.00元', '平装', null, '2017-09-15 21:06:49');
INSERT INTO `hand_book` VALUES ('13', '9787542942302', '一看就懂的经济常识全图解 ', null, '斯凯恩', '立信会计出版社', null, '2014-6', '320', '36.00', null, null, '2017-09-16 00:08:09');
INSERT INTO `hand_book` VALUES ('14', '9787302147510', '数据结构 ', null, '&nbsp;严蔚敏/吴伟民', '清华大学出版社', null, '2007-3-1', '334', '30.0', '平装', '&nbsp;清华大学计算机系列教材', '2017-09-16 22:29:19');
INSERT INTO `hand_book` VALUES ('15', '9787540468798', '乖，摸摸头 ', null, '&nbsp;大冰', '湖南文艺出版社', null, '2014-9-1', '336', '36.00元', '平装', null, '2017-09-16 23:43:12');
INSERT INTO `hand_book` VALUES ('16', '9787115332912', '程序员面试金典（第5版） ', 'Crackingthecodinginterview', '[美]GayleLaakmannMcDowell', '人民邮电出版社', '李琳骁/漆　犇', '2013-11', '372', '59.00', '平装', null, '2017-09-17 00:10:03');
INSERT INTO `hand_book` VALUES ('17', '9787121287220', 'Vue.js权威指南 ', null, '张耀春/等', '电子工业出版社', null, '2016-8-1', '512', 'CNY99.00', '平装', null, '2017-09-17 14:29:30');
INSERT INTO `hand_book` VALUES ('18', '9787810367479', '精通财务报表 ', null, '艾瑞克·普雷斯', '汕头大学出版社', '张晓晓', '2004-1', '173', '20.00元', '简裝本', null, '2017-09-17 15:06:15');

-- ----------------------------
-- Table structure for hand_book_tag
-- ----------------------------
DROP TABLE IF EXISTS `hand_book_tag`;
CREATE TABLE `hand_book_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(6) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL COMMENT '书本标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_book_tag
-- ----------------------------
INSERT INTO `hand_book_tag` VALUES ('6', '8', '[\"\\u94f6\\u884c\",\"\\u8d22\\u7ecf\\u8bfb\\u7269\\/Finan.Readings\",\"\\u8d22\\u52a1\\u5206\\u6790\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('7', '9', '[\"\\u6570\\u636e\\u5e93\",\"\\u5927\\u8bdd\\u6570\\u636e\\u5e93\",\"\\u7a0b\\u5e8f\\u8bbe\\u8ba1\",\"\\u5c31\\u662f\\u4e2a\\u62fc\\u51d1\\u548c\\u6a21\\u4eff\",\"\\u8ba1\\u7b97\\u673a\",\"\\u7f16\\u7a0b\",\"\\u79d1\\u666e\",\"\\u6709\\u7535\\u5b50\\u7248\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('8', '10', '[\"javascript\",\"\\u524d\\u7aef\\u5f00\\u53d1\",\"JavaScript\",\"dom\",\"\\u524d\\u7aef\",\"\\u7f16\\u7a0b\",\"Web\",\"web\\u5f00\\u53d1\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('9', '11', '[\"\\u4e2d\\u56fd\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('10', '12', '[\"\\u4e2d\\u56fd\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('11', '13', '[\"\\u7ecf\\u6d4e\\u5b66\",\"\\u7ecf\\u6d4e\\u5b66\\u5165\\u95e8\",\"\\u5f53\\u5f53\\u8bfb\\u4e66\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('12', '14', '[\"\\u6570\\u636e\\u7ed3\\u6784\",\"\\u8ba1\\u7b97\\u673a\",\"\\u7b97\\u6cd5\",\"\\u6559\\u6750\",\"\\u6570\\u636e\\u7ed3\\u6784(C\\u8bed\\u8a00\\u7248)\",\"\\u6570\\u636e\\u7ed3\\u6784\\uff08C\\u7248\\uff09\",\"\\u7f16\\u7a0b\",\"\\u7ecf\\u5178\\u8bfe\\u672c\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('13', '15', '[\"\\u5927\\u51b0\",\"\\u65c5\\u884c\",\"\\u751f\\u6d3b\",\"\\u611f\\u52a8\",\"\\u968f\\u7b14\",\"\\u6cbb\\u6108\",\"\\u5f88\\u503c\\u5f97\\u63a8\\u8350\\u7684\\u4e00\\u672c\\u4e66\",\"\\u6563\\u6587\\u968f\\u7b14\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('14', '16', '[\"\\u9762\\u8bd5\",\"\\u7b97\\u6cd5\",\"\\u7a0b\\u5e8f\\u5458\",\"\\u8ba1\\u7b97\\u673a\",\"\\u7f16\\u7a0b\",\"\\u56fe\\u7075\\u7a0b\\u5e8f\\u8bbe\\u8ba1\\u4e1b\\u4e66\",\"\\u6280\\u672f\",\"\\u7801\\u519c\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('15', '17', '[\"Vue.js\",\"\\u524d\\u7aef\",\"\\u524d\\u7aef\\u5f00\\u53d1\",\"JavaScript\",\"\\u6846\\u67b6\",\"vue\",\"\\u8ba1\\u7b97\\u673a\",\"Web\",\"\"]');
INSERT INTO `hand_book_tag` VALUES ('16', '18', '[\"\\u94f6\\u884c\",\"\\u8d22\\u7ecf\\u8bfb\\u7269\\/Finan.Readings\",\"\\u8d22\\u52a1\\u5206\\u6790\",\"\"]');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_user
-- ----------------------------
INSERT INTO `hand_user` VALUES ('12', 'oCipAxJnYV2tr2zmMX3Ba223Ix2I', 'With An Orchid', '1', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/lZhzJcx6ewjsickohSBIhqRyg8tCO3G4T37nk8RMGzCdRKCmxzHE4ejZIYlbiaEQZJibIg23gxe8GibFicFkIkP3Ybw/0', null, '2017-09-15 20:32:57');
INSERT INTO `hand_user` VALUES ('13', 'oCipAxDEvC0n1Jag5LWfGBHXsx0E', '樱子', '2', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJt1LtzZ5ibAF7Ozk6BglvAnjDzks9FpqT9P70jkq3reDx3Fdb7pbOqY7XjH8Frwsr45yFBaGmmqbw/0', null, '2017-09-16 23:42:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_user_book
-- ----------------------------
INSERT INTO `hand_user_book` VALUES ('63', '12', '14', '60', '1', '2017-09-17 15:56:13');
INSERT INTO `hand_user_book` VALUES ('64', '12', '9', '60', '1', '2017-09-17 15:56:15');
INSERT INTO `hand_user_book` VALUES ('66', '12', '18', '62', '1', '2017-09-17 22:07:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand_user_location
-- ----------------------------
INSERT INTO `hand_user_location` VALUES ('51', '12', '23.046682', '113.379555', '0.00', '40.00', '2017-09-16 22:29:07');
INSERT INTO `hand_user_location` VALUES ('52', '12', '23.046301', '113.379601', '0.00', '30.00', '2017-09-16 23:31:27');
INSERT INTO `hand_user_location` VALUES ('53', '13', '23.138790', '113.294495', '0.00', '30.00', '2017-09-16 23:42:23');
INSERT INTO `hand_user_location` VALUES ('54', '13', '23.138700', '113.294464', '0.00', '30.00', '2017-09-16 23:42:40');
INSERT INTO `hand_user_location` VALUES ('55', '12', '23.046585', '113.379646', '0.00', '40.00', '2017-09-17 00:05:12');
INSERT INTO `hand_user_location` VALUES ('56', '13', '23.138700', '113.294220', '0.00', '30.00', '2017-09-17 09:35:34');
INSERT INTO `hand_user_location` VALUES ('57', '12', '23.046612', '113.379570', '0.00', '40.00', '2017-09-17 09:55:13');
INSERT INTO `hand_user_location` VALUES ('58', '12', '23.046621', '113.379486', '0.00', '40.00', '2017-09-17 11:26:09');
INSERT INTO `hand_user_location` VALUES ('59', '12', '23.046301', '113.379601', '0.00', '30.00', '2017-09-17 13:13:18');
INSERT INTO `hand_user_location` VALUES ('60', '12', '23.046301', '113.379601', '0.00', '30.00', '2017-09-17 14:28:31');
INSERT INTO `hand_user_location` VALUES ('61', '12', '23.046766', '113.379463', '0.00', '40.00', '2017-09-17 19:52:32');
INSERT INTO `hand_user_location` VALUES ('62', '12', '23.046724', '113.379547', '0.00', '40.00', '2017-09-17 22:07:17');
