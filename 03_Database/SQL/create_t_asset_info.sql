DROP TABLE IF EXISTS `t_asset_info`;
CREATE TABLE `t_asset_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `partnerNo` varchar(16) NOT NULL,
  `releaseDate` timestamp NOT NULL,
  `releaseFlg` char(1) NOT NULL,
  `assetName` varchar(100) DEFAULT NULL,
  `assetDetails` blob,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
