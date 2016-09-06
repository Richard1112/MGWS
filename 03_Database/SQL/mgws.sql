/*
Navicat MySQL Data Transfer

Source Server         : localMysql
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : mgws

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-06-21 10:49:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_admin_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_basic_info`;
CREATE TABLE `t_admin_basic_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `roleId` varchar(100) NOT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `headPic` varchar(200) DEFAULT NULL,
  `telNo` varchar(20) NOT NULL,
  `emailAddr` varchar(255) DEFAULT NULL,
  `wechatNo` varchar(50) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_basic_info
-- ----------------------------
INSERT INTO `t_admin_basic_info` VALUES ('1', 'admin', '1', 'Administrator', null, '00000000', null, null, '0', '2016-06-21 09:17:03', 'admin', '2016-06-21 09:17:53', 'admin', 'Basic');

-- ----------------------------
-- Table structure for `t_admin_login_his`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_login_his`;
CREATE TABLE `t_admin_login_his` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `loginTimestamp` timestamp NULL DEFAULT NULL,
  `logoutTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_login_his
-- ----------------------------

-- ----------------------------
-- Table structure for `t_admin_login_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_login_info`;
CREATE TABLE `t_admin_login_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `loginPass` varchar(255) NOT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `loginStatus` char(1) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_login_info
-- ----------------------------
INSERT INTO `t_admin_login_info` VALUES ('1', 'admin', '13b99ae06765b31ec9b09beae190e7ff', '8d78869f470951332959580424d4bf4f', '0', '0', '2016-06-21 09:16:13', 'admin', '2016-06-21 09:51:43', 'admin', 'Basic');

-- ----------------------------
-- Table structure for `t_asset_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_asset_info`;
CREATE TABLE `t_asset_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `partnerNo` varchar(16) NOT NULL,
  `releaseDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `releaseFlg` char(1) NOT NULL,
  `assetName` varchar(100) DEFAULT NULL,
  `assetDetails` longtext,
  `assetPic` varchar(255) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_asset_info
-- ----------------------------
INSERT INTO `t_asset_info` VALUES ('1', 'PA20160620000001', '2016-06-20 00:00:00', '1', '主动管理型产品', '主动管理型产品是鼎锋投资的旗舰产品。以基金专户，契约集合等方式募集客户的资金投资于资本市场，通过Alpha、中短期的统计配对交易及期权多策略叠加，投资于流动性较好的股票和债券等投资标的。该产品具有中低风险、中高收益的特点。在2015年的股灾期间，6月15日到7月6日， 子午管理产品保持无单日回撤的记录。在过去三年中，公司产品实现了15%-25%的年平均回报。<br>此类产品通常每半年或每年度可申购和赎回。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');
INSERT INTO `t_asset_info` VALUES ('2', 'PA20160620000002', '2016-06-20 00:00:00', '1', '量化对冲产品', '子午量化投资团队经过多年的积累，采用多因子及事件驱动模型自下而上进行个股选择，运用行业及个股量化模型，选择在当前市场情景下有大概率领先标的指数的股票，以获取alpha收益；最后利用股指期货进行套期保值，以降低投资组合风险，并对alpha股票组合进行中短期统计配对交易，取得平稳收益曲线。<br>目前子午已有多只量化产品问世，均表现稳定，收益良好。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');
INSERT INTO `t_asset_info` VALUES ('3', 'PA20160620000003', '2016-06-20 00:00:00', '1', '股票期权产品', '子午股票期权基金是以场内期权及场外个股期权为主要投资对象的投资基金， 具有较复杂的投资结构， 高杠杆高收益高波动等特点。策略包括：单一期权策略、备兑开仓 （备兑认购期权组合，保护性认沽期权组合）、合成股票套利（通过期权合约合成股票从而与现货套利）、价差组合(认购牛市价差、认购熊市价差、防守型价差 等)、波动率策略 （宽跨式期权组合、蝶式组合等）、及带式期权。<br>此产品通常针对特定客户特定需求而定制交易架构和投资方案。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');

-- ----------------------------
-- Table structure for `t_course_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_course_info`;
CREATE TABLE `t_course_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `courseNo` varchar(16) NOT NULL,
  `releaseDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `releaseFlg` char(1) NOT NULL,
  `courseName` varchar(100) DEFAULT NULL,
  `courseDetails` longtext,
  `coursePic` varchar(255) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_info
-- ----------------------------
INSERT INTO `t_course_info` VALUES ('1', 'CO20160620000001', '2016-06-20 00:00:00', '1', '实验室简介', '学员进入公司后首先进行初级课程培训，学习到宏观经济以及国际政治层面的对金融市场及时影响的深层分析，影响市场的经济指标，行业，概念等分析。还有技术方面的专业技能。全面了解市场运作理念 ，掌握金融产品的分析方法。熟悉公司交易平台，研究架构，以及风控制度，达到初级交易员水平。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');
INSERT INTO `t_course_info` VALUES ('2', 'CO20160620000002', '2016-06-20 00:00:00', '1', '初级课程培训', '初级课程考核通过后进入中级课程培训，帮助学员树立正确的交易理念，认知交易系统，建立初步的交易系统，学习先进的历史经验及交易技巧最终实现初步的稳定获利。有效的运用交易工具来完成交易，建立核心的个人交易系统，和操作理念，养成良好的心态，学会控制风险，培养良好的交易习惯和心里，全面了解市场投资技巧。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');
INSERT INTO `t_course_info` VALUES ('3', 'CO20160620000003', '2016-06-20 00:00:00', '1', '中级课程培训', '中级课程考核通过后学员进入实盘交易。让学员更好地对资金账户控管，培养良好的风险控制，利用技术和基础分析，在交易中获得更多的利润，将利润最大化，进一步完善个人交易系统。有效的规避交易中面临的问题，达到了解各种技术工具与资金管理优化配置从而成为真正的职业化交易员。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');
INSERT INTO `t_course_info` VALUES ('4', 'CO20160620000004', '2016-06-20 00:00:00', '1', '实盘交易', '为期6个月实习期满之后，公司给予成绩优异者，全职工作合同，提供领先于全国金融市场的薪资待遇和奖励机制。同时最优秀的两名员工，NYSE Euronext将提供为期一周的伦敦实习机会，深入了解环球金融市场的最前沿。', '', '2016-06-20 00:00:00', 'admin', '2016-06-20 00:00:00', 'admin', 'basic');

-- ----------------------------
-- Table structure for `t_recruitment_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruitment_info`;
CREATE TABLE `t_recruitment_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `recruitNo` varchar(16) NOT NULL,
  `releaseDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `releaseFlg` char(1) NOT NULL,
  `recruitJobTitle` varchar(100) DEFAULT NULL,
  `recruitNumber` int(3) DEFAULT NULL,
  `recruitLocale` char(100) DEFAULT NULL,
  `recruitObject` varchar(500) DEFAULT NULL,
  `recruitDetails` longtext,
  `sortOrder` int(8) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recruitment_info
-- ----------------------------
INSERT INTO `t_recruitment_info` VALUES ('1', 'RE20160620000001', '2016-06-21 10:45:13', '1', '环球市场交易员', '8', '上海', '2013/2014应届大学毕业生', '<p>\r\n									无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。</p>', '10', '2016-06-20 00:00:00', 'admin', '2016-06-21 10:45:13', 'admin', 'RecruitmentController');

-- ----------------------------
-- Table structure for `t_sys_code`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_code`;
CREATE TABLE `t_sys_code` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `codeId` varchar(6) NOT NULL,
  `codeDetailId` varchar(6) NOT NULL,
  `codeName` varchar(100) NOT NULL,
  `codeDetailName` varchar(100) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_code
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_config`;
CREATE TABLE `t_sys_config` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `advertisingPics` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module`;
CREATE TABLE `t_sys_module` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `moduleNo` varchar(8) NOT NULL,
  `fatherModuleNo` varchar(8) DEFAULT NULL,
  `moduleName` varchar(50) NOT NULL,
  `moduleDesc` varchar(100) DEFAULT NULL,
  `openFlg` char(1) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_resource`;
CREATE TABLE `t_sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(100) NOT NULL,
  `resourceType` varchar(50) DEFAULT NULL,
  `resourceUrl` varchar(500) DEFAULT NULL,
  `parentResourceId` bigint(20) DEFAULT NULL,
  `parentResourceIds` varchar(200) DEFAULT NULL,
  `resourcePermission` varchar(100) DEFAULT NULL,
  `resourceAvailable` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `roleDesc` varchar(100) DEFAULT NULL,
  `resourceIds` varchar(1000) DEFAULT NULL,
  `openFlg` char(1) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', 'admin', null, null, '1', '2016-06-21 09:18:25', 'admin', '2016-06-21 09:18:36', 'admin', 'Basic');
