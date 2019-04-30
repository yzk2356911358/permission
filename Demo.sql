/*
 Navicat Premium Data Transfer

 Source Server         : yzk
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : Demo

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 25/04/2019 16:24:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Student
-- ----------------------------
DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `clas` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teacher` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of Student
-- ----------------------------
BEGIN;
INSERT INTO `Student` VALUES (229, '小红', '121小红11', '小红', '小红1', '小红1', '成都市');
COMMIT;

-- ----------------------------
-- Table structure for tb_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info` (
  `info_id` int(10) NOT NULL AUTO_INCREMENT,
  `info1` varchar(100) DEFAULT NULL,
  `info2` varchar(100) DEFAULT NULL,
  `info3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_info
-- ----------------------------
BEGIN;
INSERT INTO `tb_info` VALUES (1, 'a1', 'a2', 'a3');
INSERT INTO `tb_info` VALUES (2, 'b1', 'b2', 'b3');
INSERT INTO `tb_info` VALUES (3, 'c1', 'c2', 'c3');
INSERT INTO `tb_info` VALUES (4, 'd1', 'd2', 'd3');
INSERT INTO `tb_info` VALUES (5, 'e1', 'e2', 'e3');
INSERT INTO `tb_info` VALUES (6, 'f1', 'f2', 'f3');
INSERT INTO `tb_info` VALUES (7, 'g1', 'g2', 'g3');
INSERT INTO `tb_info` VALUES (8, 'h1', 'h2', 'h3');
INSERT INTO `tb_info` VALUES (9, 'i1', 'i2', 'i3');
INSERT INTO `tb_info` VALUES (10, 'j1', 'j2', 'j3');
INSERT INTO `tb_info` VALUES (11, 'k1', 'k2', 'k3');
INSERT INTO `tb_info` VALUES (12, 'l1', 'l2', 'l3');
INSERT INTO `tb_info` VALUES (13, 'm1', 'm2', 'm3');
INSERT INTO `tb_info` VALUES (14, 'n1', 'n2', 'n3');
INSERT INTO `tb_info` VALUES (15, 'o1', 'o2', 'o3');
INSERT INTO `tb_info` VALUES (16, 'p1', 'p2', 'p3');
INSERT INTO `tb_info` VALUES (17, 'q1', 'q2', 'q3');
INSERT INTO `tb_info` VALUES (18, 'r1', 'r2', 'r3');
INSERT INTO `tb_info` VALUES (19, 's1', 's2', 's3');
INSERT INTO `tb_info` VALUES (20, 't1', 't2', 't3');
INSERT INTO `tb_info` VALUES (21, 'u1', 'u2', 'u3');
INSERT INTO `tb_info` VALUES (22, 'v1', 'v2', 'v3');
INSERT INTO `tb_info` VALUES (23, 'w1', 'w2', 'w3');
INSERT INTO `tb_info` VALUES (24, 'x1', 'x2', 'x3');
INSERT INTO `tb_info` VALUES (25, 'y1', 'y2', 'y3');
INSERT INTO `tb_info` VALUES (26, 'z1', 'z2', 'z3');
COMMIT;

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `menu_id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(20) DEFAULT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
BEGIN;
INSERT INTO `tb_menu` VALUES (1, '系统管理', '', NULL);
INSERT INTO `tb_menu` VALUES (3, '学生管理', '', NULL);
INSERT INTO `tb_menu` VALUES (5, '用户管理', 'user.html', 1);
INSERT INTO `tb_menu` VALUES (6, '角色管理', 'role.html', 1);
INSERT INTO `tb_menu` VALUES (7, '菜单管理', 'menu.html', 1);
INSERT INTO `tb_menu` VALUES (10, '添加学生', 'addStudent.jsp', 3);
INSERT INTO `tb_menu` VALUES (11, '查看学生', 'student/getallstudent.html', 3);
INSERT INTO `tb_menu` VALUES (12, '查找学生', 'selectStudent.jsp', 3);
COMMIT;

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `role_id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  `rights` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
BEGIN;
INSERT INTO `tb_role` VALUES (1, '系统管理员', '35822');
INSERT INTO `tb_role` VALUES (2, '普通用户', '2038792');
INSERT INTO `tb_role` VALUES (3, '系统用户', '230374');
COMMIT;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `rights` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES (1, 'admin', 'admin', '管理员', '38894', 0, 1, '2019-04-25 16:18:24');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
