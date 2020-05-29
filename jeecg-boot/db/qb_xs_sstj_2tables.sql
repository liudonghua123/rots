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

 Date: 29/05/2020 11:19:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for qb_dzsstj
-- ----------------------------
DROP TABLE IF EXISTS `qb_dzsstj`;
CREATE TABLE `qb_dzsstj`  (
  `ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CREATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `UPDATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `SYS_ORG_CODE` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `DZMC` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地点',
  `SSCS` decimal(10, 0) NULL DEFAULT NULL COMMENT '涉事次数',
  `SSCSSNL` decimal(10, 0) NULL DEFAULT NULL COMMENT '三年来涉事次数',
  `SSCSYNL` decimal(10, 0) NULL DEFAULT NULL COMMENT '一年来涉事次数',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qb_rysstj
-- ----------------------------
DROP TABLE IF EXISTS `qb_rysstj`;
CREATE TABLE `qb_rysstj`  (
  `ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CREATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `UPDATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `SYS_ORG_CODE` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `ZJHM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `SSCS` decimal(10, 0) NULL DEFAULT NULL COMMENT '涉事次数',
  `SSCSSNL` decimal(10, 0) NULL DEFAULT NULL COMMENT '三年来涉事次数',
  `SSCSYNL` decimal(10, 0) NULL DEFAULT NULL COMMENT '一年来涉事次数',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_rysstj
-- ----------------------------
INSERT INTO `qb_rysstj` VALUES ('98321878113211109', NULL, NULL, NULL, NULL, NULL, '531234567890123456', 5, 3, 2);
INSERT INTO `qb_rysstj` VALUES ('98321878113211111', NULL, NULL, NULL, NULL, NULL, '531234567890123457', 3, 2, 2);
INSERT INTO `qb_rysstj` VALUES ('98321878113211121', NULL, NULL, NULL, NULL, NULL, '531234567890123458', 1, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
