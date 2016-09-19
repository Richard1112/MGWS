DROP TABLE IF EXISTS `t_customer_security_info`;
CREATE TABLE `t_customer_security_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `telNo` varchar(20) DEFAULT NULL,
  `emailAddr` varchar(255) DEFAULT NULL,
  `wechatNo` varchar(50) DEFAULT NULL,
  `wechatOpenId` varchar(100) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
