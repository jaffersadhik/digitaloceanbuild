CREATE TABLE `client_crypto_info` (
  `seq_no` bigint(9) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) NOT NULL,
  `incoming_crypto_type` tinyint(1) DEFAULT NULL COMMENT '0-none,1-Encoded, 2-Encrypted, other than 0,1, 2 all others are not useful',
  `incoming_crypto_alogrithm` varchar(50) DEFAULT NULL COMMENT 'Type of Crypting algorithm',
  `billing_crypto_type` tinyint(1) DEFAULT NULL COMMENT '0-none, 1-Encoded, 2- Encrypted, 3-Hashed, 4-Blank',
  `billing_crypto_algorithm` varchar(50) DEFAULT NULL COMMENT 'Type of Crypting algorithm',
  `billing_crypto_columns` tinyint(1) DEFAULT NULL COMMENT '1-Mobile only, 2-Message only, 3- Mobile and Message. This is applicable for submission, deliveries and full_message tables',
  `handover_crypto_type` tinyint(1) DEFAULT NULL COMMENT '0-none,1-Encoded, 2-Encrypted, other than 0,1, 2 all others are not useful',
  `handover_crypto_algorithm` varchar(50) DEFAULT NULL COMMENT 'Type of Crypting algorithm',
  `incoming_crypto_param_1` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_2` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_3` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_4` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_5` varchar(100) DEFAULT NULL,
  `billing_crypto_param_1` varchar(100) DEFAULT NULL,
  `billing_crypto_param_2` varchar(100) DEFAULT NULL,
  `billing_crypto_param_3` varchar(100) DEFAULT NULL,
  `billing_crypto_param_4` varchar(100) DEFAULT NULL,
  `billing_crypto_param_5` varchar(100) DEFAULT NULL,
  `handover_crypto_param_1` varchar(100) DEFAULT NULL,
  `handover_crypto_param_2` varchar(100) DEFAULT NULL,
  `handover_crypto_param_3` varchar(100) DEFAULT NULL,
  `handover_crypto_param_4` varchar(100) DEFAULT NULL,
  `handover_crypto_param_5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `client_crypto_info_UN_1` (`cli_id`,`incoming_crypto_type`),
  UNIQUE KEY `client_crypto_info_UN_2` (`cli_id`,`billing_crypto_type`),
  UNIQUE KEY `client_crypto_info_UN_3` (`cli_id`,`billing_crypto_columns`),
  UNIQUE KEY `client_crypto_info_UN_4` (`cli_id`,`handover_crypto_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4