CREATE TABLE `schedule_data` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(5) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `date_time_to_process` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `message_payload` mediumtext NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=350897 DEFAULT CHARSET=utf8mb4
