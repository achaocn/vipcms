/*
Navicat MySQL Data Transfer

Source Server         : jdz
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : bd_02

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-07-15 18:00:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tkjd_address`
-- ----------------------------
DROP TABLE IF EXISTS `tkjd_address`;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tkjd_address
-- ----------------------------
