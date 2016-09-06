-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: mgws
-- ------------------------------------------------------
-- Server version	5.6.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_admin_basic_info`
--

DROP TABLE IF EXISTS `t_admin_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin_basic_info`
--

LOCK TABLES `t_admin_basic_info` WRITE;
/*!40000 ALTER TABLE `t_admin_basic_info` DISABLE KEYS */;
INSERT INTO `t_admin_basic_info` VALUES (1,'admin','1','Administrator',NULL,'00000000',NULL,NULL,'0','2016-06-21 01:17:03','admin','2016-06-21 01:17:53','admin','Basic');
/*!40000 ALTER TABLE `t_admin_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_admin_login_his`
--

DROP TABLE IF EXISTS `t_admin_login_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_admin_login_his` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `loginTimestamp` timestamp NULL DEFAULT NULL,
  `logoutTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin_login_his`
--

LOCK TABLES `t_admin_login_his` WRITE;
/*!40000 ALTER TABLE `t_admin_login_his` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_admin_login_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_admin_login_info`
--

DROP TABLE IF EXISTS `t_admin_login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin_login_info`
--

LOCK TABLES `t_admin_login_info` WRITE;
/*!40000 ALTER TABLE `t_admin_login_info` DISABLE KEYS */;
INSERT INTO `t_admin_login_info` VALUES (1,'admin','13b99ae06765b31ec9b09beae190e7ff','8d78869f470951332959580424d4bf4f','0','0','2016-06-21 01:16:13','admin','2016-06-21 01:51:43','admin','Basic');
/*!40000 ALTER TABLE `t_admin_login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_asset_info`
--

DROP TABLE IF EXISTS `t_asset_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_asset_info`
--

LOCK TABLES `t_asset_info` WRITE;
/*!40000 ALTER TABLE `t_asset_info` DISABLE KEYS */;
INSERT INTO `t_asset_info` VALUES (1,'PA20160620000001','2016-06-19 16:00:00','1','主动管理型产品','主动管理型产品是鼎锋投资的旗舰产品。以基金专户，契约集合等方式募集客户的资金投资于资本市场，通过Alpha、中短期的统计配对交易及期权多策略叠加，投资于流动性较好的股票和债券等投资标的。该产品具有中低风险、中高收益的特点。在2015年的股灾期间，6月15日到7月6日， 子午管理产品保持无单日回撤的记录。在过去三年中，公司产品实现了15%-25%的年平均回报。<br>此类产品通常每半年或每年度可申购和赎回。','','2016-06-19 16:00:00','admin','2016-06-19 16:00:00','admin','basic'),(2,'PA20160620000002','2016-06-19 16:00:00','1','量化对冲产品','子午量化投资团队经过多年的积累，采用多因子及事件驱动模型自下而上进行个股选择，运用行业及个股量化模型，选择在当前市场情景下有大概率领先标的指数的股票，以获取alpha收益；最后利用股指期货进行套期保值，以降低投资组合风险，并对alpha股票组合进行中短期统计配对交易，取得平稳收益曲线。<br>目前子午已有多只量化产品问世，均表现稳定，收益良好。','','2016-06-19 16:00:00','admin','2016-06-19 16:00:00','admin','basic'),(3,'PA20160620000003','2016-06-19 16:00:00','1','股票期权产品','子午股票期权基金是以场内期权及场外个股期权为主要投资对象的投资基金， 具有较复杂的投资结构， 高杠杆高收益高波动等特点。策略包括：单一期权策略、备兑开仓 （备兑认购期权组合，保护性认沽期权组合）、合成股票套利（通过期权合约合成股票从而与现货套利）、价差组合(认购牛市价差、认购熊市价差、防守型价差 等)、波动率策略 （宽跨式期权组合、蝶式组合等）、及带式期权。<br>此产品通常针对特定客户特定需求而定制交易架构和投资方案。','','2016-06-19 16:00:00','admin','2016-06-19 16:00:00','admin','basic');
/*!40000 ALTER TABLE `t_asset_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_course_info`
--

DROP TABLE IF EXISTS `t_course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_course_info`
--

LOCK TABLES `t_course_info` WRITE;
/*!40000 ALTER TABLE `t_course_info` DISABLE KEYS */;
INSERT INTO `t_course_info` VALUES (1,'CO20160620000001','2016-07-02 07:22:09','1','实验室简介','<p>学员进入公司后首先进行初级课程培训，学习到宏观经济以及国际政治层面的对金融市场及时影响的深层分析，影响市场的经济指标，行业，概念等分析。还有技术方面的专业技能。全面了解市场运作理念 ，掌握金融产品的分析方法。熟悉公司交易平台，研究架构，以及风控制度，达到初级交易员水平。</p>','mgws_1_1.jpg,mgws_34350e06-4005-43e8-8480-f55673560c6d.jpg,mgws_9ebe9274-b5ed-4f21-a2ae-132d7a31c291.jpg','2016-06-19 16:00:00','admin','2016-07-02 07:22:09','admin','CourseController'),(2,'CO20160620000002','2016-06-28 15:14:00','1','初级课程培训','<p>初级课程考核通过后进入中级课程培训，帮助学员树立正确的交易理念，认知交易系统，建立初步的交易系统，学习先进的历史经验及交易技巧最终实现初步的稳定获利。有效的运用交易工具来完成交易，建立核心的个人交易系统，和操作理念，养成良好的心态，学会控制风险，培养良好的交易习惯和心里，全面了解市场投资技巧。</p>','mgws_43d5ea4f-92bb-4496-82f1-a8535f46b0a1.jpg,mgws_a9ec4c54-54ad-4473-8ca3-817a755806f9.jpg,mgws_20304d2a-03d2-4742-870f-8caaeacc9f21.jpg','2016-06-19 16:00:00','admin','2016-06-28 15:14:01','admin','CourseController'),(3,'CO20160620000003','2016-06-19 16:00:00','1','中级课程培训','中级课程考核通过后学员进入实盘交易。让学员更好地对资金账户控管，培养良好的风险控制，利用技术和基础分析，在交易中获得更多的利润，将利润最大化，进一步完善个人交易系统。有效的规避交易中面临的问题，达到了解各种技术工具与资金管理优化配置从而成为真正的职业化交易员。','','2016-06-19 16:00:00','admin','2016-06-19 16:00:00','admin','basic'),(4,'CO20160620000004','2016-06-25 13:40:45','1','实盘交易','为期6个月实习期满之后，公司给予成绩优异者，全职工作合同，提供领先于全国金融市场的薪资待遇和奖励机制。同时最优秀的两名员工，NYSE Euronext将提供为期一周的伦敦实习机会，深入了解环球金融市场的最前沿。','','2016-06-19 16:00:00','admin','2016-06-25 13:40:45','admin','basic');
/*!40000 ALTER TABLE `t_course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_recruitment_info`
--

DROP TABLE IF EXISTS `t_recruitment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_recruitment_info`
--

LOCK TABLES `t_recruitment_info` WRITE;
/*!40000 ALTER TABLE `t_recruitment_info` DISABLE KEYS */;
INSERT INTO `t_recruitment_info` VALUES (1,'RE20160620000001','2016-06-21 02:45:13','1','环球市场交易员',8,'上海','2013/2014应届大学毕业生','<p>\r\n									无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。无具体专业要求限制。</p>',10,'2016-06-19 16:00:00','admin','2016-06-21 02:45:13','admin','RecruitmentController'),(2,'RE20160620000002','2016-06-25 11:30:38','0','环球市场管理员',10,'苏州','2013/2014应届大学毕业生','<p>',10,NULL,NULL,'2016-06-25 11:30:38',NULL,NULL);
/*!40000 ALTER TABLE `t_recruitment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_code`
--

DROP TABLE IF EXISTS `t_sys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_code` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `codeId` varchar(6) NOT NULL,
  `codeDetailId` varchar(6) NOT NULL,
  `codeName` varchar(100) NOT NULL,
  `codeDetailName` varchar(100) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_code`
--

LOCK TABLES `t_sys_code` WRITE;
/*!40000 ALTER TABLE `t_sys_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_config`
--

DROP TABLE IF EXISTS `t_sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_config` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `advertisingPics` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_config`
--

LOCK TABLES `t_sys_config` WRITE;
/*!40000 ALTER TABLE `t_sys_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_module`
--

DROP TABLE IF EXISTS `t_sys_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_module`
--

LOCK TABLES `t_sys_module` WRITE;
/*!40000 ALTER TABLE `t_sys_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sys_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_resource`
--

DROP TABLE IF EXISTS `t_sys_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_resource`
--

LOCK TABLES `t_sys_resource` WRITE;
/*!40000 ALTER TABLE `t_sys_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sys_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_role`
--

DROP TABLE IF EXISTS `t_sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_role`
--

LOCK TABLES `t_sys_role` WRITE;
/*!40000 ALTER TABLE `t_sys_role` DISABLE KEYS */;
INSERT INTO `t_sys_role` VALUES (1,'admin',NULL,NULL,'1','2016-06-21 01:18:25','admin','2016-06-21 01:18:36','admin','Basic');
/*!40000 ALTER TABLE `t_sys_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-18 21:02:33
