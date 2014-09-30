/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : connection

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-09-15 09:49:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `CUST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `OTHER_NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` text,
  `MOBILE_NO` varchar(15) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `EXTRA_PHONE_NO` varchar(15) DEFAULT NULL,
  `PHOTO_IMAGE` longblob,
  `FINGER_SCAN_IMAGE` longblob,
  `SIGNATURE_IMAGE` longblob,
  `BIRTH_DATE` date DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for `group_lvl`
-- ----------------------------
DROP TABLE IF EXISTS `group_lvl`;
CREATE TABLE `group_lvl` (
  `GROUP_LVL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_LVL_NAME` varchar(200) DEFAULT NULL,
  `GROUP_LVL_DESC` text,
  PRIMARY KEY (`GROUP_LVL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_lvl
-- ----------------------------
INSERT INTO `group_lvl` VALUES ('1', 'Admin', 'Administrator');
INSERT INTO `group_lvl` VALUES ('2', 'Doctor', 'Doctor');
INSERT INTO `group_lvl` VALUES ('3', 'Customer', 'Customer');

-- ----------------------------
-- Table structure for `group_type`
-- ----------------------------
DROP TABLE IF EXISTS `group_type`;
CREATE TABLE `group_type` (
  `GROUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(255) DEFAULT NULL,
  `GROUP_DESC` text,
  `GROUP_LVL` int(11) DEFAULT '1',
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_type
-- ----------------------------
INSERT INTO `group_type` VALUES ('1', 'Admin', 'Administrator', '1');
INSERT INTO `group_type` VALUES ('2', 'Operator', 'Operator', '2');
INSERT INTO `group_type` VALUES ('3', 'Surveyor', 'Surveyor', '3');

-- ----------------------------
-- Table structure for `operators`
-- ----------------------------
DROP TABLE IF EXISTS `operators`;
CREATE TABLE `operators` (
  `OPER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `OTHER_NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` text,
  `MOBILE_NO` varchar(15) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `EXTRA_PHONE_NO` varchar(15) DEFAULT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operators
-- ----------------------------

-- ----------------------------
-- Table structure for `surveyors`
-- ----------------------------
DROP TABLE IF EXISTS `surveyors`;
CREATE TABLE `surveyors` (
  `SURVEYOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `OTHER_NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` text,
  `MOBILE_NO` varchar(15) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `EXTRA_PHONE_NO` varchar(15) DEFAULT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `TABLET_IMEI` int(15) DEFAULT NULL,
  `MOTOR_NO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SURVEYOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of surveyors
-- ----------------------------
INSERT INTO `surveyors` VALUES ('1', 'Test1', 'Test1', 'Test1', 'Test1', '234242442', '4234242', '424324', '1', '1', '2013-12-25', '1', '2013-12-25', '0', '1211212', '1111');
INSERT INTO `surveyors` VALUES ('3', 'Test2', '222', '222', '222', '222222222222', '2222222', '', '0', '0', null, '0', null, '0', '11', '221111');
INSERT INTO `surveyors` VALUES ('4', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('5', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('6', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('7', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('8', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('9', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('10', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('11', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('12', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');
INSERT INTO `surveyors` VALUES ('13', '', '', '', '', '', '', '', '0', '0', null, '0', null, '0', '0', '');

-- ----------------------------
-- Table structure for `sv_user`
-- ----------------------------
DROP TABLE IF EXISTS `sv_user`;
CREATE TABLE `sv_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `IS_ACTIVE` bit(1) DEFAULT NULL,
  `FNAME` varchar(255) DEFAULT NULL,
  `LNAME` varchar(255) DEFAULT NULL,
  `SEX` int(1) DEFAULT NULL,
  `USER_GROUP_ID` int(3) DEFAULT NULL,
  `USER_GROUP_LVL` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sv_user
-- ----------------------------
INSERT INTO `sv_user` VALUES ('1', 'admin', 'NpVJEPbt5HfDHM8PkFkVuQ==', '', 'admin', 'admin', '0', '1', '1');
INSERT INTO `sv_user` VALUES ('2', 'operator', 'NpVJEPbt5HfDHM8PkFkVuQ==', '', 'operator', 'operator', '1', '1', '2');
INSERT INTO `sv_user` VALUES ('3', 'totoland', 'iQ1DAWD3gENgsmNjLIjSXA==', '', 'Thanapong', 'Niamnim', '0', '1', '1');

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `USER_GROUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_GROUP_NAME` varchar(200) DEFAULT NULL,
  `USER_GROUP_DESC` text,
  `USER_GROUP_LVL` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', 'DEFAULT', null, null);
