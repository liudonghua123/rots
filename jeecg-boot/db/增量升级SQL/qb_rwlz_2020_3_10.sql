/*
 Navicat Premium Data Transfer

 Source Server         : rots
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : whba2

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 10/03/2020 15:40:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for qb_rwlz
-- ----------------------------
DROP TABLE IF EXISTS `qb_rwlz`;
CREATE TABLE `qb_rwlz`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属部门',
  `lclb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '流程类别',
  `rwlb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务类别',
  `ybh` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '信息源编号',
  `fqrbh` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发起人编号',
  `mblx` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '目标信息类型',
  `mbbh` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '目标编号',
  `rwzt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务状态',
  `jsrbh` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '接收人编号',
  `jssj` datetime(0) DEFAULT NULL COMMENT '接收时间',
  `clyj` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '处理意见',
  `cljg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '处理结果',
  `fqbmbh` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发起部门编号',
  `mbbmbh` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '目标部门编号',
  `bjsj` datetime(0) DEFAULT NULL COMMENT '办结时间',
  `fqsj` datetime(0) DEFAULT NULL COMMENT '发起时间',
  `rwbt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务标题',
  `ygdrk` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '已归档入库（暂时未用到）',
  `fsyj` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发送意见',
  `lzfs` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '流转方式（信息流转：XXLZ，人员采集指令：RYCJZL，线索采集指令:XSCJZL）',
  `fkjzsj` datetime(0) DEFAULT NULL COMMENT '反馈截止时间',
  `fksm` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '反馈说明',
  `sjfksj` datetime(0) DEFAULT NULL COMMENT '实际反馈时间',
  `fqcs` int(11) DEFAULT NULL COMMENT '发起参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_rwlz
-- ----------------------------
INSERT INTO `qb_rwlz` VALUES ('5054', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5049', '151951', '事件信息', '5060', '已办结', '151952', '2018-10-30 15:30:37', NULL, '接收', '110', '290', NULL, '2018-10-25 16:17:44', '毛蝌蚪有毒', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5324', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5321', '151956', '事件信息', '5325', '已办结', '151952', '2018-11-19 16:58:38', NULL, NULL, '110', '290', NULL, '2018-11-19 16:58:20', '11月16日15余名东风云南汽车厂退休职工例行到厂门口聚集 ', NULL, '补充采集人员信息', 'XSCJZL', '2018-11-22 17:00:00', '新增一人', '2018-11-19 16:59:20', 3);
INSERT INTO `qb_rwlz` VALUES ('5632', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5629', '151951', '事件信息', NULL, '已办结', '151951', '2018-12-20 11:20:33', NULL, NULL, '110', '110', NULL, '2018-12-20 11:19:43', '20余名职工继18日后再次聚集在小康大道省冶金集团前反映集资建房问题', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5633', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5629', '151951', '事件信息', '5755', '已办结', '152099', '2018-12-25 16:37:32', NULL, NULL, '110', '330', NULL, '2018-12-20 11:19:43', '20余名职工继18日后再次聚集在小康大道省冶金集团前反映集资建房问题', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5634', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5627', '151951', '事件信息', '5637', '已办结', '152066', '2018-12-20 14:13:23', NULL, NULL, '110', '410', NULL, '2018-12-20 11:21:39', '12月19日20余名东风云南汽车厂退休职工例行在厂门口聚集', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5635', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5623', '151951', '事件信息', '5824', '已办结', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-20 11:22:51', '19日嵩阳镇小庄子村村民8人因拆迁安置问题到省政府上访', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5636', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5621', '151951', '事件信息', '5734', '已办结', '152063', '2018-12-25 11:23:16', NULL, NULL, '110', '390', NULL, '2018-12-20 11:23:45', '90余名金座集资人员到市体育馆上访（续报）', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5664', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5631', '151951', '事件信息', '5752', '已办结', '152099', '2018-12-25 16:37:32', NULL, NULL, '110', '330', NULL, '2018-12-24 14:45:23', '13名职工再次集聚小康大道冶金集团前', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5665', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5663', '151951', '事件信息', '5794', '已办结', '152152', '2018-12-25 19:00:58', NULL, NULL, '110', '410', NULL, '2018-12-24 14:45:53', '30余名东风云南汽车厂退休职工在滇缅大道东风云南汽车厂门口聚集', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5666', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5661', '151951', '事件信息', '5832', '已办结', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-24 14:46:37', '在富源煤矿打工的河南籍农民工9人因工钱被拖欠到省政府上访', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5667', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5659', '151951', '事件信息', '5733', '已办结', '152063', '2018-12-25 11:23:16', NULL, NULL, '110', '390', NULL, '2018-12-24 14:46:58', '90余名金座集资人员到市体育馆上访', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5668', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5657', '151951', '事件信息', '5825', '已办结', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-24 14:47:41', '元谋县江边乡村民6人因移民安置问题到省政府上访', NULL, NULL, 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5681', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5670', '151951', '事件信息', '5753', '已办结', '152099', '2018-12-25 16:37:32', NULL, NULL, '110', '330', NULL, '2018-12-24 14:52:13', '五华区银梭路碧桂园小区门口20余农民工聚集讨薪', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5682', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5672', '151951', '事件信息', '5793', '已办结', '152152', '2018-12-25 19:00:58', NULL, NULL, '110', '410', NULL, '2018-12-24 14:54:25', '12月21日20余名东风云南汽车厂退休职工例行在厂区大门口聚集', NULL, NULL, 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5683', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5674', '151951', '事件信息', '5822', '已办结', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-24 14:57:10', '12月21日6名“12.13”人员到省政府上访', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5684', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5676', '151951', '事件信息', '5756', '已办结', '152099', '2018-12-25 16:37:32', NULL, NULL, '110', '330', NULL, '2018-12-24 15:01:36', '12月21日70余名和谐世纪、书香门第、华龙人家业主到红云街道办事处聚集维权', NULL, NULL, 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5685', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5678', '151951', '事件信息', '5758', '已办结', '152082', '2018-12-25 16:37:39', NULL, NULL, '110', '250', NULL, '2018-12-24 15:11:53', '五华分局迅速处置黄土坡旧货市场商户聚集警情', NULL, NULL, 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5688', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5687', '151951', '事件信息', '5711', '已办结', '152096', '2018-12-25 09:40:59', NULL, NULL, '110', '380', NULL, '2018-12-24 15:19:47', '20余名下马村团购群众在碧桂园下马村项目售楼部反映诉求（续）', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5712', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5706', '151951', '事件信息', '5826', '已办结', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 09:44:41', '原云南交通机械厂退休职工6人因工资待遇问题到省政府上访', NULL, '请补充涉事人员信息', 'XXLZ', NULL, NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5713', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5687', '151951', '事件信息', '5714', '办理中', '152096', '2018-12-25 09:49:23', NULL, NULL, '110', '380', NULL, '2018-12-25 09:49:04', '20余名下马村团购群众在碧桂园下马村项目售楼部反映诉求（续）', NULL, '请补充人员信息', 'XSCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5715', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5621', '151951', '事件信息', '5736', '办理中', '152063', '2018-12-25 11:23:16', NULL, NULL, '110', '390', NULL, '2018-12-25 09:59:16', '90余名金座集资人员到市体育馆上访（续报）', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5716', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5631', '151951', '事件信息', '5757', '办理中', '152099', '2018-12-25 16:37:32', NULL, NULL, '110', '330', NULL, '2018-12-25 10:00:38', '13名职工再次集聚小康大道冶金集团前', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5717', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5663', '151951', '事件信息', '5795', '办理中', '152152', '2018-12-25 19:00:58', NULL, NULL, '110', '410', NULL, '2018-12-25 10:01:39', '30余名东风云南汽车厂退休职工在滇缅大道东风云南汽车厂门口聚集', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5718', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5661', '151951', '事件信息', '5823', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:02:23', '在富源煤矿打工的河南籍农民工9人因工钱被拖欠到省政府上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5719', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5659', '151951', '事件信息', '5735', '办理中', '152063', '2018-12-25 11:23:16', NULL, NULL, '110', '390', NULL, '2018-12-25 10:03:40', '90余名金座集资人员到市体育馆上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5720', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5657', '151951', '事件信息', '5827', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:04:29', '元谋县江边乡村民6人因移民安置问题到省政府上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5721', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5670', '151951', '事件信息', '5754', '办理中', '152099', '2018-12-25 16:37:32', NULL, NULL, '110', '330', NULL, '2018-12-25 10:05:20', '五华区银梭路碧桂园小区门口20余农民工聚集讨薪', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5722', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5672', '151951', '事件信息', '5796', '办理中', '152152', '2018-12-25 19:00:58', NULL, NULL, '110', '410', NULL, '2018-12-25 10:06:10', '12月21日20余名东风云南汽车厂退休职工例行在厂区大门口聚集', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5723', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5674', '151951', '事件信息', '5833', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:06:49', '12月21日6名“12.13”人员到省政府上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5724', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5676', '151951', '事件信息', '5751', '办理中', '152099', '2018-12-25 16:37:32', NULL, NULL, '110', '330', NULL, '2018-12-25 10:08:00', '12月21日70余名和谐世纪、书香门第、华龙人家业主到红云街道办事处聚集维权', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5725', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5678', '151951', '事件信息', '5759', '已办结', '152082', '2018-12-25 16:37:39', NULL, NULL, '110', '250', NULL, '2018-12-25 10:08:51', '五华分局迅速处置黄土坡旧货市场商户聚集警情', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, '2018-12-25 17:04:38', 3);
INSERT INTO `qb_rwlz` VALUES ('5726', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5706', '151951', '事件信息', '5828', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:10:34', '原云南交通机械厂退休职工6人因工资待遇问题到省政府上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5727', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5708', '151951', '事件信息', '5829', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:11:32', '12月24日全省各地大中专毕业生11人因毕业安置问题到省政府上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5728', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5710', '151951', '事件信息', '5834', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:14:35', '12月24日6名昭通昭阳区外嫁妇女因土地问题到省政府上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5729', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5690', '151951', '事件信息', '5792', '办理中', '152152', '2018-12-25 19:00:58', NULL, NULL, '110', '410', NULL, '2018-12-25 10:16:39', '30余名东风云南汽车厂退休职工聚集在滇缅大道东风云南汽车厂前', NULL, NULL, 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5730', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5698', '151951', '事件信息', '5830', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:22:21', '师大附中美华国际高中学生家长80余人因学校停课到省政府上访', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5731', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5702', '151951', '事件信息', '5831', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2018-12-25 10:25:11', '“北京路天主教堂复建项目”20余名商铺业主聚集华山东路天主教堂', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5732', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5700', '151951', '事件信息', '5760', '办理中', '152082', '2018-12-25 16:37:39', NULL, NULL, '110', '250', NULL, '2018-12-25 10:34:31', '普吉路21号云南桥梁建设公司家属区因物业费产生矛盾纠纷（续报）', NULL, '请补充涉事人员信息', 'RYCJZL', '2018-12-28 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5800', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5710', '151951', '事件信息', '5837', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2019-01-14 17:16:34', '12月24日6名昭通昭阳区外嫁妇女因土地问题到省政府上访', NULL, 'adsdsasa', 'RYCJZL', '2019-01-17 17:00:00', NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES ('5801', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5710', '151951', '事件信息', '5821', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2019-01-14 17:24:16', '12月24日6名昭通昭阳区外嫁妇女因土地问题到省政府上访', NULL, 'sssdafdsadsd', 'RYCJZL', NULL, NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES ('5802', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5710', '151951', '事件信息', '6310', '办理中', '151959', '2019-03-02 19:35:40', NULL, NULL, '110', '200', NULL, '2019-01-14 17:32:55', '12月24日6名昭通昭阳区外嫁妇女因土地问题到省政府上访', NULL, 'gfgfdfgfg', 'RYCJZL', NULL, NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES ('5803', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5710', '151951', '事件信息', '5804', '办理中', '151986', '2019-01-14 17:41:09', NULL, NULL, '110', '210', NULL, '2019-01-14 17:40:00', '12月24日6名昭通昭阳区外嫁妇女因土地问题到省政府上访', NULL, 'asfdasdsad', 'RYCJZL', '2019-01-17 17:00:00', NULL, NULL, 7);
INSERT INTO `qb_rwlz` VALUES ('5820', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '172', '151951', '事件信息', '5836', '办理中', '152054', '2019-01-15 17:44:26', NULL, NULL, '110', '290', NULL, '2019-01-15 17:43:25', '23日四川麻省科技有限公司投资户10人到省政府上访', NULL, '才人', 'RYCJZL', '2019-01-18 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5855', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5850', '151951', '事件信息', '5856', '办理中', '152054', '2019-01-18 14:51:56', NULL, NULL, '110', '290', NULL, '2019-01-18 14:44:36', '流程测试17-2', NULL, '采集不少于3人', 'RYCJZL', '2019-01-21 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5857', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5698', '151951', '事件信息', '5858', '办理中', '152054', '2019-01-18 14:57:51', NULL, NULL, '110', '290', NULL, '2019-01-18 14:53:53', '师大附中美华国际高中学生家长80余人因学校停课到省政府上访', NULL, NULL, 'RYCJZL', '2019-01-21 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5880', NULL, NULL, NULL, NULL, NULL, '上报', '事件信息', '5225', '151952', '事件信息', '5881', '已签收', '151951', '2019-02-11 16:21:21', '接收', '接收', '290', '110', NULL, '2019-02-11 16:20:04', '报送流211-1程测试aaaa211-1', NULL, NULL, 'XXLZ', NULL, NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES ('5889', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5659', '151951', '事件信息', '5890', '办理中', '151952', '2019-02-12 17:21:04', NULL, NULL, '110', '290', NULL, '2019-02-12 17:20:32', '90余名金座集资人员到市体育馆上访', NULL, NULL, 'RYCJZL', '2019-02-15 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5892', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5629', '151951', '事件信息', '5893', '办理中', '151952', '2019-02-13 16:37:22', NULL, NULL, '110', '290', NULL, '2019-02-13 16:37:06', '20余名职工继18日后再次聚集在小康大道省冶金集团前反映集资建房问题', NULL, NULL, 'RYCJZL', '2019-02-16 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('5894', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5627', '151951', '事件信息', '5895', '办理中', '151952', '2019-02-13 16:55:30', NULL, NULL, '110', '290', NULL, '2019-02-13 16:55:06', '12月19日20余名东风云南汽车厂退休职工例行在厂门口聚集', NULL, NULL, 'RYCJZL', '2019-02-16 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('6340', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5623', '151951', '事件信息', '6342', '办理中', '152057', '2019-04-19 16:08:50', NULL, NULL, '110', '290', NULL, '2019-04-19 16:07:00', '19日嵩阳镇小庄子村村民8人因拆迁安置问题到省政府上访', NULL, NULL, 'RYCJZL', '2019-04-22 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('6347', NULL, NULL, NULL, NULL, NULL, '上报', '事件信息', '6344', '152057', '事件信息', '6348', '已签收', '151951', '2019-04-19 16:15:43', '接收', '接收', '290', '110', NULL, '2019-04-19 16:15:19', '0419我要报送1条测试信息', NULL, '信息初核，报送', 'XXLZ', NULL, NULL, NULL, NULL);
INSERT INTO `qb_rwlz` VALUES ('6400', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5710', '151951', '事件信息', '6401', '办理中', '152029', '2019-08-12 16:11:31', NULL, NULL, '110', '180', NULL, '2019-08-12 16:11:07', '12月24日6名昭通昭阳区外嫁妇女因土地问题到省政府上访', NULL, NULL, 'RYCJZL', '2019-08-15 17:00:00', NULL, NULL, 3);
INSERT INTO `qb_rwlz` VALUES ('6440', NULL, NULL, NULL, NULL, NULL, '分发', '事件信息', '5676', '151951', '事件信息', '6441', '办理中', '152106', '2019-09-02 14:15:34', NULL, NULL, '110', '340', NULL, '2019-09-02 14:14:54', '12月21日70余名和谐世纪、书香门第、华龙人家业主到红云街道办事处聚集维权', NULL, NULL, 'RYCJZL', NULL, NULL, NULL, 3);

SET FOREIGN_KEY_CHECKS = 1;
