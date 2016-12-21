CREATE DATABASE  IF NOT EXISTS `mgws` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `mgws`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 211.152.62.200    Database: mgws
-- ------------------------------------------------------
-- Server version	5.1.73

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
  `releaseDate` timestamp NULL DEFAULT NULL,
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
INSERT INTO `t_asset_info` VALUES (1,'PA20160620000001','2016-06-19 16:00:00','1','主动管理型产品','<p>主动管理型产品是子午投资的旗舰产品。以基金专户，契约集合等方式募集客户的资金投资于资本市场，通过Alpha、中短期的统计配对交易及期权多策略叠加，投资于流动性较好的股票和债券等投资标的。该产品具有中低风险、中高收益的特点。在2015年的股灾期间，6月15日到7月6日， 子午管理产品保持无单日回撤的记录。在过去三年中，公司产品实现了稳定回报的年平均回报。<br/>此类产品通常每半年或每年度可申购和赎回。</p>','','2016-06-19 16:00:00','admin','2016-08-26 13:02:34','admin','AssetCartController'),(2,'PA20160620000002','2016-06-19 16:00:00','1','量化对冲产品','子午量化投资团队经过多年的积累，采用多因子及事件驱动模型自下而上进行个股选择，运用行业及个股量化模型，选择在当前市场情景下有大概率领先标的指数的股票，以获取alpha收益；最后利用股指期货进行套期保值，以降低投资组合风险，并对alpha股票组合进行中短期统计配对交易，取得平稳收益曲线。<br>目前子午已有多只量化产品问世，均表现稳定，收益良好。','','2016-06-19 16:00:00','admin','2016-06-19 16:00:00','admin','basic'),(3,'PA20160620000003','2016-06-19 16:00:00','1','股票期权产品','子午股票期权基金是以场内期权及场外个股期权为主要投资对象的投资基金， 具有较复杂的投资结构， 高杠杆高收益高波动等特点。策略包括：单一期权策略、备兑开仓 （备兑认购期权组合，保护性认沽期权组合）、合成股票套利（通过期权合约合成股票从而与现货套利）、价差组合(认购牛市价差、认购熊市价差、防守型价差 等)、波动率策略 （宽跨式期权组合、蝶式组合等）、及带式期权。<br>此产品通常针对特定客户特定需求而定制交易架构和投资方案。','','2016-06-19 16:00:00','admin','2016-06-19 16:00:00','admin','basic');
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
  `releaseDate` timestamp NULL DEFAULT NULL,
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
INSERT INTO `t_course_info` VALUES (1,'CO20160620000001','2016-07-19 12:41:57','1','实验室简介','<p>学员进入公司后首先进行初级课程培训，学习宏观经济与国际政治层面的对金融市场即时影响的深层分析；影响市场的经济指标，行业概念分析；以及技术方面的专业技能。全面了解市场运作理念 ，掌握金融产品的分析方法。熟悉公司交易平台，研究架构，以及风控制度，达到初级交易员水平。</p>','mgws_1_1.jpg,mgws_1_2.jpg,mgws_1_3.jpg','2016-06-19 16:00:00','admin','2016-09-01 14:19:22','admin','CourseController'),(2,'CO20160620000002','2016-07-19 12:41:57','1','初级课程培训','<p>初级课程考核通过后进入中级课程培训，帮助学员树立正确的交易理念，全面认知并建立初步的交易系统，学习先进的交易经验与交易技巧最终实现初步的稳定获利；有效的运用交易工具来完成交易，建立核心的个人交易系统和操作理念，养成良好的心态，学会控制风险，培养良好的交易习惯和心理，全面了解市场投资技巧。</p>','mgws_2_1.jpg,mgws_2_2.jpg,mgws_2_3.jpg','2016-06-19 16:00:00','admin','2016-09-01 14:21:35','admin','CourseController'),(3,'CO20160620000003','2016-07-19 12:42:55','1','中级课程培训','<p>中级课程考核通过后学员进入实盘交易。让学员更好地实现对资金账户的控管，培养良好的风险控制能力；利用技术与基础分析，在交易中获得更多的利润，并进一步完善个人交易系统，使利润最大化。有效的规避交易中面临的问题，熟悉运用各种技术工具，优化资金管理配置，从而成为真正的职业化交易员。</p>','mgws_3_1.jpg,mgws_3_2.jpg,mgws_3_3.jpg','2016-06-19 16:00:00','admin','2016-09-01 14:24:01','admin','CourseController'),(4,'CO20160620000004','2016-07-19 12:41:57','1','实盘交易','<p>为期6个月实习期满之后，公司将给予成绩优异者全职工作合同，提供领先于全国金融市场的薪资待遇与奖励机制。同时最优秀的两名员工，NYSE Euronext将提供为期一周的伦敦实习机会，深入了解最前沿的环球金融市场。</p>','mgws_4_1.jpg,mgws_4_2.jpg,mgws_4_3.jpg','2016-06-19 16:00:00','admin','2016-09-01 14:25:07','admin','CourseController');
/*!40000 ALTER TABLE `t_course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_login_his`
--

DROP TABLE IF EXISTS `t_customer_login_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_login_his` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `loginTimestamp` timestamp NULL DEFAULT NULL,
  `logoutTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_login_his`
--

LOCK TABLES `t_customer_login_his` WRITE;
/*!40000 ALTER TABLE `t_customer_login_his` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_customer_login_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_login_info`
--

DROP TABLE IF EXISTS `t_customer_login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_login_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `loginId` varchar(50) NOT NULL,
  `loginPass` varchar(255) NOT NULL,
  `salt` varchar(48) DEFAULT NULL,
  `division` char(1) DEFAULT NULL,
  `loginStatus` char(1) DEFAULT NULL,
  `canLogin` char(1) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_login_info`
--

LOCK TABLES `t_customer_login_info` WRITE;
/*!40000 ALTER TABLE `t_customer_login_info` DISABLE KEYS */;
INSERT INTO `t_customer_login_info` VALUES (1,'CS20161219237244','18036825586','fafbe95c9d57f9ee20354dab502e2e93','4da058c6af22d7893ad7478d36313327',NULL,'1','0','0','2016-12-19 08:59:53',NULL,'2016-12-19 08:59:55',NULL,NULL),(2,'CS20161219194091','richard.ma@tech-coffee.com','431f69cb81b6719cd3f454465499812e','39c4c69357be333197b7d8d7a0307c15',NULL,'1','0','0','2016-12-19 09:02:06',NULL,'2016-12-19 09:02:21',NULL,NULL),(3,'CS20161220828826','13774565043','1f92b841eb8de2fc9f92a8b3eb29c025','f05b7b338176ee2cd03adfb741ea6121',NULL,'1','0','0','2016-12-20 02:29:56',NULL,'2016-12-20 02:31:17',NULL,NULL);
/*!40000 ALTER TABLE `t_customer_login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_security_info`
--

DROP TABLE IF EXISTS `t_customer_security_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_security_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `telNo` varchar(20) DEFAULT NULL,
  `emailAddr` varchar(255) DEFAULT NULL,
  `wechatNo` varchar(50) DEFAULT NULL,
  `wechatOpenId` varchar(100) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_security_info`
--

LOCK TABLES `t_customer_security_info` WRITE;
/*!40000 ALTER TABLE `t_customer_security_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_customer_security_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_enterprise_basic_info`
--

DROP TABLE IF EXISTS `t_enterprise_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_enterprise_basic_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `cnName` varchar(50) DEFAULT NULL,
  `enName` varchar(100) DEFAULT NULL,
  `taxNo` varchar(50) DEFAULT NULL,
  `passportNo` varchar(50) DEFAULT NULL,
  `occupation` varchar(6) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_enterprise_basic_info`
--

LOCK TABLES `t_enterprise_basic_info` WRITE;
/*!40000 ALTER TABLE `t_enterprise_basic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_enterprise_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_individual_basic_info`
--

DROP TABLE IF EXISTS `t_individual_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_individual_basic_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `cnSurname` varchar(20) DEFAULT NULL,
  `cnGivenname` varchar(20) DEFAULT NULL,
  `enFirstName` varchar(50) DEFAULT NULL,
  `enMiddleName` varchar(50) DEFAULT NULL,
  `enLastName` varchar(50) DEFAULT NULL,
  `idCardNo` varchar(50) DEFAULT NULL,
  `passportNo` varchar(50) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `birthday` varchar(8) DEFAULT NULL,
  `headPic` varchar(200) DEFAULT NULL,
  `marriage` varchar(6) DEFAULT NULL,
  `education` varchar(6) DEFAULT NULL,
  `occupation` varchar(6) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_individual_basic_info`
--

LOCK TABLES `t_individual_basic_info` WRITE;
/*!40000 ALTER TABLE `t_individual_basic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_individual_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_investment_master`
--

DROP TABLE IF EXISTS `t_investment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_investment_master` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_investment_master`
--

LOCK TABLES `t_investment_master` WRITE;
/*!40000 ALTER TABLE `t_investment_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_investment_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_investment_value`
--

DROP TABLE IF EXISTS `t_investment_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_investment_value` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `productId` bigint(12) NOT NULL,
  `date` varchar(8) DEFAULT NULL,
  `netValue` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_investment_value`
--

LOCK TABLES `t_investment_value` WRITE;
/*!40000 ALTER TABLE `t_investment_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_investment_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_purchase_record`
--

DROP TABLE IF EXISTS `t_purchase_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_purchase_record` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `productId` bigint(12) NOT NULL,
  `dateFrom` varchar(8) DEFAULT NULL,
  `dateTo` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_purchase_record`
--

LOCK TABLES `t_purchase_record` WRITE;
/*!40000 ALTER TABLE `t_purchase_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_purchase_record` ENABLE KEYS */;
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
  `releaseDate` timestamp NULL DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_recruitment_info`
--

LOCK TABLES `t_recruitment_info` WRITE;
/*!40000 ALTER TABLE `t_recruitment_info` DISABLE KEYS */;
INSERT INTO `t_recruitment_info` VALUES (1,'RE20160620000001','2016-06-21 02:45:13','1','深度学习工程师/科学家',8,'上海','数学专业或者深度学习专业，金融模型研究和开发工程师。','<p>									</p><p>&nbsp;</p><p>&nbsp;</p><p><span style=\"font-family: &quot;Helvetica Neue&quot;; font-size: 14px;\">数学专业或者深度学习专业，金融模型研究和开发。</span><span style=\"font-family: 宋体, arial, Verdana, sans-serif; font-size: 14px;\">做过图像识别，语音识别或者自动驾驶的，在天池比赛或者di-tech或者任何国际大数据比赛拿过名次的优先。</span></p><p><span style=\"font-family: 宋体; font-size: 16px;\">The&nbsp;deep&nbsp;learning&nbsp;expert&nbsp;will&nbsp;work&nbsp;in&nbsp;a&nbsp;small&nbsp;and&nbsp;dynamic&nbsp;team&nbsp;to&nbsp;design&nbsp;and&nbsp;implement&nbsp;state&nbsp;of&nbsp;the&nbsp;art<br/>neural&nbsp;network&nbsp;algorithms&nbsp;for&nbsp;automative&nbsp;trading.<br/>Key&nbsp;Qualifications<br/>•&nbsp;Understanding&nbsp;of&nbsp;state&nbsp;of&nbsp;the&nbsp;art&nbsp;deep&nbsp;learning&nbsp;techniques<br/>•&nbsp;Strong&nbsp;understanding&nbsp;of&nbsp;CNNs,&nbsp;recurrent&nbsp;nets,&nbsp;supervised&nbsp;and&nbsp;unsupervised&nbsp;learning,&nbsp;and<br/>optimization&nbsp;techniques<br/>•&nbsp;Experience&nbsp;working&nbsp;with&nbsp;one&nbsp;or&nbsp;more&nbsp;deep&nbsp;learning&nbsp;frameworks&nbsp;such&nbsp;as&nbsp;Caffe,&nbsp;Theano,&nbsp;Torch,<br/>TensorFlow,&nbsp;MXNet<br/>•&nbsp;Strong&nbsp;desire&nbsp;and&nbsp;drive&nbsp;to&nbsp;build&nbsp;robust&nbsp;and&nbsp;efficient&nbsp;solution&nbsp;in&nbsp;consumer&nbsp;products&nbsp;using&nbsp;deep<br/>learning&nbsp;technology<br/>•&nbsp;Solid&nbsp;Python&nbsp;and&nbsp;C/C++&nbsp;development&nbsp;skills<br/>•&nbsp;Team&nbsp;player<br/>•&nbsp;Self&nbsp;motivated<br/>•&nbsp;Excellent&nbsp;problem&nbsp;solving&nbsp;skills<br/>•&nbsp;Excellent&nbsp;communication&nbsp;skills<br/>•&nbsp;Can&nbsp;work&nbsp;under&nbsp;stress&nbsp;and&nbsp;uncertainty<br/>•&nbsp;Fast&nbsp;learner<br/>MS/PhD&nbsp;in&nbsp;Machine&nbsp;Learning,&nbsp;Deep&nbsp;Learning,&nbsp;Computer&nbsp;Vision&nbsp;or&nbsp;similar<br/>Alternatively,&nbsp;a&nbsp;comparable&nbsp;industry&nbsp;career,&nbsp;with&nbsp;significant&nbsp;experience&nbsp;in&nbsp;state-of-the-art&nbsp;Deep&nbsp;Learning,<br/>Computer&nbsp;Vision,&nbsp;Machine&nbsp;Learning&nbsp;and&nbsp;Pattern&nbsp;Recognition&nbsp;fields<br/>Additional&nbsp;Requirements<br/>Solid&nbsp;fundamental&nbsp;computer&nbsp;vision&nbsp;methods&nbsp;and&nbsp;concepts&nbsp;(preferred)<br/>Experience&nbsp;shipping&nbsp;products,&nbsp;especially&nbsp;ones&nbsp;incorporating&nbsp;machine&nbsp;learning&nbsp;(preferred)<br/>Experience/knowledge&nbsp;of&nbsp;GPU&nbsp;computing/CUDA&nbsp;kernels&nbsp;(preferred)<br/>Experience/knowledge&nbsp;of&nbsp;software&nbsp;development&nbsp;on&nbsp;embedded&nbsp;platforms&nbsp;(preferred)</span></p><p style=\"font: 14px/normal Calibri; text-align: justify; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; margin-top: 0px; margin-bottom: 0px; margin-left: 0px; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: Calibri;\">&nbsp;</span></p><p><span style=\"font-family: 宋体, arial, Verdana, sans-serif; font-size: 14px;\"><span style=\"font-family: 宋体; font-size: 16px;\"></span></span></p><p><br/></p><p>&nbsp;</p><p>&nbsp;</p><p>\r\n								</p>',10,'2016-06-19 16:00:00','admin','2016-08-27 03:35:22','admin','RecruitmentController'),(3,'RE20161026784698','2016-10-26 05:14:05','1','量化交易专家/实习生',8,'上海','计算机、数学、物理专业背景硕士及以上学历','<p>									</p><p>&nbsp;</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>任职要求：<br/>1. 超过3年及以上的程序设计经验，如C++, C, Java, Python 或其他高级语言；<br/>2. 熟悉深度神经网络和常用的模型,如CNN,RNN,LSTM, DBN,DRL ；<br/>3. 熟练掌握常用的深度学习框架，如TensorFlow, Theano, Torch, Caffe；<br/>4. 熟练掌握至少一门分析工具，如Matlab, R；<br/>5. 良好的沟通能力和学习能力, 良好的英文阅读能力和书写能力，能够跟踪学术界和工业界的最新研究成果；<br/>6. 计算机、数学、物理专业背景硕士及以上学历 (能力突出者可不受此限）；<br/>7. 具备良好的心理素质，严谨，耐性，有较强的团队意识。<br/>&nbsp;&nbsp;<br/>加分项: <br/>1. 有使用大数据预测和检验统计市场模型经验的优先；<br/>2. 有机器学习理论、计算机视觉、语音理解检索深入工作研究经验的优先；<br/>3. 有Kaggle、ILSVRC、天池、ACM\\ICPC、IOI、NOI等竞赛经验优先。</p><p>&nbsp;</p><p>\r\n								</p>',NULL,'2016-10-26 05:14:05','admin','2016-10-26 05:21:59','admin','RecruitmentController'),(4,'RE20161026571084','2016-10-26 05:20:16','1','交易系统开发工程师/实习生',8,'上海','计算机、数学、物理专业背景硕士及以上学历 ','<p>									</p><p>&nbsp;</p><p><br/></p><p><br/></p><p><br/></p><p>岗位职责：</p><p>1. 理解交易系统设计，负责交易系统的接口发开、维护和相关应用需求；<br/>2. 负责交易系统优化，包括网络编程、数据库、高性能计算优化等。</p><p>任职要求：<br/>&nbsp;<br/>1. 熟练掌握C++, C, Java, Python 或其他高级语言；<br/>2. 熟练掌握Matlab语言，熟悉Matlab语言开发调试和测试技术；<br/>3. 良好的编程习惯，掌握常用数据结构和算法；<br/>4. 良好的沟通能力和学习能力, 良好的英文阅读能力和书写能力；<br/>5. 计算机、数学、物理专业背景硕士及以上学历 (能力突出者可不受此限）；<br/>6. 具备良好的心理素质，严谨，耐性，有较强的团队意识，能快速响应团队需求；<br/>7. 熟悉网络通讯协议和应用层通讯协议 。</p><p>加分项: <br/>有Kaggle、ILSVRC、天池、ACM\\ICPC、IOI、NOI等竞赛经验优先。<br/></p><p>&nbsp;</p><p>\r\n								</p>',NULL,'2016-10-26 05:20:16','admin','2016-10-26 05:22:07','admin','RecruitmentController'),(5,'RE20161026299269','2016-10-26 05:21:19','1','基金执行交易员/实习生',8,'上海','计算机、数学、物理专业背景硕士及以上学历','<p>									</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>岗位职责：</p><p>1. 实时监控盘面，保障量化交易的顺利进行，及时向基金经理反馈交易中的异常情况；<br/>2. 盘后协助分析、清算，做好交易报告，向基金经理提供每日的交易数据；<br/>3. 协助日常运营管理，维护公司的交易系统及账户。</p><p>任职资格：<br/>1. 计算机、数学、物理专业背景硕士及以上学历 (能力突出者可不受此限)；<br/>2. 具有细心、耐心、恒心的品质，严谨专注、原则性强；<br/>3. 对交易和金融投资有充分的热情；<br/>4. 抗压工作能力强；<br/>5. 良好的团队协作能力和协作沟通能力，能快速影响团队需求 。</p><p>加分项: <br/>有Kaggle、ILSVRC、天池、ACM\\ICPC、IOI、NOI等竞赛经验优先。</p><p>&nbsp;</p><p>\r\n								</p>',NULL,'2016-10-26 05:21:19','admin','2016-10-26 05:22:14','admin','RecruitmentController');
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

-- Dump completed on 2016-12-21  9:33:16
