CREATE TABLE `carrier_master` (
  `carrier_id` varchar(10) NOT NULL,
  `carrier_name` varchar(100) NOT NULL,
  `circle_wise_error_code` tinyint(1) NOT NULL DEFAULT 0,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  `updated_Ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`carrier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `carrier_master_20211113` (
  `carrier_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  `carrier_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `circle_wise_error_code` tinyint(1) NOT NULL DEFAULT 0,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  `updated_Ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `carrier_onnet_table_map` (
  `route_id` varchar(6) NOT NULL DEFAULT 'AAA',
  `table_name` varchar(60) NOT NULL DEFAULT 'carrier_premium_routes',
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `carrier_premium_routes` (
  `carrier` varchar(50) NOT NULL,
  `circle` varchar(50) NOT NULL,
  `txn_route_id` varchar(6) DEFAULT NULL,
  `promo_route_id` varchar(6) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`carrier`,`circle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `carrier_route_map` (
  `route_id` varchar(6) NOT NULL,
  `carrier_id` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`route_id`),
  KEY `carrier_route_map_FK` (`carrier_id`),
  CONSTRAINT `carrier_route_map_FK` FOREIGN KEY (`carrier_id`) REFERENCES `carrier_master` (`carrier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `carrier_route_map_20211113` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `carrier_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `client_dn_gen_percentage_map` (
  `cli_id` bigint(16) DEFAULT NULL,
  `route_id` varchar(6) DEFAULT NULL,
  `error_code` varchar(10) NOT NULL,
  `masked_route_id` varchar(6) NOT NULL,
  `success_percentage` tinyint(3) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `client_msg_validity` (
  `cli_id` bigint(16) NOT NULL,
  `txn_validity` int(10) NOT NULL,
  `promo_validity` int(10) NOT NULL,
  `updated_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


CREATE TABLE `client_retry_validity` (
  `cli_id` bigint(16) NOT NULL,
  `retry_attempt` tinyint(3) NOT NULL,
  `validity_in_secs` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `client_route_config` (
  `cli_id` bigint(16) NOT NULL,
  `carrier` varchar(100) DEFAULT NULL,
  `circle` varchar(100) DEFAULT NULL,
  `txn_route_id` varchar(6) NOT NULL,
  `promo_route_id` varchar(6) NOT NULL,
  `reason` tinyint(3) DEFAULT 0 COMMENT '0 - Custom, 1 - Exclude',
  `description` varchar(1000) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `common_retry_route_config` (
  `error_code` varchar(5) NOT NULL,
  `orig_route_id` varchar(6) NOT NULL,
  `priority` tinyint(3) NOT NULL,
  `retry_attempt` tinyint(3) NOT NULL,
  `txn_retry_route_id` varchar(6) DEFAULT NULL,
  `promo_retry_route_id` varchar(6) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`error_code`,`orig_route_id`,`priority`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `common_retry_validity` (
  `error_code` varchar(5) NOT NULL DEFAULT 'OTHER',
  `priority` tinyint(3) NOT NULL,
  `retry_attempt` tinyint(3) NOT NULL DEFAULT 0,
  `txn_retry_validity_in_secs` int(10) NOT NULL DEFAULT 0,
  `promo_retry_validity_in_secs` int(10) NOT NULL DEFAULT 0,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`error_code`,`priority`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `dn_gen_percentage_exempt` (
  `cli_id` bigint(16) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`created_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `dn_gen_percentage_map` (
  `msg_type` tinyint(3) NOT NULL,
  `priority` tinyint(3) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `error_code` varchar(10) NOT NULL,
  `masked_route_id` varchar(6) NOT NULL,
  `success_percentage` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `govt_header` (
  `header` varchar(15) NOT NULL,
  `alpha` tinyint(3) DEFAULT NULL COMMENT '2- Government header, null for shortcode',
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `govt_header_exclude` (
  `cli_id` bigint(20) NOT NULL,
  `carrier` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `govt_header_masking` (
  `cli_id` bigint(16) NOT NULL,
  `circle` varchar(50) DEFAULT NULL,
  `original_header` varchar(15) DEFAULT NULL,
  `masking_header` varchar(15) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `rotate_header` tinyint(3) DEFAULT 0,
  `entity_id` bigint(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `group_routes_ratio` (
  `group` int(10) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `ratio` tinyint(3) NOT NULL DEFAULT 1,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`group`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `header_alternate_routes` (
  `cluster` varchar(10) NOT NULL DEFAULT 'bulk',
  `disallowed_route` varchar(6) NOT NULL,
  `priority` tinyint(3) NOT NULL,
  `alternate_route` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`disallowed_route`,`cluster`,`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `header_fixed_routes` (
  `header` varchar(15) NOT NULL,
  `txn_route_id` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `header_mask_pool` (
  `header` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `header_priority_open_routes` (
  `cluster` varchar(10) NOT NULL DEFAULT 'bulk',
  `priority` tinyint(3) NOT NULL,
  `open_route_id` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `header_random_pool` (
  `route_id` varchar(6) NOT NULL,
  `header` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `header_route_status` (
  `header` varchar(15) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `allowed_status` tinyint(3) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`header`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `intl_carrier_support_headers` (
  `route_id` varchar(6) NOT NULL,
  `header` varchar(15) NOT NULL,
  `carrier_header` varchar(15) NOT NULL,
  PRIMARY KEY (`route_id`,`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `intl_client_route_info` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(50) NOT NULL,
  `carrier_network` varchar(100) NOT NULL DEFAULT 'rest',
  `route_id` varchar(6) DEFAULT NULL,
  `default_header` varchar(15) DEFAULT NULL,
  `header` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `intl_country_header_info` (
  `country` varchar(50) NOT NULL,
  `regex` varchar(50) NOT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`country`),
  UNIQUE KEY `intl_country_header_info_UN` (`country`,`regex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `intl_country_header_template` (
  `country` varchar(50) NOT NULL,
  `keywords` varchar(4000) DEFAULT NULL,
  `header` varchar(15) DEFAULT NULL,
  `priority` tinyint(3) NOT NULL,
  `route_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `intl_global_header_template` (
  `sno` bigint(19) NOT NULL,
  `keywords` varchar(2000) DEFAULT NULL,
  `header` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `intl_mobile_routes` (
  `cli_id` bigint(16) DEFAULT NULL,
  `mnumber` bigint(19) NOT NULL,
  `route_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `intl_route_config` (
  `carrier_network` int(10) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `economy_route_id` varchar(6) NOT NULL DEFAULT 'AI',
  `country` varchar(50) NOT NULL,
  `carrier` varchar(100) NOT NULL DEFAULT 'Other',
  `header_type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1 - Static, 2- List , 3 - Dynamic',
  `default_header` varchar(15) DEFAULT NULL,
  `mnumber_length_max` tinyint(3) NOT NULL DEFAULT 0,
  `mnumber_length_min` tinyint(3) NOT NULL DEFAULT 0,
  `ussd_route_id` varchar(6) NOT NULL DEFAULT 'LF',
  `header_sub_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Not Applicable, 1 - Numaric, 2 - Alphabet, 3 - Alphanumaric, 4 - Alphanumaric with special char',
  PRIMARY KEY (`carrier_network`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `intl_route_header` (
  `country` varchar(50) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `header_type` tinyint(1) NOT NULL COMMENT '1 - Static, 2- List , 3 - Dynamic',
  `default_header` varchar(15) DEFAULT NULL,
  `header_sub_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Not Applicable, 1 - Numaric, 2 - Alphabet, 3 - Alphanumaric, 4- Alphanumaric with special char',
  PRIMARY KEY (`country`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `kannel_url_config` (
  `route_id` varchar(6) NOT NULL,
  `feature_cd` varchar(4) DEFAULT NULL,
  `kannel_url` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `mobile_route_config` (
  `mnumber` bigint(19) NOT NULL,
  `txn_route_id` varchar(6) NOT NULL,
  `promo_route_id` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `msg_replace_keywords` (
  `cli_id` bigint(20) NOT NULL,
  `keyword_to_replace` varchar(200) NOT NULL,
  `replace_keyword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cli_id`,`keyword_to_replace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `msg_replace_route_condition` (
  `cli_id` bigint(16) NOT NULL,
  `carrier` varchar(100) NOT NULL,
  `circle` varchar(100) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  PRIMARY KEY (`cli_id`,`carrier`,`circle`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `msg_validity` (
  `priority` tinyint(3) NOT NULL,
  `txn_validity` int(10) NOT NULL,
  `promo_validity` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `otp_voice_connect_map` (
  `cli_id` bigint(16) NOT NULL,
  `voice_cfg_id` bigint(19) NOT NULL,
  `v_account` varchar(50) DEFAULT NULL,
  `v_pin` varchar(50) DEFAULT NULL,
  `v_ip` varchar(20) DEFAULT NULL,
  `v_port` int(10) DEFAULT NULL,
  `dlr_url_template` varchar(4000) DEFAULT NULL,
  `v_template` varchar(1000) DEFAULT NULL,
  `ott` int(10) DEFAULT NULL,
  PRIMARY KEY (`voice_cfg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `otp_voice_template_map` (
  `cli_id` bigint(16) DEFAULT NULL,
  `voice_cfg_id` bigint(19) NOT NULL,
  `campaign_id` int(10) DEFAULT NULL,
  `msg_template` varchar(4000) DEFAULT NULL,
  `tts_count` int(10) DEFAULT NULL,
  `tts_order` varchar(50) DEFAULT NULL,
  `tts_clean` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL,
  `data_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`voice_cfg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `rerouting_config` (
  `route_id` varchar(6) NOT NULL,
  `next_route_id` varchar(6) NOT NULL,
  `is_manual` tinyint(3) NOT NULL,
  `kannel_storesize` int(10) NOT NULL,
  `storesize_until_in_sec` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `retry_config` (
  `orig_route_type` varchar(4) NOT NULL DEFAULT 'SMPP',
  `priority` tinyint(3) NOT NULL,
  `txn_retries` tinyint(3) NOT NULL DEFAULT 0,
  `promo_retries` tinyint(3) NOT NULL DEFAULT 0,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`orig_route_type`,`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `retry_route_config` (
  `cli_id` bigint(16) NOT NULL,
  `orig_route_id` varchar(6) NOT NULL,
  `error_code` varchar(5) NOT NULL,
  `retry_attempt` tinyint(4) NOT NULL,
  `retry_interval_in_secs` int(10) NOT NULL,
  `channel` varchar(5) NOT NULL DEFAULT 'SMS',
  `retry_route_id` varchar(6) NOT NULL,
  `voice_cfg_id` int(10) NOT NULL DEFAULT 0,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`orig_route_id`,`error_code`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `route_configuration` (
  `route_id` varchar(6) NOT NULL,
  `route_desc` varchar(50) NOT NULL,
  `is_txn_route` tinyint(3) NOT NULL DEFAULT 0,
  `is_promo_route` tinyint(3) NOT NULL DEFAULT 0,
  `is_intl_route` tinyint(3) NOT NULL DEFAULT 0,
  `route_type` varchar(4) NOT NULL DEFAULT 'SMPP',
  `kannel_ip` varchar(20) NOT NULL DEFAULT 'NA',
  `kannel_port` int(10) NOT NULL DEFAULT 0,
  `kannel_status_port` int(5) NOT NULL DEFAULT 5000,
  `kannel_store_size_max_limit` int(9) NOT NULL DEFAULT 100000,
  `smscid` varchar(10) DEFAULT NULL,
  `isprefix` tinyint(3) DEFAULT NULL,
  `prefix` char(3) DEFAULT NULL,
  `promo_header` varchar(15) DEFAULT NULL,
  `header_whitelisted` tinyint(4) NOT NULL DEFAULT 0,
  `promo_header_type` tinyint(4) DEFAULT NULL,
  `response` varchar(10) DEFAULT NULL,
  `dtime_format` varchar(25) NOT NULL,
  `ignore_status` varchar(50) DEFAULT NULL,
  `ignore_mnumber_for_select` char(1) NOT NULL DEFAULT '0',
  `load_balancer_yn` decimal(1,0) DEFAULT 0,
  `is_dlt_route` decimal(1,0) DEFAULT 0,
  `is_dummy_route` tinyint(3) NOT NULL DEFAULT 0,
  `carrier_full_dn` varchar(100) NOT NULL DEFAULT 'id:1 sub:001 dlvrd:001 submitdate:{0} donedate:{1} stat:DELIVRD err:000 Text:null',
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`route_id`),
  CONSTRAINT `route_configuration_FK` FOREIGN KEY (`route_id`) REFERENCES `carrier_route_map` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `route_group_config` (
  `group` int(10) NOT NULL,
  `group_desc` varchar(100) NOT NULL,
  `is_intl_group` tinyint(3) NOT NULL DEFAULT 0,
  `msg_type` tinyint(3) NOT NULL,
  PRIMARY KEY (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `route_headers_pool` (
  `route_id` varchar(6) NOT NULL,
  `header` varchar(15) NOT NULL,
  PRIMARY KEY (`route_id`,`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `template_based_routing` (
  `sno` bigint(19) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `template` varchar(2000) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `route_id` varchar(6) NOT NULL,
  `most_used_template` tinyint(3) DEFAULT 0,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
