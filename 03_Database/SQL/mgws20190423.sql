/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : mgws

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 23/04/2019 10:42:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_basic_info`;
CREATE TABLE `t_admin_basic_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headPic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emailAddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechatNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin_basic_info
-- ----------------------------
INSERT INTO `t_admin_basic_info` VALUES (1, 'admin', '1', 'Administrator', NULL, '00000000', NULL, NULL, '0', '2016-06-21 09:17:03', 'admin', '2016-06-21 09:17:53', 'admin', 'Basic');

-- ----------------------------
-- Table structure for t_admin_login_his
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_login_his`;
CREATE TABLE `t_admin_login_his`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginTimestamp` timestamp(0) NULL DEFAULT NULL,
  `logoutTimestamp` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_admin_login_info
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_login_info`;
CREATE TABLE `t_admin_login_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginPass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginStatus` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin_login_info
-- ----------------------------
INSERT INTO `t_admin_login_info` VALUES (1, 'admin', '7b87b1563a4be3c05d63b8efdd26bb89', 'e11ea50bcbeb3e9fd380b63fb617ca8e', '0', '0', '2016-06-21 09:16:13', 'admin', '2019-04-22 11:14:08', 'admin', 'Basic');

-- ----------------------------
-- Table structure for t_announcement_info
-- ----------------------------
DROP TABLE IF EXISTS `t_announcement_info`;
CREATE TABLE `t_announcement_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseDate` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_announcement_info
-- ----------------------------
INSERT INTO `t_announcement_info` VALUES (14, 'testtest', '20190423', '1', 'MGWS_201904230952045850.pptx', NULL, NULL, '2019-04-23 09:52:07', NULL, NULL);

-- ----------------------------
-- Table structure for t_asset_info
-- ----------------------------
DROP TABLE IF EXISTS `t_asset_info`;
CREATE TABLE `t_asset_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `partnerNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseDate` timestamp(0) NULL DEFAULT NULL,
  `releaseFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assetName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assetDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `assetPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_asset_info
-- ----------------------------
INSERT INTO `t_asset_info` VALUES (1, 'PA20160620000001', '2016-06-20 00:00:00', '1', '主动管理型产品', '<p>主动管理型产品是子午投资的旗舰产品。以基金专户，契约集合等方式募集客户的资金投资于资本市场，通过Alpha、中短期的统计配对交易及期权多策略叠加，投资于流动性较好的股票和债券等投资标的。该产品具有中低风险、中高收益的特点。在2015年的股灾期间，6月15日到7月6日， 子午管理产品保持无单日回撤的记录。在过去三年中，公司产品实现了稳定回报的年平均回报。<br/>此类产品通常每半年或每年度可申购和赎回。</p>', '', '2016-06-20 00:00:00', 'admin', '2016-08-26 21:02:34', 'admin', 'AssetCartController');
INSERT INTO `t_asset_info` VALUES (2, 'PA20160620000002', '2016-06-20 00:00:00', '1', '量化对冲产品', '子午量化投资团队经过多年的积累，采用多因子及事件驱动模型自下而上进行个股选择，运用行业及个股量化模型，选择在当前市场情景下有大概率领先标的指数的股票，以获取alpha收益；最后利用股指期货进行套期保值，以降低投资组合风险，并对alpha股票组合进行中短期统计配对交易，取得平稳收益曲线。<br>目前子午已有多只量化产品问世，均表现稳定，收益良好。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');
INSERT INTO `t_asset_info` VALUES (3, 'PA20160620000003', '2016-06-20 00:00:00', '1', '股票期权产品', '子午股票期权基金是以场内期权及场外个股期权为主要投资对象的投资基金， 具有较复杂的投资结构， 高杠杆高收益高波动等特点。策略包括：单一期权策略、备兑开仓 （备兑认购期权组合，保护性认沽期权组合）、合成股票套利（通过期权合约合成股票从而与现货套利）、价差组合(认购牛市价差、认购熊市价差、防守型价差 等)、波动率策略 （宽跨式期权组合、蝶式组合等）、及带式期权。<br>此产品通常针对特定客户特定需求而定制交易架构和投资方案。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');
INSERT INTO `t_asset_info` VALUES (4, 'PA20180125121445', '2018-01-25 15:47:32', '2', '投资者公告', '<p><strong><span style=\"color: rgb(0, 0, 0);\"></span>关于私募证券投资基金缴纳增值税的说明<br/>尊敬的投资者：<br/>根据《关于明确金融、房地产开发、教育辅助服务等增值税政策的通知》（财税【2016】140号）、《关于资管产品增值税政策有关问题的通知》（财税【2017】2号）、《关于资管产品增值税有关问题的通知》（财税【2017】56号）及《中华人民共和国证券投资基金法》等规定，自2018年1月1日起，我公司作为私募基金管理人，就运营私募基金证券投资基金过程中发生的增值税应税行为，应按照3%的征收率缴纳增值税。<br/>本公司将对旗下存续及新增产品发生的增值税应税行为按照相关规定以及税务机关的要求计算和缴纳增值说税款及附加税费。前述税款及附加税费是产品管理、运作和处分过程中发生的，由基金份额持有人承担，从产品资产中提取缴纳，可能会使相关产品净值或实际收益降低。<br/>敬请广大投资者悉知！<br/>上海子午投资管理有限公司</strong></p>', '', '2018-01-25 15:47:32', 'admin', '2018-02-26 15:24:01', 'admin', 'AssetCartController');

