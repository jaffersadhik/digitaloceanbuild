-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 10.122.0.3    Database: billing
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `cli_id` bigint NOT NULL,
  `platform_cluster` varchar(10) NOT NULL,
  `sms_priority` tinyint(1) NOT NULL,
  `dn_hdr` varchar(15) DEFAULT NULL,
  `dest` bigint DEFAULT NULL,
  `base_msg_id` varchar(25) DEFAULT NULL,
  `msg_id` varchar(25) NOT NULL,
  `file_id` varchar(25) DEFAULT NULL,
  `recv_time` datetime(3) NOT NULL,
  `recv_date` date NOT NULL,
  `act_recv_time` datetime(3) NOT NULL,
  `act_recv_date` date NOT NULL,
  `carrier_datetime_format` varchar(15) DEFAULT NULL,
  `msg_part_no` tinyint DEFAULT NULL,
  `total_msg_parts` tinyint DEFAULT NULL,
  `retry_attempt` tinyint(1) DEFAULT NULL,
  `act_route_id` varchar(6) DEFAULT NULL,
  `route_id` varchar(6) DEFAULT NULL,
  `dlr_from_internal` tinyint(1) DEFAULT NULL,
  `route_logic_id` varchar(3) DEFAULT NULL,
  `smsc_id` varchar(20) DEFAULT NULL,
  `carrier_full_dn` varchar(2000) DEFAULT NULL,
  `dly_time` datetime(3) DEFAULT NULL,
  `act_dly_time` datetime(3) DEFAULT NULL,
  `carrier_rcvd_time` datetime(3) DEFAULT NULL,
  `carrier_ack_id` varchar(100) DEFAULT NULL,
  `carrier_sys_id` varchar(20) DEFAULT NULL,
  `term_carrier` varchar(200) DEFAULT NULL,
  `term_circle` varchar(200) DEFAULT NULL,
  `delv_lat_ori_in_millis` bigint DEFAULT NULL,
  `delv_lat_sla_in_millis` bigint DEFAULT NULL,
  `overall_lat_in_millis` bigint DEFAULT NULL,
  `dlr_type` tinyint(1) DEFAULT NULL,
  `dn_ori_sts_code` varchar(5) NOT NULL,
  `dn_cli_sts_code` varchar(5) NOT NULL,
  `dn_ori_sts_desc` varchar(100) NOT NULL,
  `dn_cli_sts_desc` varchar(100) NOT NULL,
  `car_ori_sts_code` varchar(5) DEFAULT NULL,
  `car_ori_sts_desc` varchar(10) DEFAULT NULL,
  `car_sts_code` varchar(100) DEFAULT NULL,
  `car_sts_desc` varchar(100) DEFAULT NULL,
  `retry_ori_route_id` varchar(6) DEFAULT NULL,
  `retry_alt_route_id` varchar(6) DEFAULT NULL,
  `delivery_status` varchar(10) DEFAULT NULL,
  `car_delivery_status` varchar(10) DEFAULT NULL COMMENT 'Carrier Delivery Status',
  `sms_rate` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'Sms rate per message',
  `dlt_rate` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `billing_sms_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000',
  `billing_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Billing Additional Fixed Rate',
  `base_sms_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Base SMS Rate',
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Base Additional Fixed Rate',
  `ref_sms_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Refrence SMS Rate',
  `ref_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Refrence Additional Fixed Rate',
  KEY `del_file_id` (`file_id`),
  KEY `deliveries_idx` (`msg_id`),
  KEY `base_msg_id` (`base_msg_id`),
  KEY `cli_id` (`cli_id`),
  KEY `recv_date` (`recv_date`),
  KEY `recv_time` (`recv_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dn_post_log`
--

DROP TABLE IF EXISTS `dn_post_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dn_post_log` (
  `cli_id` bigint NOT NULL,
  `msg_id` varchar(25) DEFAULT NULL,
  `dest` bigint DEFAULT NULL COMMENT 'Mobile Mumber',
  `retry_attempt` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `instanceid` varchar(15) DEFAULT NULL,
  `recv_time` datetime(3) DEFAULT NULL COMMENT 'Message Received Time',
  `submit_ts` datetime(3) DEFAULT NULL,
  `response_ts` datetime(3) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `reason` varchar(200) DEFAULT NULL,
  `smpp_system_id` varchar(100) DEFAULT NULL COMMENT 'User Name of the account',
  `cli_ip` varchar(30) DEFAULT NULL COMMENT 'Client Source Ip',
  `carrier_sub_time` datetime(3) DEFAULT NULL COMMENT 'Carrier Submit TIme',
  `dly_time` datetime(3) DEFAULT NULL COMMENT 'DN Received Time',
  KEY `dn_post_log_cts_idx1` (`created_ts`),
  KEY `dn_post_log_dest_idx1` (`dest`),
  KEY `dn_post_log_msg_id_idx1` (`msg_id`),
  KEY `dn_post_recv_time_idx1` (`recv_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dn_post_log`
--

LOCK TABLES `dn_post_log` WRITE;
/*!40000 ALTER TABLE `dn_post_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dn_post_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `full_message`
--

