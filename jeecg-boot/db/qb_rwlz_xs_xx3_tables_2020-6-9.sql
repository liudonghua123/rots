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

 Date: 09/06/2020 16:15:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for qb_rwlz
-- ----------------------------
DROP TABLE IF EXISTS `qb_rwlz`;
CREATE TABLE `qb_rwlz`  (
  `RWLZBH` decimal(11, 0) NOT NULL,
  `LCLB` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程类别（上报、回退、分发）',
  `RWLB` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务类型（业务类型：事件信息、人员信息、刊物等）',
  `YBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '源编号',
  `FQRBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '发起人编号',
  `MBLX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标类型（任务接收后产生的新任务）',
  `MBBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '目标编号（任务接收后产生的新的数据编号）',
  `RWZT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务状态（待签收、已签收、已驳回、办理中、已办结）',
  `JSRBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '接收人编号',
  `JSSJ` datetime(0) NULL DEFAULT NULL COMMENT '接收时间',
  `CLYJ` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '处理意见',
  `CLJG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理结果（接收、转报、驳回）',
  `FQBMBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '发起部门编号',
  `MBBMBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '目标部门编号',
  `BJSJ` datetime(0) NULL DEFAULT NULL COMMENT '办结时间',
  `FQSJ` datetime(0) NULL DEFAULT NULL COMMENT '发起时间',
  `RWBT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '任务标题',
  `YGDRK` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Y已入库归档，N未入库归档',
  `FSYJ` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '发送意见',
  `LZFS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流转方式：（RYCJZL人员采集指令，XXCJZL信息采集指令，XXLZ信息流转）',
  `FKJZSJ` datetime(0) NULL DEFAULT NULL COMMENT '反馈截至时间',
  `FKSM` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '反馈说明',
  `SJFKSJ` datetime(0) NULL DEFAULT NULL COMMENT '反馈时间',
  `FQCS` decimal(11, 0) NULL DEFAULT NULL COMMENT '例如人员采集不少于多少人',
  PRIMARY KEY (`RWLZBH`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_rwlz
-- ----------------------------
INSERT INTO `qb_rwlz` VALUES (6640, '分发', '事件信息', 29548, 151951, '事件信息', NULL, '办理中', 151952, '2020-06-06 23:02:52', NULL, NULL, 110, 290, NULL, '2020-05-27 10:16:04', '10余名工人到市建三公司老讨薪', NULL, '请把现场图片在1小时内详细拍照上传', 'RYCJZL', '2020-05-30 17:00:00', NULL, NULL, 0);
INSERT INTO `qb_rwlz` VALUES (6641, '分发', '事件信息', 29548, 151951, '事件信息', NULL, '已签收', 151952, '2020-06-06 23:02:52', NULL, NULL, 110, 290, NULL, '2020-05-27 10:44:19', '10余名工人到市建三公司老讨薪', NULL, '请把现场图片在1小时内详细拍照上传', 'XSSJZL', '2020-05-30 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES (6642, '分发', '事件信息', 29548, 151951, '事件信息', NULL, '已签收', 151952, '2020-06-06 23:02:52', NULL, NULL, 110, 290, NULL, '2020-05-27 14:05:06', '10余名工人到市建三公司老讨薪', NULL, '请采集现场图片，组织者照片', 'XSSJZL', '2020-05-30 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES (6643, '分发', '事件信息', 29109, 151951, '事件信息', NULL, '已签收', 151952, '2020-06-06 23:02:52', NULL, NULL, 110, 290, NULL, '2020-05-27 14:38:53', '花鹤翎工地水电工程合同纠纷存在隐患', NULL, '请采集花鹤翎工地水电工程合同纠纷存在隐患现场信息', 'XSSJZL', '2020-05-30 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES (7481, '上报', '事件信息', 7468, 152063, '事件信息', 7490, '已签收', 151955, '2019-02-12 11:28:48', '接收', '接收', 390, 110, NULL, '2019-02-12 11:03:52', '1月31日90余名金座集资人员例行到市体育馆聚集（续报）', NULL, NULL, 'XXLZ', NULL, NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES (7566, '分发', '事件信息', 7541, 151951, '事件信息', 7580, '已办结', 152063, '2019-02-15 14:03:24', NULL, NULL, 110, 390, NULL, '2019-02-14 14:49:38', '70余名金座集资人员到市体育馆上访', NULL, '请补充涉事人员信息，现场照片，视频资料。', 'RYCJZL', '2019-02-17 17:00:00', NULL, '2019-02-15 14:15:19', 3);
INSERT INTO `qb_rwlz` VALUES (7568, '分发', '事件信息', 7545, 151951, '事件信息', 7623, '已办结', 152058, '2019-02-18 11:59:03', NULL, NULL, 110, 290, NULL, '2019-02-14 14:54:47', '陆良县甘河村村民16人因不满土地被占到省政府上访', NULL, '请补充涉事人员信息，现场照片，视频资料。', 'RYCJZL', '2019-02-17 17:00:00', '已反馈。', '2019-02-18 12:11:41', 3);
INSERT INTO `qb_rwlz` VALUES (7569, '分发', '事件信息', 7565, 151951, '事件信息', 7581, '已办结', 152063, '2019-02-15 14:03:24', NULL, NULL, 110, 390, NULL, '2019-02-14 14:57:27', '2月14日金座集资户群体例行聚集活动情况', NULL, '请补充涉事人员信息，现场照片，视频资料。', 'RYCJZL', '2019-02-17 17:00:00', NULL, '2019-02-20 09:49:32', 3);
INSERT INTO `qb_rwlz` VALUES (7594, '上报', '事件信息', 7580, 152063, '事件信息', 7596, '已签收', 151955, '2019-02-15 14:39:36', '接收', '接收', 390, 110, NULL, '2019-02-15 14:15:15', '70余名金座集资人员到市体育馆上访', NULL, NULL, 'XXLZ', NULL, NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES (7645, '分发', '事件信息', 7640, 151951, '事件信息', 7647, '已办结', 152058, '2019-02-19 12:12:13', NULL, NULL, 110, 290, NULL, '2019-02-19 11:00:29', '昆明度假区前卫镇永富村村民6人因不满征地补偿到省政府上访', NULL, '请补充涉事人员信息，现场照片，视频资料。', 'RYCJZL', '2019-02-22 17:00:00', '已反映。', '2019-02-19 12:16:59', 3);
INSERT INTO `qb_rwlz` VALUES (7667, '上报', '事件信息', 7581, 152063, '事件信息', 7669, '已签收', 151951, '2019-02-20 10:01:08', '接收', '接收', 390, 110, NULL, '2019-02-20 09:49:28', '2月14日金座集资户群体例行聚集活动情况', NULL, NULL, 'XXLZ', NULL, NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES (7748, '分发', '事件信息', 7747, 151951, '事件信息', 7761, '已办结', 152058, '2019-02-22 18:29:00', NULL, NULL, 110, 290, NULL, '2019-02-22 16:17:56', '2月21日35名螺狮湾租户离开省政府', NULL, '请补充涉事人员信息，现场照片，视频资料。', 'RYCJZL', '2019-02-25 17:00:00', '已反馈。', '2019-02-22 18:40:36', 3);
INSERT INTO `qb_rwlz` VALUES (7750, '分发', '事件信息', 7743, 151951, '事件信息', 7831, '已办结', 152063, '2019-02-27 13:51:51', NULL, NULL, 110, 390, NULL, '2019-02-22 17:08:49', '90余名金座集资人员到市体育馆上访(续报)', NULL, '请补充涉事人员信息，现场照片，视频资料。', 'RYCJZL', '2019-02-25 17:00:00', NULL, '2019-02-27 14:01:04', 3);

-- ----------------------------
-- Table structure for qb_swxszb
-- ----------------------------
DROP TABLE IF EXISTS `qb_swxszb`;
CREATE TABLE `qb_swxszb`  (
  `ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `XSDDBH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CJSJ` datetime(0) NULL DEFAULT NULL,
  `SCSJ` datetime(0) NULL DEFAULT NULL,
  `CJRBH` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CJBMBH` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `XSLX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WXDJ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `HTBDBJ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SWSJBH` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ZDASJQBXXBH` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL,
  `UPDATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL,
  `RWID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FMMTLJ` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FJXX` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SJH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `XSBT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `XSXQ` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `XSDDMC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `TSXQ` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_swxszb
-- ----------------------------
INSERT INTO `qb_swxszb` VALUES ('1270244162733432834', NULL, '2020-06-09 14:39:43', '2020-06-09 14:39:43', NULL, NULL, 'ry', 'wxdj_z', 'Y', NULL, NULL, '013006', '2020-06-09 14:39:43', NULL, NULL, NULL, '8cc9f428-b888-41f0-a00f-49fa33ede8f66842055148068293033_1591684780539.jpg', '531234567890123456', '13888888888', '测试身份证号和电话号码', NULL, '科信办办公室', '\n二次犯罪概率：0.1\n涉军指数：0.12\n一年来涉事次数：2\n三年来涉事次数：3\n有统计的涉事次数：5');
INSERT INTO `qb_swxszb` VALUES ('1265573475011874818', NULL, '2020-05-27 17:20:04', '2020-05-27 17:20:04', NULL, NULL, 'xc', NULL, NULL, NULL, NULL, 'admin', '2020-05-27 17:20:04', NULL, NULL, NULL, '9f44ac14-3a86-4503-84f6-efe9a56b29b12205572800037542674_1590571202526.jpg', NULL, NULL, '万科城发展可疑线索测试排序', NULL, '万科城', NULL);
INSERT INTO `qb_swxszb` VALUES ('1265901921504157697', NULL, '2020-05-28 15:05:12', '2020-05-28 15:05:12', NULL, NULL, 'ry', NULL, 'N', NULL, NULL, 'admin', '2020-05-28 15:05:12', NULL, NULL, NULL, '91b7978b-55ee-417b-9786-763da2ef004f6826827364849009932_1590649509882.jpg', '555', '123456789', '测试NFC读取功能', NULL, '科信办办公室', '\n二次犯罪概率未知\n涉军指数未知');
INSERT INTO `qb_swxszb` VALUES ('1265931635241345026', NULL, '2020-05-28 17:03:16', '2020-05-28 17:03:16', NULL, NULL, 'xc', NULL, NULL, NULL, NULL, 'admin', '2020-05-28 17:03:16', NULL, NULL, NULL, 'e76e7649-0c8d-4087-8133-ac09ec5521055509229059860944177_1590656594080.jpg', NULL, NULL, '图标按钮大小测试', NULL, '科信办公室', NULL);
INSERT INTO `qb_swxszb` VALUES ('1270248610415337473', NULL, '2020-06-09 14:57:23', '2020-06-09 14:57:23', NULL, NULL, 'ry', 'wxdj_g', 'Y', NULL, NULL, '013006', '2020-06-09 14:57:23', NULL, NULL, NULL, '4b10159c-7910-400b-9019-e6dad29ee16d8491337500397248756_1591685799659.jpg', '531234567890123457', '138888888888', '测试线索详情', '这是详细内容\n消息内容第二行\n详细内容第三行', '线索地点', '\n二次犯罪概率：0.33\n涉军指数：0.78\n一年来涉事次数：2\n三年来涉事次数：2\n有统计的涉事次数：3');
INSERT INTO `qb_swxszb` VALUES ('1270266449624915970', NULL, '2020-06-09 16:08:16', '2020-06-09 16:08:16', NULL, NULL, 'xc', NULL, NULL, NULL, NULL, '013003', '2020-06-09 16:08:16', NULL, NULL, NULL, '04f8a444-34a0-4ecf-aa42-aed87b94122f5706845333297130161_1591690075499.jpg', NULL, NULL, '测试现场609', NULL, '现场1', NULL);
INSERT INTO `qb_swxszb` VALUES ('1266206475961581569', NULL, '2020-05-29 11:15:23', '2020-05-29 11:15:23', NULL, NULL, 'ry', 'wxdj_z', 'Y', NULL, NULL, 'admin', '2020-05-29 11:15:23', NULL, NULL, NULL, 'dfa74e18-d301-41d3-8965-e8b9ce6d09cc3175538990599884488_1590722121681.jpg', '531234567890123456', NULL, '测试提示详情529', NULL, '省政府', '\n二次犯罪概率：0.1\n涉军指数：0.12\n一年来涉事次数：2\n三年来涉事次数：3\n有统计的涉事次数：5');
INSERT INTO `qb_swxszb` VALUES ('1267474271043420162', NULL, '2020-06-01 23:13:09', '2020-06-01 23:13:09', NULL, NULL, 'xc', NULL, NULL, NULL, NULL, 'admin', '2020-06-01 23:13:09', NULL, NULL, NULL, NULL, NULL, NULL, '啊考虑考虑', NULL, '李经理', NULL);
INSERT INTO `qb_swxszb` VALUES ('1265571708064870402', NULL, '2020-05-27 17:13:03', '2020-05-27 17:13:03', NULL, NULL, 'ry', 'wxdj_d', 'Y', NULL, NULL, 'admin', '2020-05-27 17:13:03', NULL, NULL, NULL, '9fff9f80-3e29-447d-a107-26cd2148dccf6227196538177837025_1590570781132.jpg', '531234567890123456', NULL, '测试采集时间527', NULL, '泽恩饿了来', '\n二次犯罪概率：0.1\n涉军指数：0.12');
INSERT INTO `qb_swxszb` VALUES ('1265571979427950593', NULL, '2020-05-27 17:14:07', '2020-05-27 17:14:07', NULL, NULL, 'ry', 'wxdj_g', 'Y', NULL, NULL, 'admin', '2020-05-27 17:14:07', NULL, NULL, NULL, 'ee2776e7-29ca-4c2e-8ab1-7e3ea43467fb5378566997552903484_1590570846461.jpg', '531234567890123458', NULL, '测试采集时间527-2第二条', NULL, '科信办办公室', '\n二次犯罪概率：0.76\n涉军指数：0.35');

-- ----------------------------
-- Table structure for qb_zdasjqbxx
-- ----------------------------
DROP TABLE IF EXISTS `qb_zdasjqbxx`;
CREATE TABLE `qb_zdasjqbxx`  (
  `ZDASJQBXXBH` decimal(19, 0) NOT NULL,
  `WHLX1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WHLX3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WHLX5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WHLX7` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BXXSLX1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BXXSLX3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BXXSLX5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SBSJ` datetime(0) NULL DEFAULT NULL,
  `BT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `XXNR` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `FSSJ` datetime(0) NULL DEFAULT NULL,
  `LKSJ` datetime(0) NULL DEFAULT NULL,
  `CXSJ` decimal(15, 2) NULL DEFAULT NULL,
  `ZRS` decimal(19, 0) NULL DEFAULT NULL,
  `SY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `XQ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DD` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `RYJG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `SFGJ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CDJLS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SFSHEZFRS` decimal(19, 0) NULL DEFAULT NULL,
  `SFSHIZFRS` decimal(19, 0) NULL DEFAULT NULL,
  `SFQZFRS` decimal(19, 0) NULL DEFAULT NULL,
  `SFZGDWRS` decimal(19, 0) NULL DEFAULT NULL,
  `SFRYBQ` decimal(19, 0) NULL DEFAULT NULL,
  `SFRYWQ` decimal(19, 0) NULL DEFAULT NULL,
  `LRMJBH` decimal(19, 0) NULL DEFAULT NULL,
  `LRMJZH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LRSJ` datetime(0) NULL DEFAULT NULL,
  `ZHXGSJ` datetime(0) NULL DEFAULT NULL,
  `BZ` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `QUNT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `YYXN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `JJCD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SFXB` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `GJXW` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CCSS` decimal(15, 2) NULL DEFAULT NULL,
  `SSRS` decimal(19, 0) NULL DEFAULT NULL,
  `SWRS` decimal(19, 0) NULL DEFAULT NULL,
  `YJSJ` datetime(0) NULL DEFAULT NULL,
  `SBZDW` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `YJSFFS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `YBSD` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `STXXLX1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `STXXLX3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `STXXLX5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DDLX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DDQT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BQ1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BQ2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BQ3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TJL1` decimal(15, 2) NULL DEFAULT NULL,
  `TJL2` decimal(15, 2) NULL DEFAULT NULL,
  `TJL3` decimal(15, 2) NULL DEFAULT NULL,
  `LRBMID` decimal(11, 0) NULL DEFAULT NULL,
  `LRBMBM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DZBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '地址编号',
  `ZZBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '组织编号',
  `STSADD` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTADDRESSCLASSCODES',
  `STSADDN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTADDRESSCLASSNAMES',
  `STSSLB` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTINFOCLASSCODES',
  `STSSLBN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTINFOCLASSNAMES',
  `STSDLB` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'DRUGRELATEDCLASSCODES',
  `STSDLBN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'DRUGRELATEDCLASSNAMES',
  `STBXXS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SHOWMODECODES',
  `STBXXSN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SHOWMODENAMES',
  `STSSZT` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTSUBJECTCODES',
  `STSSZTN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTSUBJECTNAMES',
  `STSJYY` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTREASONCODES',
  `STSJYYN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EVENTREASONNAMES',
  `STRSGM` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'PEOPLECOUNTCODES',
  `STRSGMN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'PEOPLECOUNTNAMES',
  `STSFXB` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ISHOLDON',
  `STYYXN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EXERTCODE',
  `STZRS` decimal(11, 0) NULL DEFAULT NULL COMMENT 'CASEPEOPLECOUNT',
  `STSSJE` decimal(15, 2) NULL DEFAULT NULL COMMENT 'CASEMONEY',
  `STSWRS` decimal(11, 0) NULL DEFAULT NULL COMMENT 'DEADCOUNT',
  `STSSRS` decimal(11, 0) NULL DEFAULT NULL COMMENT 'HARMCOUNT',
  `STJJCD` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EXIGENCYCOCE',
  `STJJCDN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EXIGENCYNAME',
  `STYYXNN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EXERTNAME',
  `INFOID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `XXZT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '信息状态，XT新填报,XS已接收,BS报送中,CL已处理,GD已归档,JS本级接收',
  `LYBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '来源编号',
  `RKBJ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Y,已入库，其他未入库',
  `JSBMID` decimal(11, 0) NULL DEFAULT NULL COMMENT '接收部门ID',
  `JSRID` decimal(11, 0) NULL DEFAULT NULL COMMENT '接收人ID',
  `YWDL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务大类',
  `XQPCSDM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '辖区派出所代码',
  `CJR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采集人',
  `SHR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `RWLZBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '任务流转编号',
  `JDR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '校对人',
  `SWSJBH` decimal(11, 0) NULL DEFAULT NULL COMMENT '事件编号外键',
  `XXLYLB` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '信息来源类别，XQSJ辖区收集，XJSB下级上报，SJFF上级分发',
  `XXFFBJ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '信息分发标记，Y已分发，N未分发',
  `KBBJ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快报标记，Y已出快报，N未出',
  PRIMARY KEY (`ZDASJQBXXBH`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_zdasjqbxx
-- ----------------------------
INSERT INTO `qb_zdasjqbxx` VALUES (29109, NULL, NULL, NULL, NULL, 'sf', '维稳信息', 'qt', '2020-01-17 14:27:30', '花鹤翎工地水电工程合同纠纷存在隐患', '<p>经最新掌握，四川宙宇空间技术工程有限公司同意支付工人工资20万元。四川熙悦劳务工程有限公司负责人郭焕平先支付工人工资10万元，剩余20万由四川熙悦劳务工程承担，由于目前资金不足，先写欠条之后再支付，三方协商未果。 1月17日涉及讨要工资的20余名工人到昆明市政府8号楼聚集上访讨要工资，声称不要到工资绝不离开，因工人情绪较为激烈，不排除之后向继续上访讨薪的可能，相关情况进一步掌握中。</p>\n\n<p>1月17日早上涉及讨要工资20多名工人到昆明市政府8号楼上访讨要工资，声称不要到工资绝不离开，工人情绪较为激烈。</p>\n\n<p>得到消息后，王家桥所高度重视，立即赶往市政府信访局，经核实，涉及讨要工资人数为18人，现场未发生过激行为，秩序正常。随后由昆明市信访局领导组织五华区劳动监察局、五华住建局、五华科技产业园管委会、普吉街道办事处及实地花鹤翎项目部、四川宙宇空间技术工程有限公司的主要负责人及讨薪农民工代表共同参与协商。充分了解事情原由后市信访局领导责成五华区政府组建牵头部门尽快解决拖欠农民工工资问题。会后，经工作18名信访人员已劝离。截止1月17日22时许，从普吉街道办事处获悉此次欠薪问题由五华区政府副区长何跃龙牵头解决。</p>\n\n<p>持续关注该群体欠薪事件，如有新情况及时上报。</p>\n', '2020-01-15 11:00:00', '2020-01-17 19:30:00', 56.50, 18, '讨薪索款', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 151951, 'cjgly', '2020-01-20 09:25:12', '2020-01-20 10:13:33', NULL, '农民工', 'qkfy', NULL, NULL, '无', NULL, NULL, NULL, NULL, '报市局', NULL, NULL, 'PubSecurityBusy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, 20146, 2519, NULL, NULL, 'qt', '其他', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 0.00, 0, 0, 'yb', NULL, NULL, 'fe3b82a6-14c3-47a2-b6b2-1c5832f67563', 'JS', NULL, 'Y', NULL, NULL, 'gayw', '530102580000', '李丽', '吴文', NULL, '吴文', 29108, 'ZQYSB', 'Y', NULL);
INSERT INTO `qb_zdasjqbxx` VALUES (29548, NULL, NULL, NULL, NULL, 'jj', '维稳信息', 'bq', '2020-01-21 13:35:55', '10余名工人到市建三公司老讨薪', '<p>1月21日 11时48分许，新村所接110指令：市建三公司（小西门富春街昆明饭店公司8楼）十多名工人老讨薪，一名工人坐在窗户上要跳楼。<br />\n接警后，新村所民警立即赶到现场了解到，市建三公司承包做盘龙区档案管的工程（工程款约50万元人民币），后市建三公司将涂料工程分包给李文林（男、30岁左右、昭通市昭阳区人），工程结束后，李文林到市建三公司讨要工钱（欠款人民币9万元）未果，遂到昆明市盘龙区档案管讨要工钱，昆明市盘龙区档案管称已支付工程款70%给市建三公司，李文林又到昆明市盘龙区劳动监察大队反映情况，李文林因多次讨要工钱未果，于今日爬到市建三公司（小西门富春街昆明饭店公司8楼）窗户上扬言要跳楼。现李文林还在窗户上坐着，新村所民警正在现场劝说李文林不要做过激行为。经工作，李文林安全从窗户下来。<br />\n经调查，分局对何治云、李文勇、袁云高、程礼凤、唐辉、李亚俊、张国书、焦小斌、刘丰、陈爱国、刘召科、周洪光训诫，李文林涉嫌扰乱单位秩序，拟行政拘留5日。</p>\n', '2020-01-21 11:48:00', '2020-01-21 17:00:00', 5.20, 10, '讨薪索款', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 151951, 'cjgly', '2020-01-22 09:33:20', '2020-01-30 10:53:52', NULL, '工人', 'qkfy', NULL, NULL, '无', NULL, NULL, NULL, NULL, '报市局', NULL, NULL, 'PoliticalStability', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, 27870, 2552, NULL, NULL, 'fyqk', '反映情况', NULL, NULL, 'zzhd', '组织活动', NULL, NULL, 'lzjf', '劳资纠纷', 'sryx', '10人以下', '1', NULL, NULL, 9.00, 0, 0, 'yb', NULL, NULL, '04c061c1-fb49-481d-a187-849aff8104da', 'JS', NULL, 'Y', NULL, NULL, 'zzwd', '530102470000', '李忠文', '吴文', NULL, '吴文', 29547, 'ZQYSB', 'Y', NULL);
INSERT INTO `qb_zdasjqbxx` VALUES (33197, NULL, NULL, NULL, NULL, 'sf', '维稳信息', 'bse', '2020-04-28 12:32:59', '武定县东坡乡村民5人因不满移民政策到省政府上访', '<p>4月28日10:45分许，5名楚雄州武定县东坡乡白马口村委会腊甸村村民到省政府上访，反映，由于修建乌东德水电站的需要，当地政府划定了需要移民搬迁的范围，腊甸村被一分为二，有30余户村民的住房被认定为淹没区，政府将其移民搬迁到新址，并享受了所有移民待遇，而剩下的18户村民的住房被认定为影响区，不在搬迁范围内，也没有任何补偿，引发18户村民不满，认为他们的住房同样会受到水电站蓄水的影响，应该搬迁。村民多次向当地政府反映要求移民搬迁未得到答复所以到省政府上访，要求移民搬迁并享受同等待遇。省信访局接待后告知其向楚雄州政府反映。11:20分许，5人离开省政府。</p>\n', '2020-04-28 10:45:00', '2020-04-28 11:20:00', 0.58, 5, '损害赔偿 ', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 151951, 'cjgly', '2020-04-29 14:35:15', '2020-04-30 13:00:49', NULL, '村民', 'qkfy', NULL, NULL, '无', NULL, NULL, NULL, NULL, '报市局', NULL, NULL, 'PoliticalStability', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, 2392, 2507, 'nn', '农村', 'fyqk', '反映情况', NULL, NULL, 'sf', '上访', 'nm', '农民', 'ymwt', '移民问题', 'sryx', '10人以下', '1', NULL, NULL, 0.00, 0, 0, 'yb', NULL, NULL, 'b3a6efbe-4065-489b-b56c-701a9b959d0c', 'XS', NULL, 'Y', 290, 152058, 'zzwd', '530102450000', '李敏', '吴文', 33171, '吴文', 33165, 'SJZL', 'N', NULL);

SET FOREIGN_KEY_CHECKS = 1;
