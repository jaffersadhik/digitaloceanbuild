CREATE TABLE `full_message_20230701` (
  `cli_id` varchar(16) NOT NULL,
  `recv_date` date NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `long_msg` mediumtext DEFAULT NULL,
  `created_ts` datetime(3) DEFAULT NULL,
  `encrypted_long_msg` mediumtext DEFAULT NULL COMMENT 'Encrypted Long Message',
  KEY `base_msg_id` (`base_msg_id`),
  KEY `cli_id` (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

