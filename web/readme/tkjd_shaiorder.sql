/*
Navicat MySQL Data Transfer

Source Server         : jdz
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : bd_02

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-07-15 18:07:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tkjd_shaiorder`
-- ----------------------------
DROP TABLE IF EXISTS `tkjd_shaiorder`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tkjd_shaiorder
-- ----------------------------
