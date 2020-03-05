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

 Date: 05/03/2020 14:51:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ba_ht
-- ----------------------------
DROP TABLE IF EXISTS `ba_ht`;
CREATE TABLE `ba_ht`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属部门',
  `htmc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '合同名称',
  `htbh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '合同编号',
  `khbh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户编号',
  `fkfs` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '付款方式',
  `htzt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '合同状态',
  `qdsj` datetime(0) DEFAULT NULL COMMENT '签订时间',
  `zxsj` datetime(0) DEFAULT NULL COMMENT '执行开始时间',
  `jssj` datetime(0) DEFAULT NULL COMMENT '执行结束时间',
  `htrs` int(32) DEFAULT NULL COMMENT '合同人数',
  `htdj` double(32, 0) DEFAULT NULL COMMENT '服务单价',
  `htzj` double(32, 0) DEFAULT NULL COMMENT '服务总价',
  `ysfwf` double(32, 0) DEFAULT NULL COMMENT '已收服务费',
  `ce` double(32, 0) DEFAULT NULL COMMENT '差额',
  `htssbm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '合同所属部门',
  `htfzr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '合同负责人',
  `lxdh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `htbz` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_ht
-- ----------------------------
INSERT INTO `ba_ht` VALUES ('1232860781779881985', 'admin', '2020-02-27 10:51:30', 'admin', '2020-03-04 11:26:08', 'A01', '测试11', 'NO11', '1231860267986460673', 'fqfk', 'zc', '2020-02-27 00:00:00', '2020-02-27 00:00:00', '2020-02-29 00:00:00', 10, 10000, 100000, 20000, NULL, '110', 'zhagnxiao', '111111111111', '0000');
INSERT INTO `ba_ht` VALUES ('1235107430220816386', 'admin', '2020-03-04 15:38:53', NULL, NULL, 'A01', '测试主附表', 'PDP-2020-001', '1231860267986460673', 'fqfk', 'zc', '2020-03-04 00:00:00', '2020-03-04 00:00:00', '2020-03-27 00:00:00', 500, 5000, 2500000, 0, 2500000, '110', 'admin', '1358', '111');

-- ----------------------------
-- Table structure for ba_kh
-- ----------------------------
DROP TABLE IF EXISTS `ba_kh`;
CREATE TABLE `ba_kh`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属部门',
  `dwmc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '单位名称',
  `dwdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址',
  `dwlxdh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `dwdzyx` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '电子邮箱',
  `dwfzr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `dwlxr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `dwzsxlh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '证书序列号',
  `zzjgzhm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织机构证号码',
  `dwbz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_kh
-- ----------------------------
INSERT INTO `ba_kh` VALUES ('1231860267986460673', 'admin', '2020-02-24 16:35:49', NULL, NULL, 'A01', '中信银行', '人民西路', '123457', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ba_skjh
-- ----------------------------
DROP TABLE IF EXISTS `ba_skjh`;
CREATE TABLE `ba_skjh`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属部门',
  `jhmc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '计划名称',
  `htid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '合同id',
  `dqsj` datetime(0) DEFAULT NULL COMMENT '到期时间',
  `jhzt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '计划状态',
  `jhlx` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '计划类型',
  `sjje` double(15, 2) DEFAULT NULL COMMENT '涉及金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_skjh
-- ----------------------------
INSERT INTO `ba_skjh` VALUES ('15832916243940', 'admin', '2020-03-04 11:26:08', NULL, NULL, 'A01', '第一期', '1232860781779881985', '2020-03-04 00:00:00', 'zxz', 'sk', 50000.00);
INSERT INTO `ba_skjh` VALUES ('15833074925490', 'admin', '2020-03-04 15:38:53', NULL, NULL, 'A01', '第一期', '1235107430220816386', '2020-03-04 00:00:00', 'zxz', 'sk', 500000.00);
INSERT INTO `ba_skjh` VALUES ('15833075176611', 'admin', '2020-03-04 15:38:53', NULL, NULL, 'A01', '第二期', '1235107430220816386', '2020-03-05 00:00:00', 'zxz', 'sk', 2000000.00);

