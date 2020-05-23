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

 Date: 23/05/2020 18:45:01
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
INSERT INTO `qb_swxszb` VALUES ('1262998637281927169', NULL, NULL, NULL, NULL, NULL, 'ry', NULL, NULL, NULL, NULL, 'admin', '2020-05-20 14:48:35', NULL, NULL, NULL, 'encryption_128px_1265326_easyicon.net_1589957313387.net.ico', '530000000000000000000', '11111111111', '测试标题520', NULL, '测试地点', NULL);
INSERT INTO `qb_swxszb` VALUES ('1263001868074557442', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '测试标题5201', '<p>东方时尚</p>\n', '测试地点', NULL);
INSERT INTO `qb_swxszb` VALUES ('1263757623279030274', NULL, NULL, NULL, NULL, NULL, 'xc', 'wxdj_z', 'Y', NULL, NULL, NULL, NULL, '012000', '2020-05-23 11:12:39', NULL, NULL, NULL, NULL, '这是标题啦啦啦', '<p>这是详细内容这是详细内容这是详细内容这是详细内容这是详细内容这是详细内容</p>\n', '这是地点哦哦哦', '涉军指数：未知\r\n涉上访指数：0.56，高于均值：0.32\r\n二次犯罪概率：0.6，需要重点关注，降低其造成社会危害的概率');
INSERT INTO `qb_swxszb` VALUES ('402881e7723b64ae01723b66a73e0000', NULL, '2020-05-22 16:01:21', NULL, '151951', '110', NULL, NULL, NULL, NULL, NULL, '012000', '2020-05-22 16:01:20', NULL, NULL, NULL, NULL, NULL, NULL, '这是标题5221', '<p>这是内容5221</p>\n', NULL, NULL);
INSERT INTO `qb_swxszb` VALUES ('402881e7723b72a501723b734fde0000', NULL, '2020-05-22 16:15:11', NULL, '151951', '110', 'cl', NULL, NULL, NULL, NULL, '012000', '2020-05-22 16:15:11', NULL, NULL, NULL, NULL, NULL, NULL, '是否发生的', '<p>发生的范德萨范德萨大幅度发</p>\n', NULL, NULL);
INSERT INTO `qb_swxszb` VALUES ('402881e7723b64ae01723b68b8890001', NULL, '2020-05-22 16:03:38', NULL, '151951', '110', NULL, NULL, NULL, NULL, NULL, '012000', '2020-05-22 16:03:38', NULL, NULL, NULL, NULL, NULL, NULL, '奋斗的舒适度', '<p>佛挡杀佛多福多寿</p>\n', NULL, NULL);
INSERT INTO `qb_swxszb` VALUES ('1264018655868211201', NULL, NULL, NULL, NULL, NULL, 'ry', NULL, NULL, NULL, NULL, 'admin', '2020-05-23 10:21:46', NULL, NULL, NULL, 'encryption_564px_1265326_easyicon.net_1590200503245.net.png', '538880', '13588', '哦看看咯厉害了', NULL, '将计就计', NULL);

