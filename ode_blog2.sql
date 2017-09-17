/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : ode_blog2

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2017-09-11 18:03:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ode_article
-- ----------------------------
DROP TABLE IF EXISTS `ode_article`;
CREATE TABLE `ode_article` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` varchar(255) NOT NULL,
  `article_img` varchar(255) DEFAULT NULL,
  `article_time` int(11) NOT NULL,
  `article_content` text,
  `atype_id` int(11) NOT NULL,
  `atype_clicks` int(11) DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ode_article
-- ----------------------------

-- ----------------------------
-- Table structure for ode_articleimg
-- ----------------------------
DROP TABLE IF EXISTS `ode_articleimg`;
CREATE TABLE `ode_articleimg` (
  `aimg_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `aimg_url` varchar(255) NOT NULL,
  PRIMARY KEY (`aimg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ode_articleimg
-- ----------------------------

-- ----------------------------
-- Table structure for ode_articletype
-- ----------------------------
DROP TABLE IF EXISTS `ode_articletype`;
CREATE TABLE `ode_articletype` (
  `atpye_id` int(11) NOT NULL,
  `atype_name` varchar(255) NOT NULL,
  PRIMARY KEY (`atpye_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ode_articletype
-- ----------------------------

-- ----------------------------
-- Table structure for ode_category
-- ----------------------------
DROP TABLE IF EXISTS `ode_category`;
CREATE TABLE `ode_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `cat_level` tinyint(4) NOT NULL,
  `cat_parent_id` int(11) NOT NULL,
  `cat_view` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ode_category
-- ----------------------------

-- ----------------------------
-- Table structure for ode_photo
-- ----------------------------
DROP TABLE IF EXISTS `ode_photo`;
CREATE TABLE `ode_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_img` varchar(255) DEFAULT NULL,
  `ptype_id` int(11) NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ode_photo
-- ----------------------------

-- ----------------------------
-- Table structure for ode_phototype
-- ----------------------------
DROP TABLE IF EXISTS `ode_phototype`;
CREATE TABLE `ode_phototype` (
  `ptype_id` int(11) NOT NULL,
  `ptype_name` varchar(255) NOT NULL,
  PRIMARY KEY (`ptype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ode_phototype
-- ----------------------------

-- ----------------------------
-- Table structure for ode_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ode_recommend`;
CREATE TABLE `ode_recommend` (
  `recommend_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `recommend_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`recommend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ode_recommend
-- ----------------------------
