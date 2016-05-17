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
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