-- ----------------------------
-- Table structure for qb_dz
-- ----------------------------
DROP TABLE IF EXISTS `qb_dz`;
CREATE TABLE `qb_dz`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属部门',
  `dzjc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址名称',
  `bzdzmc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标准地址名称',
  `bzdzbh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标准地址编号',
  `dzbiem` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址别名',
  `dqsfzy` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '状态',
  `dzbm` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址编码',
  `xqpcs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '辖区派出所',
  `xqxianjga` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '辖区县级公安机关',
  `xqshijga` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '辖区市级公安机关',
  `xqpcsbh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '辖区派出所编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_dz
-- ----------------------------
INSERT INTO `qb_dz` VALUES ('1234376807629762562', 'admin', '2020-03-02 15:15:39', NULL, NULL, 'A01', '11', '11', '11', '11', '1', '11', '11', '11', '11', '11');

-- ----------------------------
-- Table structure for qb_zz
-- ----------------------------
DROP TABLE IF EXISTS `qb_zz`;
CREATE TABLE `qb_zz`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属部门',
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父级节点',
  `has_child` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否有子节点',
  `zzcymc` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '常用名',
  `zzjc` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织简称',
  `zzbm` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织编码',
  `zzbiem` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织别名',
  `dqsfzy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '状态',
  `bz` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `zzpym` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织拼音码',
  `zzcj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织层序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_zz
-- ----------------------------
INSERT INTO `qb_zz` VALUES ('1234373650421952513', 'admin', '2020-03-02 15:03:06', 'admin', '2020-03-02 15:03:21', 'A01', '0', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL);
INSERT INTO `qb_zz` VALUES ('1234373710513745921', 'admin', '2020-03-02 15:03:21', NULL, NULL, 'A01', '1234373650421952513', NULL, '1-1', '1-1', '1-1', '1-1', NULL, NULL, NULL, NULL);
INSERT INTO `qb_zz` VALUES ('2500', 'admin', '2020-03-02 15:00:00', 'admin', '2020-03-02 15:00:00', 'A01', '0', '1', '金融受损群体', '金融受损群体', '12', '金融受损群体', '1', NULL, 'zz-jrssqt', '0');
INSERT INTO `qb_zz` VALUES ('2501', 'admin', '2020-03-03 15:00:00', 'admin', '2020-03-03 15:00:00', 'A01', '2500', NULL, '12.13', '12.13', '12-1', '12.13', '1', NULL, 'zz-jrssqt-12.13', '1');
INSERT INTO `qb_zz` VALUES ('2502', 'admin', '2020-03-04 15:00:00', 'admin', '2020-03-04 15:00:00', 'A01', '2500', NULL, '金座', '金座', '12-2', '金座', '1', NULL, 'zz-jrssqt-jz', '1');
INSERT INTO `qb_zz` VALUES ('2503', 'admin', '2020-03-05 15:00:00', 'admin', '2020-03-05 15:00:00', 'A01', '2500', NULL, '小微儒商', '小微儒商', '12-3', '小微儒商', '1', NULL, 'zz-jrssqt-xwrs', '1');
INSERT INTO `qb_zz` VALUES ('2504', 'admin', '2020-03-06 15:00:00', 'admin', '2020-03-06 15:00:00', 'A01', '2500', NULL, '远卓投资户', '远卓投资户', '12-4', '远卓投资户', '1', NULL, 'zz-jrssqt-yztzh', '1');
INSERT INTO `qb_zz` VALUES ('2505', 'admin', '2020-03-07 15:00:00', 'admin', '2020-03-07 15:00:00', 'A01', '2500', NULL, '投资户', '投资户', '12-5', '投资户', '1', NULL, 'zz-jrssqt-tzh', '1');
INSERT INTO `qb_zz` VALUES ('2506', 'admin', '2020-03-08 15:00:00', 'admin', '2020-03-08 15:00:00', 'A01', '2500', NULL, '涉众型经济案件受害人', '涉众型经济案件受害人', '12-6', '涉众型经济案件受害人', '1', NULL, 'zz-jrssqt-szxjjajshr', '1');
INSERT INTO `qb_zz` VALUES ('2507', 'admin', '2020-03-09 15:00:00', 'admin', '2020-03-09 15:00:00', 'A01', '0', '1', '村民', '村民', '13', '村民', '1', NULL, 'zz-cm', '0');
INSERT INTO `qb_zz` VALUES ('2508', 'admin', '2020-03-10 15:00:00', 'admin', '2020-03-10 15:00:00', 'A01', '2507', NULL, '岗头村', '岗头村', '13-1', '岗头村', '1', NULL, 'zz-cm-gtc', '1');
INSERT INTO `qb_zz` VALUES ('2509', 'admin', '2020-03-11 15:00:00', 'admin', '2020-03-11 15:00:00', 'A01', '2507', NULL, '棕树营', '棕树营', '13-2', '棕树营', '1', NULL, 'zz-cm-zsy', '1');
INSERT INTO `qb_zz` VALUES ('2510', 'admin', '2020-03-12 15:00:00', 'admin', '2020-03-12 15:00:00', 'A01', '2507', NULL, '班庄村', '班庄村', '13-3', '班庄村', '1', NULL, 'zz-cm-bzc', '1');
INSERT INTO `qb_zz` VALUES ('2511', 'admin', '2020-03-13 15:00:00', 'admin', '2020-03-13 15:00:00', 'A01', '2507', NULL, '赵李家堆', '赵李家堆', '13-4', '赵李家堆', '1', NULL, 'zz-cm-zljd', '1');
INSERT INTO `qb_zz` VALUES ('2512', 'admin', '2020-03-14 15:00:00', 'admin', '2020-03-14 15:00:00', 'A01', '0', '1', '企业改制', '企业改制', '14', '企业改制', '1', NULL, 'zz-qygz', '0');
INSERT INTO `qb_zz` VALUES ('2513', 'admin', '2020-03-15 15:00:00', 'admin', '2020-03-15 15:00:00', 'A01', '2512', NULL, '企业改制职工', '企业改制职工', '14-1', '企业改制职工', '1', NULL, 'zz-qygz-qygzzg', '1');
INSERT INTO `qb_zz` VALUES ('2514', 'admin', '2020-03-16 15:00:00', 'admin', '2020-03-16 15:00:00', 'A01', '2512', NULL, '下岗工人', '下岗工人', '14-2', '下岗工人', '1', NULL, 'zz-qygz-xggr', '1');
INSERT INTO `qb_zz` VALUES ('2515', 'admin', '2020-03-17 15:00:00', 'admin', '2020-03-17 15:00:00', 'A01', '2512', NULL, '昆明平板玻璃厂职工', '昆明平板玻璃厂职工', '14-3', '昆明平板玻璃厂职工', '1', NULL, 'zz-qygz-kmpbblczg', '1');
INSERT INTO `qb_zz` VALUES ('2516', 'admin', '2020-03-18 15:00:00', 'admin', '2020-03-18 15:00:00', 'A01', '2512', NULL, '昆百大职工', '昆百大职工', '14-4', '昆百大职工', '1', NULL, 'zz-qygz-kbdzg', '1');
INSERT INTO `qb_zz` VALUES ('2517', 'admin', '2020-03-19 15:00:00', 'admin', '2020-03-19 15:00:00', 'A01', '2512', NULL, '农机站职工', '农机站职工', '14-5', '农机站职工', '1', NULL, 'zz-qygz-njzzg', '1');
INSERT INTO `qb_zz` VALUES ('2518', 'admin', '2020-03-20 15:00:00', 'admin', '2020-03-20 15:00:00', 'A01', '2512', NULL, '牙膏厂职工', '牙膏厂职工', '14-6', '牙膏厂职工', '1', NULL, 'zz-qygz-ygczg', '1');
INSERT INTO `qb_zz` VALUES ('2519', 'admin', '2020-03-21 15:00:00', 'admin', '2020-03-21 15:00:00', 'A01', '0', '1', '农民工', '农民工', '15', '农民工', '1', NULL, 'zz-nmg', '0');
INSERT INTO `qb_zz` VALUES ('2520', 'admin', '2020-03-22 15:00:00', 'admin', '2020-03-22 15:00:00', 'A01', '2519', NULL, '泛农民工 ', '泛农民工 ', '15-1', '泛农民工 ', '1', NULL, 'zz-nmg-fnmg ', '1');
INSERT INTO `qb_zz` VALUES ('2521', 'admin', '2020-03-23 15:00:00', 'admin', '2020-03-23 15:00:00', 'A01', '2519', NULL, '包工头', '包工头', '15-2', '包工头', '1', NULL, 'zz-nmg-bgt', '1');
INSERT INTO `qb_zz` VALUES ('2522', 'admin', '2020-03-24 15:00:00', 'admin', '2020-03-24 15:00:00', 'A01', '2519', NULL, '外来务工人员', '外来务工人员', '15-3', '外来务工人员', '1', NULL, 'zz-nmg-wlwgry', '1');
INSERT INTO `qb_zz` VALUES ('2523', 'admin', '2020-03-25 15:00:00', 'admin', '2020-03-25 15:00:00', 'A01', '0', '1', '军退人员', '军退人员', '16', '军退人员', '1', NULL, 'zz-jtry', '0');
INSERT INTO `qb_zz` VALUES ('2524', 'admin', '2020-03-26 15:00:00', 'admin', '2020-03-26 15:00:00', 'A01', '2523', NULL, '对越参战老兵', '对越参战老兵', '16-1', '对越参战老兵', '1', NULL, 'zz-jtry-dyczlb', '1');
INSERT INTO `qb_zz` VALUES ('2525', 'admin', '2020-03-27 15:00:00', 'admin', '2020-03-27 15:00:00', 'A01', '2523', NULL, '支前民兵', '支前民兵', '16-2', '支前民兵', '1', NULL, 'zz-jtry-zqmb', '1');
INSERT INTO `qb_zz` VALUES ('2526', 'admin', '2020-03-28 15:00:00', 'admin', '2020-03-28 15:00:00', 'A01', '2523', NULL, '退伍民兵', '退伍民兵', '16-3', '退伍民兵', '1', NULL, 'zz-jtry-twmb', '1');
INSERT INTO `qb_zz` VALUES ('2527', 'admin', '2020-03-29 15:00:00', 'admin', '2020-03-29 15:00:00', 'A01', '2523', NULL, '退役老兵', '退役老兵', '16-4', '退役老兵', '1', NULL, 'zz-jtry-tylb', '1');
INSERT INTO `qb_zz` VALUES ('2528', 'admin', '2020-03-30 15:00:00', 'admin', '2020-03-30 15:00:00', 'A01', '0', '1', '业主购房者', '业主购房者', '17', '业主购房者', '1', NULL, 'zz-yzgfz', '0');
INSERT INTO `qb_zz` VALUES ('2529', 'admin', '2020-03-31 15:00:00', 'admin', '2020-03-31 15:00:00', 'A01', '2528', NULL, '中天成业主', '中天成业主', '17-1', '中天成业主', '1', NULL, 'zz-yzgfz-ztcyz', '1');
INSERT INTO `qb_zz` VALUES ('2530', 'admin', '2020-04-01 15:00:00', 'admin', '2020-04-01 15:00:00', 'A01', '2528', NULL, '别样幸福城小区业主', '别样幸福城小区业主', '17-2', '别样幸福城小区业主', '1', NULL, 'zz-yzgfz-byxfcxqyz', '1');
INSERT INTO `qb_zz` VALUES ('2531', 'admin', '2020-04-02 15:00:00', 'admin', '2020-04-02 15:00:00', 'A01', '2528', NULL, '壹号广场业主', '壹号广场业主', '17-3', '壹号广场业主', '1', NULL, 'zz-yzgfz-yhgcyz', '1');
INSERT INTO `qb_zz` VALUES ('2532', 'admin', '2020-04-03 15:00:00', 'admin', '2020-04-03 15:00:00', 'A01', '2528', NULL, '壹号广场购房者', '壹号广场购房者', '17-4', '壹号广场购房者', '1', NULL, 'zz-yzgfz-yhgcgfz', '1');
INSERT INTO `qb_zz` VALUES ('2533', 'admin', '2020-04-04 15:00:00', 'admin', '2020-04-04 15:00:00', 'A01', '2528', NULL, '尚源郦城业主', '尚源郦城业主', '17-5', '尚源郦城业主', '1', NULL, 'zz-yzgfz-sylcyz', '1');
INSERT INTO `qb_zz` VALUES ('2534', 'admin', '2020-04-05 15:00:00', 'admin', '2020-04-05 15:00:00', 'A01', '2528', NULL, '朗悦湾', '朗悦湾', '17-6', '朗悦湾', '1', NULL, 'zz-yzgfz-lyw', '1');
INSERT INTO `qb_zz` VALUES ('2535', 'admin', '2020-04-06 15:00:00', 'admin', '2020-04-06 15:00:00', 'A01', '2528', NULL, '经典双城业主', '经典双城业主', '17-7', '经典双城业主', '1', NULL, 'zz-yzgfz-jdscyz', '1');
INSERT INTO `qb_zz` VALUES ('2536', 'admin', '2020-04-07 15:00:00', 'admin', '2020-04-07 15:00:00', 'A01', '2528', NULL, '西尚邻居小区业主', '西尚邻居小区业主', '17-8', '西尚邻居小区业主', '1', NULL, 'zz-yzgfz-xsljxqyz', '1');
INSERT INTO `qb_zz` VALUES ('2537', 'admin', '2020-04-09 15:00:00', 'admin', '2020-04-09 15:00:00', 'A01', '0', '1', '企事业单位职工', '企事业单位职工', '18', '企事业单位职工', '1', NULL, 'zz-qsydwzg', '0');
INSERT INTO `qb_zz` VALUES ('2538', 'admin', '2020-04-10 15:00:00', 'admin', '2020-04-10 15:00:00', 'A01', '2537', NULL, '企业职工', '企业职工', '18-1', '企业职工', '1', NULL, 'zz-qsydwzg-qyzg', '1');
INSERT INTO `qb_zz` VALUES ('2539', 'admin', '2020-04-11 15:00:00', 'admin', '2020-04-11 15:00:00', 'A01', '2537', NULL, '厂矿职工', '厂矿职工', '18-2', '厂矿职工', '1', NULL, 'zz-qsydwzg-ckzg', '1');
INSERT INTO `qb_zz` VALUES ('2540', 'admin', '2020-04-12 15:00:00', 'admin', '2020-04-12 15:00:00', 'A01', '0', '1', '教育', '教育', '19', '教育', '1', NULL, 'zz-jy', '0');
INSERT INTO `qb_zz` VALUES ('2541', 'admin', '2020-04-13 15:00:00', 'admin', '2020-04-13 15:00:00', 'A01', '2540', NULL, '先锋小学', '先锋小学', '19-1', '先锋小学', '1', NULL, 'zz-jy-xfxx', '1');
INSERT INTO `qb_zz` VALUES ('2542', 'admin', '2020-04-14 15:00:00', 'admin', '2020-04-14 15:00:00', 'A01', '2540', NULL, '大中专毕业生', '大中专毕业生', '19-2', '大中专毕业生', '1', NULL, 'zz-jy-dzzbys', '1');
INSERT INTO `qb_zz` VALUES ('2543', 'admin', '2020-04-15 15:00:00', 'admin', '2020-04-15 15:00:00', 'A01', '2540', NULL, '学生', '学生', '19-3', '学生', '1', NULL, 'zz-jy-xs', '1');
INSERT INTO `qb_zz` VALUES ('2544', 'admin', '2020-04-16 15:00:00', 'admin', '2020-04-16 15:00:00', 'A01', '2540', NULL, '学生家长', '学生家长', '19-4', '学生家长', '1', NULL, 'zz-jy-xsjz', '1');
INSERT INTO `qb_zz` VALUES ('2545', 'admin', '2020-04-17 15:00:00', 'admin', '2020-04-17 15:00:00', 'A01', '2540', NULL, '民办、代课教师', '民办、代课教师', '19-5', '民办、代课教师', '1', NULL, 'zz-jy-mb、dkjs', '1');
INSERT INTO `qb_zz` VALUES ('2546', 'admin', '2020-04-18 15:00:00', 'admin', '2020-04-18 15:00:00', 'A01', '0', '1', '商业问题', '商业问题', '30', '商业问题', '1', NULL, 'zz-sywt', '0');
INSERT INTO `qb_zz` VALUES ('2547', 'admin', '2020-04-19 15:00:00', 'admin', '2020-04-19 15:00:00', 'A01', '2546', NULL, '个体户', '个体户', '30-1', '个体户', '1', NULL, 'zz-sywt-gth', '1');
INSERT INTO `qb_zz` VALUES ('2548', 'admin', '2020-04-20 15:00:00', 'admin', '2020-04-20 15:00:00', 'A01', '2546', NULL, '农贸市场租户', '农贸市场租户', '30-2', '农贸市场租户', '1', NULL, 'zz-sywt-nmsczh', '1');
INSERT INTO `qb_zz` VALUES ('2549', 'admin', '2020-04-21 15:00:00', 'admin', '2020-04-21 15:00:00', 'A01', '0', '1', '医患', '医患', '31', '医患', '1', NULL, 'zz-yh', '0');
INSERT INTO `qb_zz` VALUES ('2550', 'admin', '2020-04-22 15:00:00', 'admin', '2020-04-22 15:00:00', 'A01', '2549', NULL, '患者家属', '患者家属', '31-1', '患者家属', '1', NULL, 'zz-yh-hzjs', '1');
INSERT INTO `qb_zz` VALUES ('2551', 'admin', '2020-04-23 15:00:00', 'admin', '2020-04-23 15:00:00', 'A01', '0', '1', '其他群体', '其他群体', '32', '其他群体', '1', NULL, 'zz-qtqt', '0');
INSERT INTO `qb_zz` VALUES ('2552', 'admin', '2020-04-25 15:00:00', 'admin', '2020-04-25 15:00:00', 'A01', '2551', NULL, '工人', '工人', '32-2', '工人', '1', NULL, 'zz-qtqt-gr', '1');
INSERT INTO `qb_zz` VALUES ('2553', 'admin', '2020-04-26 15:00:00', 'admin', '2020-04-26 15:00:00', 'A01', '2551', NULL, '普通市民', '普通市民', '32-3', '普通市民', '1', NULL, 'zz-qtqt-ptsm', '1');
INSERT INTO `qb_zz` VALUES ('2554', 'admin', '2020-04-27 15:00:00', 'admin', '2020-04-27 15:00:00', 'A01', '2551', NULL, '渣土车司机', '渣土车司机', '32-4', '渣土车司机', '1', NULL, 'zz-qtqt-ztcsj', '1');
INSERT INTO `qb_zz` VALUES ('2555', 'admin', '2020-04-28 15:00:00', 'admin', '2020-03-02 15:12:02', 'A01', '2551', NULL, '群众', '群众', '32-5', '群众', '0', NULL, 'zz-qtqt-qz', '1');
INSERT INTO `qb_zz` VALUES ('2556', 'admin', '2020-04-29 15:00:00', 'admin', '2020-04-29 15:00:00', 'A01', '2551', NULL, '退休职工', '退休职工', '32-6', '退休职工', '1', NULL, 'zz-qtqt-txzg', '1');
INSERT INTO `qb_zz` VALUES ('3507', 'admin', '2020-04-24 15:00:00', 'admin', '2020-04-24 15:00:00', 'A01', '2551', NULL, '测试其他群体', '测试其他群体', '32-1', '测试其他群体', '1', NULL, 'zz-qtqt-csqtqt', '1');
INSERT INTO `qb_zz` VALUES ('5142', 'admin', '2020-04-08 15:00:00', 'admin', '2020-04-08 15:00:00', 'A01', '2528', NULL, '保利大家', '保利大家', '17-9', '保利大家', '1', NULL, 'zz-yzgfz-bldj', '1');


INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1229604230654906369', '危险等级', 'xs_wxdj', '危险等级', 0, 'admin', '2020-02-18 11:11:08', 'admin', '2020-02-18 11:11:27', 0);
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1232193087342673921', '付款方式', 'ba_fkfs', '', 0, 'admin', '2020-02-25 14:38:20', 'admin', '2020-03-03 16:59:05', 0);
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1232193482857152513', '合同状态', 'ba_htzt', '', 0, 'admin', '2020-02-25 14:39:54', 'admin', '2020-03-03 16:58:59', 0);
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1234764738219532290', '线索类型', 'xs_xslx', '', 0, 'admin', '2020-03-03 16:57:09', NULL, NULL, 0);
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1235026419038314498', '收付款计划状态', 'ba_sfkjhzt', '', 0, 'admin', '2020-03-04 10:16:59', 'admin', '2020-03-04 10:19:32', 0);
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1235027008828760065', '收付款计划类型', 'ba_sfkjhlx', '', 0, 'admin', '2020-03-04 10:19:19', NULL, NULL, 0);



INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1229604597958496258', '1229604230654906369', '高', 'wxdj_g', '危险等级高', 1, 1, 'admin', '2020-02-18 11:12:36', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1229604712404275202', '1229604230654906369', '中', 'wxdj_z', '危险等级中', 1, 1, 'admin', '2020-02-18 11:13:03', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1229604799591272449', '1229604230654906369', '低', 'wxdj_d', '危险等级低', 1, 1, 'admin', '2020-02-18 11:13:24', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1232193278133174274', '1232193087342673921', '分期付款', 'fqfk', '', 1, 1, 'admin', '2020-02-25 14:39:05', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1232193355354505218', '1232193087342673921', '一次性付款', 'ycxfk', '', 1, 1, 'admin', '2020-02-25 14:39:24', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1232193595239333890', '1232193482857152513', '正常', 'zc', '', 1, 1, 'admin', '2020-02-25 14:40:21', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1232193624272306177', '1232193482857152513', '超期', 'cq', '', 1, 1, 'admin', '2020-02-25 14:40:28', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1232193670359318530', '1232193482857152513', '完结', 'wj', '', 1, 1, 'admin', '2020-02-25 14:40:39', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1234764824332787714', '1234764738219532290', '人员', 'ry', '', 1, 1, 'admin', '2020-03-03 16:57:30', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1234764901877080065', '1234764738219532290', '车辆', 'cl', '', 1, 1, 'admin', '2020-03-03 16:57:48', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1234764973691953153', '1234764738219532290', '现场', 'xc', '', 1, 1, 'admin', '2020-03-03 16:58:05', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1235026605823254530', '1235026419038314498', '执行中', 'zxz', '', 1, 1, 'admin', '2020-03-04 10:17:43', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1235026737696366593', '1235026419038314498', '已完成', 'ywc', '', 1, 1, 'admin', '2020-03-04 10:18:15', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1235026821280456706', '1235026419038314498', '未完成', 'wwc', '', 1, 1, 'admin', '2020-03-04 10:18:35', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1235027234431983618', '1235027008828760065', '收款', 'sk', '', 1, 1, 'admin', '2020-03-04 10:20:13', 'admin', '2020-03-04 10:20:32');
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1235027367764713474', '1235027008828760065', '付款', 'fk', '', 1, 1, 'admin', '2020-03-04 10:20:45', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1235027419476287490', '1235027008828760065', '其他', 'qt', '', 1, 1, 'admin', '2020-03-04 10:20:57', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