DROP TABLE IF EXISTS `full_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `full_message` (
  `cli_id` varchar(16) NOT NULL,
  `recv_date` date NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `long_msg` mediumtext,
  `created_ts` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `encrypted_long_msg` mediumtext COMMENT 'Encrypted Long Message',
  KEY `base_msg_id` (`base_msg_id`),
  KEY `cli_id` (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `full_message`
--

LOCK TABLES `full_message` WRITE;
/*!40000 ALTER TABLE `full_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `full_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interim_failures`
--

DROP TABLE IF EXISTS `interim_failures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interim_failures` (
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) DEFAULT NULL,
  `msg_id` varchar(25) NOT NULL,
  `dest` bigint DEFAULT NULL,
  `recv_date` date NOT NULL,
  `recv_time` datetime(3) NOT NULL,
  `retry_attempt` tinyint(1) DEFAULT NULL,
  `msg_type` tinyint(1) NOT NULL,
  `route_id` varchar(6) DEFAULT NULL,
  `retry_ori_route_id` varchar(6) DEFAULT NULL,
  `sms_priority` tinyint(1) NOT NULL,
  `carrier_rcvd_time` datetime(3) DEFAULT NULL,
  `carrier_ack_id` varchar(100) DEFAULT NULL,
  `carrier_sys_id` varchar(20) DEFAULT NULL,
  `carrier_full_dn` varchar(2000) DEFAULT NULL,
  `hdr` varchar(15) DEFAULT NULL,
  `msg_part_no` tinyint DEFAULT NULL,
  `bill_type` tinyint(1) NOT NULL,
  `company` varchar(150) DEFAULT NULL,
  `msg_class` varchar(5) DEFAULT NULL,
  `circle` varchar(200) DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `term_carrier` varchar(200) DEFAULT NULL,
  `term_circle` varchar(200) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `alpha` tinyint DEFAULT NULL,
  `dn_ori_sts_code` varchar(5) NOT NULL,
  `dn_ori_sts_desc` varchar(100) NOT NULL,
  `car_ori_sts_code` varchar(5) DEFAULT NULL,
  `car_ori_sts_desc` varchar(100) DEFAULT NULL,
  `msg_credits` decimal(10,3) DEFAULT NULL,
  `dlt_credits` decimal(10,3) DEFAULT NULL,
  `delivery_status` varchar(10) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  KEY `msg_id` (`msg_id`),
  KEY `dest` (`dest`),
  KEY `cli_id` (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interim_failures`
--

LOCK TABLES `interim_failures` WRITE;
/*!40000 ALTER TABLE `interim_failures` DISABLE KEYS */;
/*!40000 ALTER TABLE `interim_failures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepaid_history`
--

DROP TABLE IF EXISTS `prepaid_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepaid_history` (
  `seq_no` bigint NOT NULL AUTO_INCREMENT,
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) DEFAULT NULL,
  `base_msg_id` varchar(25) DEFAULT NULL,
  `msg_id` varchar(25) DEFAULT NULL,
  `process_type` varchar(10) NOT NULL,
  `no_of_parts` tinyint NOT NULL,
  `sms_rate` double(10,4) NOT NULL,
  `dlt_rate` double(10,4) NOT NULL DEFAULT '0.0000',
  `reason` varchar(200) DEFAULT NULL,
  `request_time` datetime(3) NOT NULL,
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepaid_history`
--

LOCK TABLES `prepaid_history` WRITE;
/*!40000 ALTER TABLE `prepaid_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `prepaid_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission` (
  `intf_type` varchar(10) NOT NULL,
  `intf_grp_type` varchar(10) NOT NULL,
  `msg_source` varchar(25) NOT NULL COMMENT 'Message Source',
  `intl_msg` tinyint(1) NOT NULL,
  `cli_id` bigint NOT NULL,
  `msg_type` tinyint(1) NOT NULL,
  `platform_cluster` varchar(10) NOT NULL,
  `sms_priority` tinyint(1) NOT NULL,
  `bill_encrypt_type` tinyint(1) NOT NULL,
  `bill_type` tinyint(1) NOT NULL,
  `app_type` varchar(10) NOT NULL,
  `msg` mediumtext,
  `udhi` tinyint(1) DEFAULT NULL,
  `udh` varchar(15) DEFAULT NULL,
  `dcs` varchar(3) DEFAULT NULL,
  `hdr` varchar(15) DEFAULT NULL,
  `dest` bigint DEFAULT NULL,
  `msg_id` varchar(25) NOT NULL,
  `file_id` varchar(25) DEFAULT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `cli_msg_id` varchar(50) DEFAULT NULL,
  `recv_time` datetime(3) NOT NULL,
  `recv_date` date NOT NULL,
  `act_recv_time` datetime(3) NOT NULL,
  `act_recv_date` date NOT NULL,
  `cli_max_split` tinyint DEFAULT '0',
  `msg_tag` varchar(50) DEFAULT NULL,
  `is_hex_msg` tinyint(1) DEFAULT '0',
  `max_validity_in_sec` int DEFAULT NULL,
  `cli_ip` varchar(30) NOT NULL,
  `msg_class` varchar(5) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `param1` varchar(50) DEFAULT NULL,
  `param2` varchar(50) DEFAULT NULL,
  `param3` varchar(50) DEFAULT NULL,
  `param4` varchar(50) DEFAULT NULL,
  `param5` varchar(50) DEFAULT NULL,
  `param6` varchar(100) DEFAULT NULL,
  `param7` varchar(100) DEFAULT NULL,
  `param8` varchar(100) DEFAULT NULL,
  `param9` varchar(250) DEFAULT NULL,
  `param10` varchar(500) DEFAULT NULL,
  `sch_date_time` datetime DEFAULT NULL,
  `cli_dlt_tmpl_id` bigint DEFAULT NULL,
  `dlt_tmpl_id` bigint DEFAULT NULL,
  `cli_dlt_entity_id` bigint DEFAULT NULL,
  `dlt_entity_id` bigint DEFAULT NULL,
  `app_ins_id` varchar(5) DEFAULT NULL,
  `blkout_type` varchar(10) DEFAULT NULL,
  `msg_part_no` tinyint DEFAULT NULL,
  `total_msg_parts` tinyint DEFAULT NULL,
  `feature_code` varchar(5) DEFAULT NULL,
  `cli_tmpl_id` bigint DEFAULT NULL,
  `retry_attempt` tinyint(1) DEFAULT NULL,
  `shortner_id` varchar(100) DEFAULT NULL,
  `msg_shortned` tinyint(1) DEFAULT NULL,
  `route_id` varchar(6) DEFAULT NULL,
  `act_route_id` varchar(6) DEFAULT NULL,
  `circle` varchar(200) DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `carrier_sub_time` datetime(3) DEFAULT NULL,
  `act_carrier_sub_time` datetime(3) DEFAULT NULL,
  `aplha_value` varchar(15) DEFAULT NULL,
  `cli_hdr` varchar(15) DEFAULT NULL,
  `intf_country_code` varchar(5) DEFAULT NULL,
  `route_logic_id` varchar(3) DEFAULT NULL,
  `masked_hdr` varchar(15) DEFAULT NULL,
  `smsc_id` varchar(20) DEFAULT NULL,
  `dlr_type` tinyint(1) DEFAULT NULL,
  `encrypted_msg` mediumtext,
  `encrypted_dest` varchar(100) DEFAULT NULL,
  `sub_lat_ori_in_millis` bigint DEFAULT NULL,
  `sub_lat_sla_in_millis` bigint DEFAULT NULL,
  `file_name` varchar(500) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `campaign_name` varchar(50) DEFAULT NULL,
  `msg_tag1` varchar(50) DEFAULT NULL,
  `msg_tag2` varchar(50) DEFAULT NULL,
  `msg_tag3` varchar(50) DEFAULT NULL,
  `msg_tag4` varchar(50) DEFAULT NULL,
  `msg_tag5` varchar(50) DEFAULT NULL,
  `sub_ori_sts_code` varchar(5) NOT NULL,
  `sub_cli_sts_code` varchar(5) NOT NULL,
  `sub_ori_sts_desc` varchar(100) NOT NULL,
  `sub_cli_sts_desc` varchar(100) NOT NULL,
  `sub_status` varchar(10) DEFAULT NULL COMMENT 'Submission Status',
  `sms_rate` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'SMS Rate per message',
  `dlt_rate` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'Dlt rate per message',
  `add_error_info` mediumtext,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `billing_currency` varchar(3) NOT NULL COMMENT 'billing currency',
  `billing_sms_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000',
  `billing_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Billing Additional Fixed Rate',
  `base_currency` varchar(3) NOT NULL COMMENT 'Base Currency',
  `base_sms_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Base SMS Rate',
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Base Additional Fixed Rate',
  `ref_currency` varchar(3) NOT NULL COMMENT 'Refrence Currency',
  `ref_sms_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Refrence SMS Rate',
  `ref_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Refrence Additional Fixed Rate',
  `billing_exchange_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Billing Exchange Rate',
  `ref_exchange_rate` decimal(16,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Refrece Exchange Rate',
  `smpp_recv_time` datetime(3) DEFAULT NULL COMMENT 'Smpp Actival Received Time',
  `mcc` varchar(10) DEFAULT NULL,
  `mnc` varchar(10) DEFAULT NULL,
  `segment` varchar(25) DEFAULT NULL,
  KEY `sub_file_id` (`file_id`),
  KEY `submission_idx` (`msg_id`),
  KEY `base_msg_id` (`base_msg_id`),
  KEY `cli_id` (`cli_id`),
  KEY `recv_date` (`recv_date`),
  KEY `recv_time` (`recv_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  6:33:22