-- ----------------------------
-- Table structure for qb_swxszbfj
-- ----------------------------
DROP TABLE IF EXISTS `qb_swxszbfj`;
CREATE TABLE `qb_swxszbfj`  (
  `ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `WJLJ` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FJMC` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FJSCSJ` datetime(0) NULL DEFAULT NULL,
  `SWXSBH` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SCSBBM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL,
  `UPDATE_BY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qb_swxszbfj
-- ----------------------------
INSERT INTO `qb_swxszbfj` VALUES ('1235122939263836161', '1580563621683_1583311204231.mp4', 'hhyygh', NULL, '1235122939217698817', NULL, 'admin', '2020-03-04 16:40:31', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1235122939284807682', 'mmexport1583309280532_1583311228120.jpg', 'uyniyg', NULL, '1235122939217698817', NULL, 'admin', '2020-03-04 16:40:31', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1235765913194708994', 'mmexport1583375484624_1583464522531.jpeg', '(?>?<?）好吃喵！计划', NULL, '1235765913115017217', NULL, 'admin', '2020-03-06 11:15:28', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1235769634616098818', 'mmexport1583375480182_1583465404407.jpeg', '李利宏', NULL, '1235769634553184257', NULL, 'admin', '2020-03-06 11:30:15', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1235769858759704578', 'mmexport1583375473677_1583465462243.jpeg', 'jkkk', NULL, '1235769858726150146', NULL, 'admin', '2020-03-06 11:31:08', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1236943955443097601', 'IMG_20200303_030123_1_1583745391021.jpg', 'rrrr', NULL, '1236943955380183041', NULL, 'admin', '2020-03-09 17:16:35', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1237301698502852610', 'IMG_20200303_030136_1583830682745.jpg', 'eeeeee', NULL, '1237301698414772225', NULL, 'admin', '2020-03-10 16:58:08', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1245243672476291073', 'IMG_20200331_213530_1585724196291.jpg', '哈哈哈', NULL, '1245243672363044865', NULL, 'admin', '2020-04-01 14:56:42', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1257958073146617857', 'IMG_20200503_104226_1588755522067.jpg', '测试附件', NULL, '1257958073083703297', NULL, 'admin', '2020-05-06 16:59:11', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1257958073163395073', 'IMG_20200503_104226_1588755548222.jpg', '测试附件', NULL, '1257958073083703297', NULL, 'admin', '2020-05-06 16:59:11', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1257958543881744386', 'Screenshot_20200506_155441_com.tencent.mm_1588755615702.tencent.mm.jpg', '测试照片', NULL, '1257958543852384258', NULL, 'admin', '2020-05-06 17:01:03', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1257958543902715905', 'IntsigLog_1588755655473.txt', '测试文件', NULL, '1257958543852384258', NULL, 'admin', '2020-05-06 17:01:03', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1257958827609632770', 'Screenshot_20200425_162133_com.huawei.android.launcher_1588755726723.huawei.android.launcher.jpg', 'hi牛股', NULL, '1257958827597049858', NULL, 'admin', '2020-05-06 17:02:11', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1257959156736667650', '“抗疫情”小程序使用情况统计表_05月03日15时_530102_1588755806634.xls', '小程序数据', NULL, '1257959156682141697', NULL, 'admin', '2020-05-06 17:03:29', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1258665464255295490', '20200324114935371_1588924092385.jpg', '尽快解决', NULL, '1258665464129466370', NULL, 'admin', '2020-05-08 15:50:06', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1259404127117258754', 'eab9044c849bbabbd62afc7c._1589100278021.jpg', '图片', NULL, '1259404127062732801', NULL, 'admin', '2020-05-10 16:45:17', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1259404127163396098', '94791575565595728._1589100302401.jpg', '图片给我', NULL, '1259404127062732801', NULL, 'admin', '2020-05-10 16:45:17', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1259405654582112258', 'eab9044c849bbabbd62afc7c._1589100278021..jpg', '图片', NULL, '1259405654535974914', NULL, 'admin', '2020-05-10 16:51:21', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1259405654598889473', '94791575565595728._1589100302401..jpg', '图片给我', NULL, '1259405654535974914', NULL, 'admin', '2020-05-10 16:51:21', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1259407086119145474', '0_1589100945844.webp', '可口可乐了', NULL, '1259407085825544194', NULL, 'admin', '2020-05-10 16:57:03', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1259676629919981570', '20200324114935371_1589165283166.jpg', '哈哈哈哈', NULL, '1259676629865455617', NULL, 'admin', '2020-05-11 10:48:07', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1262212573927600129', 'eab9044c849bbabbd62afc7c._1589769892031..jpg', '照片', NULL, '1262212573747245057', NULL, 'admin', '2020-05-18 10:45:03', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1262243679095857154', 'encryption_128px_1265326_easyicon.net_1589777310925.net.ico', 'yggg', NULL, '1262243679032942594', NULL, 'admin', '2020-05-18 12:48:39', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1262245587411890177', 'encryption_128px_1265326_easyicon.net_1589777766569.net.ico', 'xfd', NULL, '1262245587374141441', NULL, 'admin', '2020-05-18 12:56:14', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1262630670572478466', 'encryption_128px_1265326_easyicon.net_1589869567632.net.ico', '测试图片519', NULL, '1262630670492786690', NULL, 'admin', '2020-05-19 14:26:25', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1262631191609892865', 'encryption_128px_1265326_easyicon.net_1589869567632.net.ico', '测试图片519', NULL, '1262631191563755521', NULL, 'admin', '2020-05-19 14:28:29', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('15814213491010', 'files/20200211/001-boy_1581421401639.png', NULL, NULL, '402881e0703403490170341000f10003', NULL, 'admin', '2020-02-11 19:43:48', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('15820137516150', 'avatar_96px_1582601970368.png', '测试附件', NULL, '1229681141187883010', '00c-989-9788901', 'admin', '2020-03-02 11:36:04', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('15825113350511', 'cee88f513709f827c28194b9eef40c64_1582602426246.mp4', '分析', NULL, '1229681141187883010', '01411', 'admin', '2020-03-02 11:36:04', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('15828587345670', '新年可爱男孩女孩挂春联春节卡通形象_1582858778092.jpg', NULL, NULL, '1233225259092582401', NULL, 'admin', '2020-03-02 11:33:25', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('15828587813911', '1@2x_1582858786827.jpg', NULL, NULL, '1233225259092582401', NULL, 'admin', '2020-03-02 11:33:25', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('15832269906510', 'bj1_1_1583227017510.jpg', NULL, NULL, '1234769760193929218', NULL, 'admin', '2020-03-03 17:17:06', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('15832270190821', 'avatar_96px_1583227024643.png', NULL, NULL, '1234769760193929218', NULL, 'admin', '2020-03-03 17:17:06', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1262998637307092994', 'encryption_128px_1265326_easyicon.net_1589957313387.net.ico', '测试图片', NULL, '1262998637281927169', NULL, 'admin', '2020-05-20 14:48:35', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1263757623308390402', '0_1590138270203.webp', '办法', NULL, '1263757623279030274', NULL, 'admin', '2020-05-22 17:04:31', NULL, NULL);
INSERT INTO `qb_swxszbfj` VALUES ('1264018656006623233', 'encryption_564px_1265326_easyicon.net_1590200503245.net.png', '哈哈哈哈', NULL, '1264018655868211201', NULL, 'admin', '2020-05-23 10:21:46', NULL, NULL);

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
