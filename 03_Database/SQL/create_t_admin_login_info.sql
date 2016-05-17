DROP TABLE IF EXISTS `t_admin_login_info`;
CREATE TABLE `t_admin_login_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `loginPass` varchar(255) NOT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `loginStatus` char(1),
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
