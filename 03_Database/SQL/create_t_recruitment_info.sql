DROP TABLE IF EXISTS `t_recruitment_info`;
CREATE TABLE `t_recruitment_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `recruitNo` varchar(16) NOT NULL,
  `releaseDate` timestamp NOT NULL,
  `releaseFlg` char(1) NOT NULL,
  `recruitJobTitle` varchar(100) DEFAULT NULL,
  `recruitNumber` int(3),
  `recruitLocale` char(100),
  `recruitObject` varchar(500) DEFAULT NULL,
  `recruitDetails` blob,
  `sortOrder` int(8),
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
