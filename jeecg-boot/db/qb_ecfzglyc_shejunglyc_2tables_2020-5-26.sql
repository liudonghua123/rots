/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : whba2

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 26/05/2020 15:59:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for qb_ecfzglyc
-- ----------------------------
DROP TABLE IF EXISTS `qb_ecfzglyc`;
CREATE TABLE `qb_ecfzglyc`  (
  `ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CREATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL,
  `UPDATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL,
  `SYS_ORG_CODE` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ZJHM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ZHXGSJ` datetime(0) NULL DEFAULT NULL,
  `ECFZYCZ` decimal(11, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_ecfzglyc
-- ----------------------------
INSERT INTO `qb_ecfzglyc` VALUES ('111132', NULL, NULL, NULL, NULL, NULL, '531234567890123458', NULL, 0.76);
INSERT INTO `qb_ecfzglyc` VALUES ('111115', NULL, NULL, NULL, NULL, NULL, '531234567890123456', NULL, 0.10);
INSERT INTO `qb_ecfzglyc` VALUES ('211132', NULL, NULL, NULL, NULL, NULL, '531234567890123457', NULL, 0.33);

-- ----------------------------
-- Table structure for qb_shejunglyc
-- ----------------------------
DROP TABLE IF EXISTS `qb_shejunglyc`;
CREATE TABLE `qb_shejunglyc`  (
  `ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CREATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL,
  `UPDATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL,
  `SYS_ORG_CODE` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CECOS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CITY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `IMEILAST` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ISFOCAL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ISTW` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ISLEAVE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `JZDCODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `LASTAREACODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MOBILE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OFTENADDR` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `QQACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SCORE` decimal(11, 2) NULL DEFAULT NULL,
  `SEXSTR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PETITON` decimal(10, 0) NULL DEFAULT NULL,
  `WEIXINACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `XM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_shejunglyc
-- ----------------------------
INSERT INTO `qb_shejunglyc` VALUES ('222114', NULL, NULL, NULL, NULL, NULL, NULL, '531234567890123458', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.35, NULL, NULL, NULL, NULL);
INSERT INTO `qb_shejunglyc` VALUES ('151111', NULL, NULL, NULL, NULL, NULL, NULL, '531234567890123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.12, NULL, NULL, NULL, NULL);
INSERT INTO `qb_shejunglyc` VALUES ('222113', NULL, NULL, NULL, NULL, NULL, NULL, '531234567890123457', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.78, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