-- ----------------------------
-- Table structure for t_course_info
-- ----------------------------
DROP TABLE IF EXISTS `t_course_info`;
CREATE TABLE `t_course_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `courseNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseDate` timestamp(0) NULL DEFAULT NULL,
  `releaseFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courseName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `coursePic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_info
-- ----------------------------
INSERT INTO `t_course_info` VALUES (1, 'CO20160620000001', '2016-07-19 20:41:57', '1', '实验室简介', '<p>学员进入公司后首先进行初级课程培训，学习宏观经济与国际政治层面的对金融市场即时影响的深层分析；影响市场的经济指标，行业概念分析；以及技术方面的专业技能。全面了解市场运作理念 ，掌握金融产品的分析方法。熟悉公司交易平台，研究架构，以及风控制度，达到初级交易员水平。</p>', 'mgws_1_1.jpg,mgws_1_2.jpg,mgws_1_3.jpg', '2016-06-20 00:00:00', 'admin', '2016-09-01 22:19:22', 'admin', 'CourseController');
INSERT INTO `t_course_info` VALUES (2, 'CO20160620000002', '2016-07-19 20:41:57', '1', '初级课程培训', '<p>初级课程考核通过后进入中级课程培训，帮助学员树立正确的交易理念，全面认知并建立初步的交易系统，学习先进的交易经验与交易技巧最终实现初步的稳定获利；有效的运用交易工具来完成交易，建立核心的个人交易系统和操作理念，养成良好的心态，学会控制风险，培养良好的交易习惯和心理，全面了解市场投资技巧。</p>', 'mgws_2_1.jpg,mgws_2_2.jpg,mgws_2_3.jpg', '2016-06-20 00:00:00', 'admin', '2016-09-01 22:21:35', 'admin', 'CourseController');
INSERT INTO `t_course_info` VALUES (3, 'CO20160620000003', '2016-07-19 20:42:55', '1', '中级课程培训', '<p>中级课程考核通过后学员进入实盘交易。让学员更好地实现对资金账户的控管，培养良好的风险控制能力；利用技术与基础分析，在交易中获得更多的利润，并进一步完善个人交易系统，使利润最大化。有效的规避交易中面临的问题，熟悉运用各种技术工具，优化资金管理配置，从而成为真正的职业化交易员。</p>', 'mgws_3_1.jpg,mgws_3_2.jpg,mgws_3_3.jpg', '2016-06-20 00:00:00', 'admin', '2016-09-01 22:24:01', 'admin', 'CourseController');
INSERT INTO `t_course_info` VALUES (4, 'CO20160620000004', '2016-07-19 20:41:57', '1', '实盘交易', '<p>为期6个月实习期满之后，公司将给予成绩优异者全职工作合同，提供领先于全国金融市场的薪资待遇与奖励机制。同时最优秀的两名员工，NYSE Euronext将提供为期一周的伦敦实习机会，深入了解最前沿的环球金融市场。</p>', 'mgws_4_1.jpg,mgws_4_2.jpg,mgws_4_3.jpg', '2016-06-20 00:00:00', 'admin', '2016-09-01 22:25:07', 'admin', 'CourseController');

-- ----------------------------
-- Table structure for t_customer_login_his
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_login_his`;
CREATE TABLE `t_customer_login_his`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginTimestamp` timestamp(0) NULL DEFAULT NULL,
  `logoutTimestamp` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_customer_login_info
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_login_info`;
CREATE TABLE `t_customer_login_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginPass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `division` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginStatus` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `canLogin` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_login_info
-- ----------------------------
INSERT INTO `t_customer_login_info` VALUES (1, 'CS20171212633216', '13072568986', 'f48ff1dd623108d6b3020dfef6274809', 'a15e4dda65fb1dab256285bee66c82be', '0', '1', '0', '0', '2017-12-12 10:49:48', NULL, '2017-12-12 10:49:48', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (2, 'CS20171223925914', '17602186667', '28563cc063366d89a75a4c066f43ec77', 'd852b9318e6dc2234296b2b2b8e48081', '0', '1', '0', '0', '2017-12-23 15:23:05', NULL, '2017-12-23 15:23:04', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (3, 'CS20171224675999', '13770681350', 'fdc3fea674bb9bc779f6fcb996c8cfe9', 'ac77d76e666d7ee192e7370e7249c378', '0', '1', '0', '0', '2017-12-24 20:51:32', NULL, '2017-12-24 20:51:31', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (4, 'CS20171229330785', '13588290847', '11d4a02651ecb0164e43ad29ce3dde11', 'c43e031336684849ef65bbde7fba06bb', '0', '1', '0', '0', '2017-12-29 10:25:31', NULL, '2017-12-29 10:25:31', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (5, 'CS20180104570396', 'tonglei@wkzq.com.cn', '9fc198c7c110693595bd28a4250030ef', '27e32d8207a9aac96d5c9d9bd9e9026d', '0', '1', '0', '1', '2018-01-04 13:54:13', NULL, '2018-01-04 13:54:12', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (6, 'CS20180107112190', '18288668570', 'c64018dc67ba095bf52b1005a6316db1', '56048c017e825dd6a5e157a0a5b408ce', '0', '1', '0', '0', '2018-01-07 15:18:45', NULL, '2018-01-07 15:18:44', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (7, 'CS20180116544917', 'zevink', 'ada8eda63839aba7942ed77ff17f18e4', '70e2ec1ddf6b3843dcd37525211363c9', '0', '1', '0', '0', '2018-01-16 09:45:07', NULL, '2018-01-16 09:45:07', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (8, 'CS20180116103728', 'zevinky', '4eacc3f52e378ed87fbe1ccd0ef78807', '311f63f64dbf7a3ca65164fa87b97ed5', '0', '1', '0', '1', '2018-01-16 09:49:59', NULL, '2018-01-16 09:49:58', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (9, 'CS20180117228707', 'gshking', '621a0b1c642dcdffba488918d427d732', 'c049dcbfa0428000c812128bd3872463', '0', '1', '0', '0', '2018-01-17 19:00:59', NULL, '2018-01-17 19:00:58', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (10, 'CS20180118598722', '15926411590', '779f8abe4e14cf4959cf11d6bfa26c4c', 'edfe6f1771990d85bfe9a159a0a94fb9', '0', '1', '0', '0', '2018-01-18 09:57:58', NULL, '2018-01-18 09:57:58', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (11, 'CS20180119307082', 'yiren88570', '687de038797d53b997b4ada39d71ee2d', '7ffa7f4a33181cee82e52c7405c603bd', '0', '1', '0', '0', '2018-01-19 09:44:04', NULL, '2018-01-19 09:44:04', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (12, 'CS20180120100757', '17712880741', 'b619ab4fc0bcb492d436fe9014b3caa9', '33b6117e372627442e8b80433eef5c42', '0', '1', '0', '0', '2018-01-20 10:55:40', NULL, '2018-01-20 10:55:40', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (13, 'CS20180204338594', '18616366063', 'cdac4dc0db3ee5fab4dba96e80c6d166', '286af590a03adc13d9c2b9922a712a6e', '0', '1', '0', '0', '2018-02-04 18:22:09', NULL, '2018-02-04 18:22:09', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (14, 'CS20180207878267', '18616564335', '6da0fb07acf2aa8c35f8d7f808e64d5a', 'cac3764f3a1b02aa739e6a677edf0302', '0', '1', '0', '0', '2018-02-07 13:06:11', NULL, '2018-02-07 13:06:11', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (15, 'CS20180207678397', '17712880741', '387ca0a03f9060c2e8aa85652671d89c', 'f8ca4891d823664f271bbb503b444589', '0', '0', '0', '0', '2018-02-07 18:07:40', NULL, '2018-02-07 18:07:40', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (16, 'CS20180209913123', '13916427906', '85966fdfa8638c8212c9792307ff443d', 'f1d05bb620b084d43ceb19c78d95109b', '0', '1', '0', '0', '2018-02-09 09:50:04', NULL, '2018-02-09 09:50:03', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (17, 'CS20180209568261', '13916427906', '3da428970363fb8465ac7d14dcde166f', 'eff29a9137d5f6dd12f69785542c3550', '0', '0', '0', '0', '2018-02-09 09:51:55', NULL, '2018-02-09 09:51:55', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (18, 'CS20180223610481', '15601826897', '834647243874cf3619da1ed9c1ee53a3', '464f478e8246418f15716bf2ada98019', '0', '1', '0', '0', '2018-02-23 17:09:48', NULL, '2018-02-23 17:09:48', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (19, 'CS20180223413836', 'linliuan', '4b33a1950140da3345a7e0b27443332f', 'a16ca9cdbdc04156e5e03a3ae6c72b54', '0', '1', '0', '0', '2018-02-23 20:10:05', NULL, '2018-02-23 20:10:05', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (20, 'CS20180312497944', 'xuyd@iwolf.tech', '6405d8c5e5188f73cccc085eadeda31d', 'd74034301d80400bd303b1b25bb8ba02', '0', '1', '0', '1', '2018-03-12 21:20:51', NULL, '2018-03-12 21:20:51', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (21, 'CS20180404453791', '15862690809', 'c0b93d85c3af3ef5ba3ee786975c29c5', '9476ba3840a314cf4f3bf5c7d6948e47', '0', '1', '0', '0', '2018-04-04 16:58:46', NULL, '2018-04-04 16:58:46', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (22, 'CS20180508796036', '13681724696', 'b4c5df6b7dcbe4167f59c2747943dc04', '3648c17ebc8e7e994cf5e58df5c6709c', '0', '1', '0', '0', '2018-05-08 19:06:11', NULL, '2018-05-08 19:06:10', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (23, 'CS20180523384057', '13539542577', 'd86b7155134511f06914fb291ee4b49f', 'a3b6e89224b73402694f3a06357d1cae', '0', '1', '0', '0', '2018-05-23 15:11:08', NULL, '2018-05-23 15:11:08', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (24, 'CS20180605898726', '15801979193', 'cc4ab01b98420440e75d508e4d87f770', '4c24e088b7f174af859797814ff1a1a9', '0', '1', '0', '0', '2018-06-05 10:54:09', NULL, '2018-06-05 10:54:08', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (25, 'CS20180615178954', '13914026659', '2571baa3c37968558736bb75be26df37', '330f17b6b90aa2ec7ac2d3865e633137', '0', '1', '0', '0', '2018-06-15 16:47:07', NULL, '2018-06-15 16:47:06', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (26, 'CS20180812505175', '13059087167', '7986e1a5c080a738168e07618ec44ab1', '8d65185270a736a2d3a1cbb72279ebe8', '0', '1', '0', '0', '2018-08-12 22:08:57', NULL, '2018-08-12 22:08:56', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (27, 'CS20180815829263', 'dragon', '7087c5bcaf4521a634dd949265546d00', '5a752ca0063a19581bdbc45ee08e6fba', '0', '1', '0', '0', '2018-08-15 10:00:17', NULL, '2018-08-15 10:00:17', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (28, 'CS20180823783235', 'qqhcx@163.com', '3ed944c6f4f4958edaf9b26efa5f6e6d', '05587c7aa6b690cd8aa7e81988ba2c9c', '0', '1', '0', '1', '2018-08-23 15:20:39', NULL, '2018-08-23 15:20:39', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (29, 'CS20181019034156', '13916427906', '653b8ab4b8c9081adc550596264dcbe9', '2618fdb5f6305f1b05ce93e7dc500ac1', '0', '0', '0', '0', '2018-10-19 13:28:53', NULL, '2018-10-19 13:28:53', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (30, 'CS20181019231110', '13916427906', '7e13572bb6d18da074d9f16d8edced8a', '31d2c59e99c61d7f539ba18829c267c7', '0', '0', '0', '0', '2018-10-19 13:29:34', NULL, '2018-10-19 13:29:34', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (31, 'CS20181019514977', 'yuangh@go-goal.com', '272a111fab5f0b1c219e038f7e240efb', '42b411e35dd9acc09968a15ee05e4423', '0', '1', '0', '1', '2018-10-19 13:29:55', NULL, '2018-10-19 13:29:54', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (32, 'CS20181031057806', '15103724006', '024fd5467cbcaf5d6ec3e90481d82b59', '1c803cdeed25543f1388d3ad4d6f532a', '0', '1', '0', '0', '2018-10-31 14:46:59', NULL, '2018-10-31 14:46:58', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (33, 'CS20181106229607', '18801453357', '9352005691abb42b65da7a3c2c56d972', '4e75599b3bce6a5226c87b07bf84ecf9', '0', '1', '0', '0', '2018-11-06 14:47:24', NULL, '2018-11-06 14:47:24', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (34, 'CS20181211215073', '18986186942', '1ae2b6ea1c3efd6c4f90ed8a64f18b22', '76cc86f9fdded2d44d064ecb1758556e', '0', '1', '0', '1', '2018-12-11 19:50:11', NULL, '2018-12-11 19:50:11', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (35, 'CS20190127070282', '13989477070', '728eb608fd3f6ba57455ff5a98e3766d', '512f3289ee575213e1402572dfea16c1', '0', '1', '0', '0', '2019-01-27 12:56:10', NULL, '2019-01-27 12:56:10', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (36, 'CS20190222043324', '18616783605', '0a77c3d27e389c5e6a28ec4f10df9ac1', '555bbbec9431f3933b4d379a6c9c1892', '0', '1', '0', '0', '2019-02-22 11:38:15', NULL, '2019-02-22 11:38:15', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (37, 'CS20190308011206', '18018538516', 'f6d8a010ec2b0a3ef58dbd8e572b38d0', '86962edc8e5642b32652879da1aaffa3', '0', '1', '0', '0', '2019-03-08 23:07:22', NULL, '2019-03-08 23:07:22', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (38, 'CS20190408391424', '15838569960', 'd49a3de3deb9d84a97f2c17fd0094446', '6bfd3711e944dded6a6017bcf2a1cc99', '0', '1', '0', '0', '2019-04-08 11:32:28', NULL, '2019-04-08 11:32:27', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (39, 'CS20190408746063', '15801402643', '8e0f3631dfd1d1dee311420539f8c768', '2b425a74e67485f9b8f0f5be47dddde5', '0', '1', '0', '0', '2019-04-08 15:23:58', NULL, '2019-04-08 15:23:58', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (40, 'CS20190409941492', '17612512309', 'ac9af9d0142138c5868337d7e9385895', '8a714468428850135b686227a90b5d63', '0', '1', '0', '0', '2019-04-09 16:30:03', NULL, '2019-04-09 16:30:03', NULL, NULL);
INSERT INTO `t_customer_login_info` VALUES (41, 'CS20190418736817', '18511751412', '0e2ce852d9197a29afd029c16f980126', '450b60e9c8af001bde7228a32fe73146', '0', '1', '0', '0', '2019-04-18 15:12:11', NULL, '2019-04-18 15:12:11', NULL, NULL);

-- ----------------------------
-- Table structure for t_customer_security_info
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_security_info`;
CREATE TABLE `t_customer_security_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emailAddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechatNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechatOpenId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_enterprise_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `t_enterprise_basic_info`;
CREATE TABLE `t_enterprise_basic_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cnName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taxNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passportNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `occupation` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_individual_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `t_individual_basic_info`;
CREATE TABLE `t_individual_basic_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cnSurname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cnGivenname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enFirstName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enMiddleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enLastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idCardNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passportNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headPic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marriage` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `occupation` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_individual_basic_info
-- ----------------------------
INSERT INTO `t_individual_basic_info` VALUES (1, 'CS20171212633216', '徐', '寒', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2017-12-12 10:50:10', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (2, 'CS20171223925914', '林', '学晨', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2017-12-23 15:23:17', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (3, 'CS20171229330785', '魏', '国旗', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2017-12-29 10:25:58', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (4, 'CS20180104570396', '仝', '雷', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-01-04 13:54:37', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (5, 'CS20180107112190', '谢', 'cendy', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-01-07 15:19:14', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (6, 'CS20180118598722', '彭', '珊', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-01-18 09:58:48', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (7, 'CS20180120100757', '郑', '程程', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-01-20 10:56:49', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (8, 'CS20180207878267', '黄', '网银', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-02-07 13:06:33', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (9, 'CS20180209913123', '郑', '益明', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-02-09 09:50:19', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (10, 'CS20180223413836', '林', '柳安', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-02-23 20:10:24', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (11, 'CS20180223610481', '马', '骁杰', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-02-24 17:18:01', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (12, 'CS20180312497944', '徐', '元东', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-03-12 21:21:21', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (13, 'CS20180404453791', '周', '珺怡', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-04-04 16:59:06', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (14, 'CS20180508796036', '吕', '东东', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-05-08 19:06:42', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (15, 'CS20180523384057', '陈', '念清', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-05-23 15:11:51', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (16, 'CS20180605898726', '许', '秀英', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-06-05 10:54:22', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (17, 'CS20180615178954', '黄', '辰哲', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-06-15 16:47:20', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (18, 'CS20180815829263', '刘', '庆', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-08-15 10:00:36', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (19, 'CS20181019514977', '郑', '益明', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-10-19 13:30:15', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (20, 'CS20181031057806', '刘', '志鹏', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-10-31 14:47:28', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (21, 'CS20181106229607', '李', '胜利', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-11-06 14:47:41', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (22, 'CS20181211215073', '张', '朝荣', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2018-12-11 19:50:30', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (23, 'CS20190127070282', '任', '珺', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-01-27 12:56:54', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (24, 'CS20190308011206', '尹', '俊', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-08 23:09:30', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (25, 'CS20190408391424', '马', '瑞婷', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-04-08 11:33:15', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (26, 'CS20190408746063', '周', '磊蕾', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-04-08 15:36:40', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (27, 'CS20190409941492', '吴', '万捷', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-04-09 16:30:54', NULL, NULL);
INSERT INTO `t_individual_basic_info` VALUES (28, 'CS20190418736817', '吴文暐', '吴文暐', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-04-18 15:13:53', NULL, NULL);

-- ----------------------------
-- Table structure for t_investment_master
-- ----------------------------
DROP TABLE IF EXISTS `t_investment_master`;
CREATE TABLE `t_investment_master`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_investment_value
-- ----------------------------
DROP TABLE IF EXISTS `t_investment_value`;
CREATE TABLE `t_investment_value`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `productId` bigint(12) NOT NULL,
  `date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `netValue` decimal(12, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_investor_edu
-- ----------------------------
DROP TABLE IF EXISTS `t_investor_edu`;
CREATE TABLE `t_investor_edu`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseDate` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_investor_edu
-- ----------------------------
INSERT INTO `t_investor_edu` VALUES (3, '投资者教育路线图', '20180925', '1', 'MGWS_201809251045260680.pdf', NULL, NULL, '2018-09-25 10:46:08', NULL, NULL);
INSERT INTO `t_investor_edu` VALUES (4, '理性投资 从我做起', '20180925', '1', 'MGWS_201809251046254405.pdf', NULL, NULL, '2018-09-25 10:46:34', NULL, NULL);
INSERT INTO `t_investor_edu` VALUES (5, '私募基金投资常见问题', '20180925', '1', 'MGWS_201809251046503461.pdf', NULL, NULL, '2018-09-25 10:46:58', NULL, NULL);
INSERT INTO `t_investor_edu` VALUES (6, '私募基金经典案例', '20180925', '1', 'MGWS_201809251047130673.pdf', NULL, NULL, '2018-09-25 10:47:20', NULL, NULL);
INSERT INTO `t_investor_edu` VALUES (7, '私募基金投资者手册', '20180925', '1', 'MGWS_201809251047302271.pdf', NULL, NULL, '2018-09-25 10:47:44', NULL, NULL);

-- ----------------------------
-- Table structure for t_investor_sign
-- ----------------------------
DROP TABLE IF EXISTS `t_investor_sign`;
CREATE TABLE `t_investor_sign`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseDate` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_no_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_no_customer`;
CREATE TABLE `t_no_customer`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_open_info
-- ----------------------------
DROP TABLE IF EXISTS `t_open_info`;
CREATE TABLE `t_open_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseDate` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_open_info
-- ----------------------------
INSERT INTO `t_open_info` VALUES (6, '兴证子午1号基金增加投资经理的通知', '20180816', '1', 'MGWS_201802261520481776.pdf', NULL, NULL, '2019-04-22 10:24:28', NULL, NULL);
INSERT INTO `t_open_info` VALUES (7, '子嘉华指数 增加投资经理的通知', '20180615', '1', 'MGWS_201802261520165237.pdf', NULL, NULL, '2019-04-22 10:24:29', NULL, NULL);
INSERT INTO `t_open_info` VALUES (8, '子午安心九号增加投资经理的通知', '20180615', '1', 'MGWS_201802261521058967.pdf', NULL, NULL, '2019-04-22 10:24:30', NULL, NULL);
INSERT INTO `t_open_info` VALUES (9, '子午达芬奇一号增加投资经理的通知', '20180615', '1', 'MGWS_201802261521213219.pdf', NULL, NULL, '2019-04-22 10:24:30', NULL, NULL);
INSERT INTO `t_open_info` VALUES (10, '子午米开朗琪罗一号一号增加投资经理的通知', '20180615', '1', 'MGWS_201802261521431974.pdf', NULL, NULL, '2019-04-22 10:24:31', NULL, NULL);
INSERT INTO `t_open_info` VALUES (11, '子午帕累托一号增加投资经理的通知', '20180615', '1', 'MGWS_201802261521575900.pdf', NULL, NULL, '2019-04-22 10:24:32', NULL, NULL);
INSERT INTO `t_open_info` VALUES (12, '子午稳盈一号增加投资经理的通知', '20180615', '1', 'MGWS_201802261522189031.pdf', NULL, NULL, '2019-04-22 10:24:33', NULL, NULL);
INSERT INTO `t_open_info` VALUES (13, '子午尊享睿进增加投资经理的通知', '20180615', '2', 'MGWS_201802261522321291.pdf', NULL, NULL, '2018-06-15 10:40:35', NULL, NULL);

-- ----------------------------
-- Table structure for t_purchase_record
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_record`;
CREATE TABLE `t_purchase_record`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productId` bigint(12) NOT NULL,
  `dateFrom` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dateTo` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_recruitment_info
-- ----------------------------
DROP TABLE IF EXISTS `t_recruitment_info`;
CREATE TABLE `t_recruitment_info`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `recruitNo` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releaseDate` timestamp(0) NULL DEFAULT NULL,
  `releaseFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recruitJobTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recruitNumber` int(3) NULL DEFAULT NULL,
  `recruitLocale` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recruitObject` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recruitDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sortOrder` int(8) NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_recruitment_info
-- ----------------------------
INSERT INTO `t_recruitment_info` VALUES (1, 'RE20160620000001', '2016-06-21 10:45:13', '1', '深度学习工程师/科学家', 8, '上海', '数学专业或者深度学习专业，金融模型研究和开发工程师。', '<p>									</p><p>&nbsp;</p><p>&nbsp;</p><p><span style=\"font-family: &quot;Helvetica Neue&quot;; font-size: 14px;\">数学专业或者深度学习专业，金融模型研究和开发。</span><span style=\"font-family: 宋体, arial, Verdana, sans-serif; font-size: 14px;\">做过图像识别，语音识别或者自动驾驶的，在天池比赛或者di-tech或者任何国际大数据比赛拿过名次的优先。</span></p><p><span style=\"font-family: 宋体; font-size: 16px;\">The&nbsp;deep&nbsp;learning&nbsp;expert&nbsp;will&nbsp;work&nbsp;in&nbsp;a&nbsp;small&nbsp;and&nbsp;dynamic&nbsp;team&nbsp;to&nbsp;design&nbsp;and&nbsp;implement&nbsp;state&nbsp;of&nbsp;the&nbsp;art<br/>neural&nbsp;network&nbsp;algorithms&nbsp;for&nbsp;automative&nbsp;trading.<br/>Key&nbsp;Qualifications<br/>•&nbsp;Understanding&nbsp;of&nbsp;state&nbsp;of&nbsp;the&nbsp;art&nbsp;deep&nbsp;learning&nbsp;techniques<br/>•&nbsp;Strong&nbsp;understanding&nbsp;of&nbsp;CNNs,&nbsp;recurrent&nbsp;nets,&nbsp;supervised&nbsp;and&nbsp;unsupervised&nbsp;learning,&nbsp;and<br/>optimization&nbsp;techniques<br/>•&nbsp;Experience&nbsp;working&nbsp;with&nbsp;one&nbsp;or&nbsp;more&nbsp;deep&nbsp;learning&nbsp;frameworks&nbsp;such&nbsp;as&nbsp;Caffe,&nbsp;Theano,&nbsp;Torch,<br/>TensorFlow,&nbsp;MXNet<br/>•&nbsp;Strong&nbsp;desire&nbsp;and&nbsp;drive&nbsp;to&nbsp;build&nbsp;robust&nbsp;and&nbsp;efficient&nbsp;solution&nbsp;in&nbsp;consumer&nbsp;products&nbsp;using&nbsp;deep<br/>learning&nbsp;technology<br/>•&nbsp;Solid&nbsp;Python&nbsp;and&nbsp;C/C++&nbsp;development&nbsp;skills<br/>•&nbsp;Team&nbsp;player<br/>•&nbsp;Self&nbsp;motivated<br/>•&nbsp;Excellent&nbsp;problem&nbsp;solving&nbsp;skills<br/>•&nbsp;Excellent&nbsp;communication&nbsp;skills<br/>•&nbsp;Can&nbsp;work&nbsp;under&nbsp;stress&nbsp;and&nbsp;uncertainty<br/>•&nbsp;Fast&nbsp;learner<br/>MS/PhD&nbsp;in&nbsp;Machine&nbsp;Learning,&nbsp;Deep&nbsp;Learning,&nbsp;Computer&nbsp;Vision&nbsp;or&nbsp;similar<br/>Alternatively,&nbsp;a&nbsp;comparable&nbsp;industry&nbsp;career,&nbsp;with&nbsp;significant&nbsp;experience&nbsp;in&nbsp;state-of-the-art&nbsp;Deep&nbsp;Learning,<br/>Computer&nbsp;Vision,&nbsp;Machine&nbsp;Learning&nbsp;and&nbsp;Pattern&nbsp;Recognition&nbsp;fields<br/>Additional&nbsp;Requirements<br/>Solid&nbsp;fundamental&nbsp;computer&nbsp;vision&nbsp;methods&nbsp;and&nbsp;concepts&nbsp;(preferred)<br/>Experience&nbsp;shipping&nbsp;products,&nbsp;especially&nbsp;ones&nbsp;incorporating&nbsp;machine&nbsp;learning&nbsp;(preferred)<br/>Experience/knowledge&nbsp;of&nbsp;GPU&nbsp;computing/CUDA&nbsp;kernels&nbsp;(preferred)<br/>Experience/knowledge&nbsp;of&nbsp;software&nbsp;development&nbsp;on&nbsp;embedded&nbsp;platforms&nbsp;(preferred)</span></p><p style=\"font: 14px/normal Calibri; text-align: justify; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; margin-top: 0px; margin-bottom: 0px; margin-left: 0px; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: Calibri;\">&nbsp;</span></p><p><span style=\"font-family: 宋体, arial, Verdana, sans-serif; font-size: 14px;\"><span style=\"font-family: 宋体; font-size: 16px;\"></span></span></p><p><br/></p><p>&nbsp;</p><p>&nbsp;</p><p>\r\n								</p>', 10, '2016-06-20 00:00:00', 'admin', '2016-08-27 11:35:22', 'admin', 'RecruitmentController');

-- ----------------------------
-- Table structure for t_sys_code
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_code`;
CREATE TABLE `t_sys_code`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `codeId` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codeDetailId` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codeDetailName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_config`;
CREATE TABLE `t_sys_config`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `advertisingPics` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module`;
CREATE TABLE `t_sys_module`  (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `moduleNo` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fatherModuleNo` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moduleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleDesc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_resource`;
CREATE TABLE `t_sys_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resourceType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resourceUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentResourceId` bigint(20) NULL DEFAULT NULL,
  `parentResourceIds` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resourcePermission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resourceAvailable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleDesc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resourceIds` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openFlg` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTimestamp` timestamp(0) NULL DEFAULT NULL,
  `addUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updTimestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updUserKey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updPgmId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES (1, 'admin', NULL, NULL, '1', '2016-06-21 09:18:25', 'admin', '2016-06-21 09:18:36', 'admin', 'Basic');

SET FOREIGN_KEY_CHECKS = 1;
