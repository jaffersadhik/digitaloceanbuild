CREATE TABLE `dlr_sp_log` (
  `sno` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` varchar(6) CHARACTER SET utf8 NOT NULL,
  `record_date` date NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT 0,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`),
  UNIQUE KEY `route_id` (`route_id`,`record_date`)
) ENGINE=InnoDB AUTO_INCREMENT=6584 DEFAULT CHARSET=latin1
