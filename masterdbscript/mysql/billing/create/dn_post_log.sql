
 CREATE TABLE `dn_post_log_20230701` (
  `cli_id` bigint(16) NOT NULL,
  `msg_id` varchar(25) DEFAULT NULL,
  `dest` bigint(15) DEFAULT NULL COMMENT 'Mobile Mumber',
  `retry_attempt` int(3) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `instanceid` varchar(50) DEFAULT NULL,
  `recv_time` datetime(3) DEFAULT NULL COMMENT 'Message Received Time',
  `submit_ts` datetime(3) DEFAULT NULL,
  `response_ts` datetime(3) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `reason` varchar(200) DEFAULT NULL,
  `smpp_system_id` varchar(100) DEFAULT NULL COMMENT 'User Name of the account',
  `cli_ip` varchar(30) DEFAULT NULL COMMENT 'Client Source Ip',
  `carrier_sub_time` datetime(3) DEFAULT NULL COMMENT 'Carrier Submit TIme',
  `dly_time` datetime(3) DEFAULT NULL COMMENT 'DN Received Time',
  KEY `created_ts` (`created_ts`),
  KEY `dest` (`dest`),
  KEY `msg_id` (`msg_id`),
  KEY `dn_post_recv_time_idx1` (`recv_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

