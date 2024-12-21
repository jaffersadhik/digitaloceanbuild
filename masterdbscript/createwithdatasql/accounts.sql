-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.165    Database: accounts
-- ------------------------------------------------------
-- Server version	10.5.5-MariaDB-1:10.5.5+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `accounts_view`
--

DROP TABLE IF EXISTS `accounts_view`;
/*!50001 DROP VIEW IF EXISTS `accounts_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `accounts_view` (
  `cli_id` tinyint NOT NULL,
  `firstname` tinyint NOT NULL,
  `lastname` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `mobile` tinyint NOT NULL,
  `company` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `ui_pass` tinyint NOT NULL,
  `api_pass` tinyint NOT NULL,
  `smpp_pass` tinyint NOT NULL,
  `user_type` tinyint NOT NULL,
  `pu_id` tinyint NOT NULL,
  `su_id` tinyint NOT NULL,
  `first_activation_date` tinyint NOT NULL,
  `activation_date` tinyint NOT NULL,
  `acc_status` tinyint NOT NULL,
  `msg_type` tinyint NOT NULL,
  `acc_route_id` tinyint NOT NULL,
  `platform_cluster` tinyint NOT NULL,
  `sms_priority` tinyint NOT NULL,
  `newline_replace_char` tinyint NOT NULL,
  `is_16bit_udh` tinyint NOT NULL,
  `acknowledge_id_length` tinyint NOT NULL,
  `client_encrypt` tinyint NOT NULL,
  `bill_encrypt_type` tinyint NOT NULL,
  `domestic_promo_trai_blockout_purge` tinyint NOT NULL,
  `domestic_sms_blockout` tinyint NOT NULL,
  `domestic_sms_blockout_start` tinyint NOT NULL,
  `domestic_sms_blockout_stop` tinyint NOT NULL,
  `dlt_templ_grp_id` tinyint NOT NULL,
  `dup_chk_req` tinyint NOT NULL,
  `dup_chk_interval` tinyint NOT NULL,
  `intl_sms_blockout` tinyint NOT NULL,
  `intl_sms_blockout_start` tinyint NOT NULL,
  `intl_sms_blockout_stop` tinyint NOT NULL,
  `retry_alter_route_lookup` tinyint NOT NULL,
  `time_zone` tinyint NOT NULL,
  `time_offset` tinyint NOT NULL,
  `two_level_auth` tinyint NOT NULL,
  `credit_check` tinyint NOT NULL,
  `ip_validation` tinyint NOT NULL,
  `ip_list` tinyint NOT NULL,
  `mt_adjust` tinyint NOT NULL,
  `dn_adjust` tinyint NOT NULL,
  `dnd_reject_yn` tinyint NOT NULL,
  `vl_shortner` tinyint NOT NULL,
  `last_pwd_change` tinyint NOT NULL,
  `is_schedule_allow` tinyint NOT NULL,
  `uc_iden_allow` tinyint NOT NULL,
  `uc_iden_char_len` tinyint NOT NULL,
  `uc_iden_occur` tinyint NOT NULL,
  `is_remove_uc_chars` tinyint NOT NULL,
  `url_smartlink_enable` tinyint NOT NULL,
  `is_url_track` tinyint NOT NULL,
  `sc_len` tinyint NOT NULL,
  `acc_is_async` tinyint NOT NULL,
  `use_default_header` tinyint NOT NULL,
  `acc_default_header` tinyint NOT NULL,
  `use_default_on_header_fail` tinyint NOT NULL,
  `dnd_pref` tinyint NOT NULL,
  `bill_type` tinyint NOT NULL,
  `dnd_chk` tinyint NOT NULL,
  `spam_chk` tinyint NOT NULL,
  `blklist_chk` tinyint NOT NULL,
  `sms_retry_available` tinyint NOT NULL,
  `sms_bill_on_sub` tinyint NOT NULL,
  `sales_id` tinyint NOT NULL,
  `considerdefaultlength_as_domestic` tinyint NOT NULL,
  `domestic_tra_blockout_reject` tinyint NOT NULL,
  `timebound_chk_enable` tinyint NOT NULL,
  `timebound_interval` tinyint NOT NULL,
  `timebound_max_count_allow` tinyint NOT NULL,
  `sms_rate` tinyint NOT NULL,
  `dlt_rate` tinyint NOT NULL,
  `base_sms_rate` tinyint NOT NULL,
  `base_add_fixed_rate` tinyint NOT NULL,
  `domestic_special_series_allow` tinyint NOT NULL,
  `req_hex_msg` tinyint NOT NULL,
  `billing_currency` tinyint NOT NULL,
  `acc_type` tinyint NOT NULL,
  `invoice_based_on` tinyint NOT NULL,
  `billing_currency_conv_type` tinyint NOT NULL,
  `is_ildo` tinyint NOT NULL,
  `force_dnd_check` tinyint NOT NULL,
  `created_ts` tinyint NOT NULL,
  `created_user` tinyint NOT NULL,
  `updated_ts` tinyint NOT NULL,
  `modified_user` tinyint NOT NULL,
  `optin_chk_req` tinyint NOT NULL,
  `msg_retry_available` tinyint NOT NULL,
  `capping_chk_enable` tinyint NOT NULL,
  `capping_interval_type` tinyint NOT NULL,
  `capping_interval` tinyint NOT NULL,
  `capping_max_count_allow` tinyint NOT NULL,
  `credit_limit` tinyint NOT NULL,
  `msg_replace_chk` tinyint NOT NULL,
  `expiry_date` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `api_custom_response`
--

DROP TABLE IF EXISTS `api_custom_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_custom_response` (
  `seq_no` bigint(10) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) NOT NULL,
  `api_req_type` varchar(50) NOT NULL,
  `response_template` text NOT NULL,
  `res_content_type` varchar(50) NOT NULL DEFAULT 'text/json',
  `date_time_format` varchar(50) NOT NULL DEFAULT 'yyyy-MM-dd HH:mm:ss.SSS',
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `api_custom_response_UN` (`cli_id`,`api_req_type`),
  CONSTRAINT `api_custom_response_FK` FOREIGN KEY (`cli_id`) REFERENCES `user_config` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_custom_response`
--

LOCK TABLES `api_custom_response` WRITE;
/*!40000 ALTER TABLE `api_custom_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_custom_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_custom_response_error_code_mapping`
--

DROP TABLE IF EXISTS `api_custom_response_error_code_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_custom_response_error_code_mapping` (
  `parent_seq_no` bigint(10) NOT NULL,
  `intf_status_code` varchar(5) NOT NULL,
  `cli_status_code` varchar(6) DEFAULT NULL,
  `cli_reason` varchar(100) DEFAULT NULL,
  `cli_status_info` varchar(20) DEFAULT NULL,
  `cli_http_status_code` int(5) DEFAULT 200,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`parent_seq_no`,`intf_status_code`),
  CONSTRAINT `api_custom_response_error_code_mapping_FK` FOREIGN KEY (`parent_seq_no`) REFERENCES `api_custom_response` (`seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_custom_response_error_code_mapping`
--

LOCK TABLES `api_custom_response_error_code_mapping` WRITE;
/*!40000 ALTER TABLE `api_custom_response_error_code_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_custom_response_error_code_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_dlr_query_config`
--

DROP TABLE IF EXISTS `client_dlr_query_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_dlr_query_config` (
  `cli_id` bigint(16) NOT NULL COMMENT 'Client Id',
  `multiparam_delimeter` varchar(3) NOT NULL DEFAULT '~' COMMENT 'Multiple Values delimeter',
  `response_format` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - xml, 1 - json',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_dlr_query_config`
--

LOCK TABLES `client_dlr_query_config` WRITE;
/*!40000 ALTER TABLE `client_dlr_query_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_dlr_query_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_dntype_config`
--

DROP TABLE IF EXISTS `client_dntype_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_dntype_config` (
  `cli_id` bigint(16) NOT NULL,
  `dn_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0-Disable, 1-Single, 2-Final dn (Not Implemented)',
  `expiry_in_sec` int(10) NOT NULL COMMENT 'Configure dn expiry time',
  `dn_status_category` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1- All success, 2- Any one Success',
  `dn_handover_basedon` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - TimeStamp , 1- Part Number',
  `handover_msg_part` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - First , 1 - Last ',
  `handover_success_only` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Any Status, 1 - Success only (This is applicable only for any one success in DN Status category)',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_dntype_config`
--

LOCK TABLES `client_dntype_config` WRITE;
/*!40000 ALTER TABLE `client_dntype_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_dntype_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_config_master`
--

DROP TABLE IF EXISTS `client_handover_config_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_handover_config_master` (
  `cli_id` bigint(16) NOT NULL,
  `app` varchar(5) NOT NULL,
  `request_interface` varchar(10) NOT NULL,
  `dlr_enabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-always off,1-always on,2-based on explicit request',
  `dlr_handover_mode` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-No Handover,1-HTTP, 2-SMPP, 3-FTP',
  `client_specific_http_topic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-> Disabled, 1->Enabled',
  `dlr_query_enabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_success` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_carrier_failure` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_platform_fail` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_to_su` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Disable, 1- Admin User, 2- Super User',
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(20) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  `modified_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cli_id`,`app`,`request_interface`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_config_master`
--

LOCK TABLES `client_handover_config_master` WRITE;
/*!40000 ALTER TABLE `client_handover_config_master` DISABLE KEYS */;
INSERT INTO `client_handover_config_master` VALUES (4000001100000000,'sms','smpp',1,1,0,0,1,1,1,0,'2024-10-09 15:31:31',NULL,'2024-10-09 15:31:31',NULL);
/*!40000 ALTER TABLE `client_handover_config_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_config_master_12jul2022`
--

DROP TABLE IF EXISTS `client_handover_config_master_12jul2022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_handover_config_master_12jul2022` (
  `cli_id` bigint(16) NOT NULL,
  `app` varchar(5) CHARACTER SET latin1 NOT NULL,
  `request_interface` varchar(10) CHARACTER SET latin1 NOT NULL,
  `dlr_enabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-always off,1-always on,2-based on explicit request',
  `dlr_handover_mode` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-No Handover,1-HTTP, 2-SMPP, 3-FTP',
  `client_specific_http_topic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-> Disabled, 1->Enabled',
  `dlr_query_enabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_success` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_carrier_failure` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_platform_fail` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_to_su` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Disable, 1- Admin User, 2- Super User',
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  `modified_user` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_config_master_12jul2022`
--

LOCK TABLES `client_handover_config_master_12jul2022` WRITE;
/*!40000 ALTER TABLE `client_handover_config_master_12jul2022` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_config_master_12jul2022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_features`
--

DROP TABLE IF EXISTS `custom_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_features` (
  `cli_id` bigint(20) NOT NULL,
  `feature` varchar(250) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`cli_id`,`feature`),
  KEY `custom_features_FK` (`feature`),
  CONSTRAINT `custom_features_FK` FOREIGN KEY (`feature`) REFERENCES `feature_desc` (`feature`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_features`
--

LOCK TABLES `custom_features` WRITE;
/*!40000 ALTER TABLE `custom_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_event_log`
--

DROP TABLE IF EXISTS `data_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_event_log` (
  `seq_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `primary_column_value` varchar(100) NOT NULL,
  `record_status` int(1) NOT NULL COMMENT '0->Insert; 1->Update; 2->Delete',
  `is_processed` int(1) NOT NULL DEFAULT 0 COMMENT '0->Yet to process; 1->Processed',
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_event_log`
--

LOCK TABLES `data_event_log` WRITE;
/*!40000 ALTER TABLE `data_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_group`
--

DROP TABLE IF EXISTS `dlt_template_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_group` (
  `template_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `template_group_name` varchar(100) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`template_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000000124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_group`
--

LOCK TABLES `dlt_template_group` WRITE;
/*!40000 ALTER TABLE `dlt_template_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_group_20211016`
--

DROP TABLE IF EXISTS `dlt_template_group_20211016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_group_20211016` (
  `template_group_id` bigint(20) NOT NULL,
  `template_group_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_group_20211016`
--

LOCK TABLES `dlt_template_group_20211016` WRITE;
/*!40000 ALTER TABLE `dlt_template_group_20211016` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_group_20211016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_group_header_entity_map`
--

DROP TABLE IF EXISTS `dlt_template_group_header_entity_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_group_header_entity_map` (
  `template_group_id` bigint(20) NOT NULL,
  `header` varchar(15) NOT NULL,
  `template_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `entity_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `is_numeric_header` tinyint(4) DEFAULT 0,
  `cts` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `dlt_template_master_UN` (`template_group_id`,`template_id`,`header`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_group_header_entity_map`
--

LOCK TABLES `dlt_template_group_header_entity_map` WRITE;
/*!40000 ALTER TABLE `dlt_template_group_header_entity_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_group_header_entity_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_group_header_entity_map_20211025`
--

DROP TABLE IF EXISTS `dlt_template_group_header_entity_map_20211025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_group_header_entity_map_20211025` (
  `template_group_id` bigint(20) NOT NULL,
  `header` varchar(10) CHARACTER SET latin1 NOT NULL,
  `template_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `entity_id` varchar(19) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_group_header_entity_map_20211025`
--

LOCK TABLES `dlt_template_group_header_entity_map_20211025` WRITE;
/*!40000 ALTER TABLE `dlt_template_group_header_entity_map_20211025` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_group_header_entity_map_20211025` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_info`
--

DROP TABLE IF EXISTS `dlt_template_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_info` (
  `template_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `template_content` text NOT NULL,
  `is_static` tinyint(1) DEFAULT NULL COMMENT '0-dynamic, 1-static',
  `pattern_type` tinyint(1) NOT NULL COMMENT '0-PM, 1-UC, 2-FLPlain,3-FLUni',
  `template_type` varchar(30) CHARACTER SET latin1 NOT NULL COMMENT 'Transactional, Promotional, Service-Implicit, Service-Explicit',
  `language` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'language type if pattern_type is UC',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `telemarketer` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `template_name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `registered_dlt` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `registered_on` datetime DEFAULT NULL,
  `status_date` datetime DEFAULT NULL,
  `approval_status` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `consent_type` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `template_content_ori` text DEFAULT NULL,
  `fileloc` varchar(550) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_info`
--

LOCK TABLES `dlt_template_info` WRITE;
/*!40000 ALTER TABLE `dlt_template_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_info_20211019`
--

DROP TABLE IF EXISTS `dlt_template_info_20211019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_info_20211019` (
  `template_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `template_content` text CHARACTER SET latin1 NOT NULL,
  `pattern_type` tinyint(1) NOT NULL COMMENT '0-PM, 1-UC, 2-FLPlain,3-FLUni',
  `template_type` varchar(30) CHARACTER SET latin1 NOT NULL COMMENT 'Transactional, Promotional, Service-Implicit, Service-Explicit',
  `language` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'language type if pattern_type is UC',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `telemarketer` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `template_name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `registered_dlt` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `registered_on` datetime DEFAULT NULL,
  `status_date` datetime DEFAULT NULL,
  `approval_status` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `consent_type` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `template_content_ori` text DEFAULT NULL,
  `fileloc` varchar(550) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_info_20211019`
--

LOCK TABLES `dlt_template_info_20211019` WRITE;
/*!40000 ALTER TABLE `dlt_template_info_20211019` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_info_20211019` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_info_20211213`
--

DROP TABLE IF EXISTS `dlt_template_info_20211213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_info_20211213` (
  `template_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `template_content` text NOT NULL,
  `pattern_type` tinyint(1) NOT NULL COMMENT '0-PM, 1-UC, 2-FLPlain,3-FLUni',
  `template_type` varchar(30) CHARACTER SET latin1 NOT NULL COMMENT 'Transactional, Promotional, Service-Implicit, Service-Explicit',
  `language` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'language type if pattern_type is UC',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `telemarketer` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `template_name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `registered_dlt` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `registered_on` datetime DEFAULT NULL,
  `status_date` datetime DEFAULT NULL,
  `approval_status` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `consent_type` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `template_content_ori` text DEFAULT NULL,
  `fileloc` varchar(550) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_info_20211213`
--

LOCK TABLES `dlt_template_info_20211213` WRITE;
/*!40000 ALTER TABLE `dlt_template_info_20211213` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_info_20211213` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_prefix_suffix`
--

DROP TABLE IF EXISTS `dlt_template_prefix_suffix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlt_template_prefix_suffix` (
  `template_type` varchar(30) NOT NULL COMMENT 'Transactional, Promotional, Service-Implicit, Service-Explicit',
  `msg_prefix` varchar(100) NOT NULL,
  `msg_suffix` varchar(100) NOT NULL,
  PRIMARY KEY (`template_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_prefix_suffix`
--

LOCK TABLES `dlt_template_prefix_suffix` WRITE;
/*!40000 ALTER TABLE `dlt_template_prefix_suffix` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_prefix_suffix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_desc`
--

DROP TABLE IF EXISTS `feature_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_desc` (
  `feature` varchar(250) NOT NULL,
  `desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`feature`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_desc`
--

LOCK TABLES `feature_desc` WRITE;
/*!40000 ALTER TABLE `feature_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `no_payload_dn_retry`
--

DROP TABLE IF EXISTS `no_payload_dn_retry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `no_payload_dn_retry` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `payload_rid` int(2) NOT NULL,
  `expiry_count` int(10) NOT NULL DEFAULT 0 COMMENT 'Expiry the record max config count reaches',
  `cluster` varchar(10) DEFAULT NULL,
  `dn_payload` mediumtext DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_payload_dn_retry`
--

LOCK TABLES `no_payload_dn_retry` WRITE;
/*!40000 ALTER TABLE `no_payload_dn_retry` DISABLE KEYS */;
/*!40000 ALTER TABLE `no_payload_dn_retry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepaid_recharge`
--

DROP TABLE IF EXISTS `prepaid_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prepaid_recharge` (
  `id` BIGINT(19) NOT NULL AUTO_INCREMENT,
  `cli_id` BIGINT(18) NOT NULL,
  `prev_balance` DOUBLE(16,4) NOT NULL DEFAULT 0.0000,
  `recharge_amount` DOUBLE(16,4) NOT NULL,
  `recharge_type` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0-Add to existing amount, 1-Add as a new amount, 2-Reset old amount',
  `recharge_done_by` VARCHAR(100) NOT NULL,
  `recharge_date` DATE NOT NULL DEFAULT (CURRENT_DATE),
  `recharge_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_ts` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepaid_recharge`
--

LOCK TABLES `prepaid_recharge` WRITE;
/*!40000 ALTER TABLE `prepaid_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `prepaid_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service` varchar(50) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES ('sms','SMS','2021-07-14 10:58:25','2021-07-14 10:58:25');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `su_config`
--

DROP TABLE IF EXISTS `su_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `su_config` (
  `cli_id` bigint(16) NOT NULL COMMENT 'Client Id for Super User',
  `bill_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Postpaid, 1-Prepaid',
  `msg_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Promotional, 1-Tansactional',
  `acc_status` tinyint(1) DEFAULT 0 COMMENT 'ACTIVE(0), DEACTIVATED(1), EXPIRY(2), SUSPENDED(3), INACTIVE(4)',
  `acc_route_id` varchar(6) DEFAULT NULL COMMENT 'Default route id for the client',
  `platform_cluster` varchar(10) DEFAULT NULL COMMENT 'Account belongs to the specific cluster',
  `sms_priority` tinyint(1) NOT NULL DEFAULT 5 COMMENT 'Default SMS priority',
  `sms_retry_available` tinyint(1) DEFAULT 0 COMMENT '0-Retry Not available,1-global, 2-same route, 3-custom',
  `sms_bill_on_sub` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Not available, 1-Available',
  `newline_replace_char` varchar(3) DEFAULT NULL COMMENT 'A set of characters to be replaced as a new line in the request',
  `is_16bit_udh` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Disabled, 1-Enabled. Used to create UDH Generation for multipart messages',
  `acknowledge_id_length` tinyint(2) DEFAULT 22 COMMENT 'Length of the acknowledge id given to client',
  `client_encrypt` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'On request Message (Message only) encryoted. 0-Disabled, 1-Encrypted',
  `bill_encrypt_type` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Encrypt Messages only 2-Encrypt Mobile Only, 3- Encrypt Message and Mobile',
  `domestic_promo_trai_blockout_purge` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Process the domestic message in next day, 1-Discard the message',
  `domestic_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the domestic message after blockout time, 2-Discard the message with in the blockout time',
  `domestic_sms_blockout_start` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout start time for Domestic Message',
  `domestic_sms_blockout_stop` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout end time for Domestic Message',
  `dlt_templ_grp_id` bigint(20) DEFAULT NULL,
  `dnd_chk` tinyint(1) DEFAULT 0 COMMENT '0-Disabled,1-Enabled',
  `dnd_pref` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'DND Preferences for this client',
  `blklist_chk` tinyint(1) DEFAULT 1 COMMENT '0-Disabled, 1-Enabled. If enabled refer the global mobile block for blocking',
  `spam_chk` tinyint(1) DEFAULT 2 COMMENT '0-Disabled, 1-Enabled, 2-Enabled and log the spam information',
  `dup_chk_req` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Disabled, 1-Enabled based on Client Ref Id, 2-Enabled based on Mobile and Message',
  `dup_chk_interval` int(10) NOT NULL DEFAULT 0 COMMENT 'Interval time for the duplicate check.',
  `intl_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the international message after blockout time, 2-Discard the message with in the blockout time',
  `intl_sms_blockout_start` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout start time for international Message',
  `intl_sms_blockout_stop` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout end time for international Message',
  `retry_alter_route_lookup` tinyint(1) DEFAULT 1 COMMENT '0-Disabled, 1-Enabled',
  `time_zone` varchar(200) DEFAULT NULL COMMENT 'Default timezone for the Client',
  `time_offset` varchar(10) DEFAULT NULL COMMENT 'Timezone offset value from GMT',
  `two_level_auth` tinyint(1) DEFAULT 0,
  `mt_adjust` int(1) DEFAULT 0,
  `dn_adjust` int(1) DEFAULT 0,
  `optin_chk_req` tinyint(1) NOT NULL DEFAULT 0,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(50) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  `modified_user` varchar(50) DEFAULT NULL,
  `sales_id` int(10) NOT NULL DEFAULT 0,
  `credit_check` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `credit_limit` decimal(16,4) NOT NULL DEFAULT 0.0000 COMMENT 'Max Credit Limit for Post Paid Customers',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_config`
--

LOCK TABLES `su_config` WRITE;
/*!40000 ALTER TABLE `su_config` DISABLE KEYS */;
INSERT INTO `su_config` VALUES (4000001100000000,0,1,0,NULL,NULL,5,0,1,NULL,0,22,0,0,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,NULL,1,'Asia/Calcutta','+05:30',0,0,0,0,'2021-10-12 18:34:12',NULL,'2021-10-12 18:34:12',NULL,8,0,0.0000);
/*!40000 ALTER TABLE `su_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER accounts.su_config_on_insert 
AFTER insert
	ON
	accounts.su_config FOR EACH ROW 
	INSERT
		into
		configuration.data_event_log (table_name,
		primary_column_value,
		record_status,
		is_processed) value('su_config',
		NEW.cli_id,
		'1',
		'0') */;;
DELIMITER ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER accounts.su_config_on_update 
AFTER update
	ON
	accounts.su_config FOR EACH ROW 
	INSERT
		into
		configuration.data_event_log (table_name,
		primary_column_value,
		record_status,
		is_processed) value('su_config',
		NEW.cli_id,
		'2',
		'0') */;;
DELIMITER ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER accounts.su_config_on_delete 
AFTER delete
	ON
	accounts.su_config FOR EACH ROW 
	INSERT
		into
		configuration.data_event_log (table_name,
		primary_column_value,
		record_status,
		is_processed) value('su_config',
		old.cli_id,
		'3',
		'0') */;;
DELIMITER ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `su_config_22feb2022`
--

DROP TABLE IF EXISTS `su_config_22feb2022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `su_config_22feb2022` (
  `cli_id` bigint(16) NOT NULL COMMENT 'Client Id for Super User',
  `bill_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Postpaid, 1-Prepaid',
  `msg_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Promotional, 1-Tansactional',
  `acc_status` tinyint(1) DEFAULT 0 COMMENT 'ACTIVE(0), DEACTIVATED(1), EXPIRY(2), SUSPENDED(3), INACTIVE(4)',
  `acc_route_id` varchar(6) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Default route id for the client',
  `platform_cluster` varchar(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Account belongs to the specific cluster',
  `sms_priority` tinyint(1) NOT NULL DEFAULT 5 COMMENT 'Default SMS priority',
  `sms_retry_available` tinyint(1) DEFAULT 0 COMMENT '0-Retry Not available,1-global, 2-same route, 3-custom',
  `sms_bill_on_sub` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Not available, 1-Available',
  `newline_replace_char` varchar(3) CHARACTER SET latin1 DEFAULT NULL COMMENT 'A set of characters to be replaced as a new line in the request',
  `is_16bit_udh` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Disabled, 1-Enabled. Used to create UDH Generation for multipart messages',
  `acknowledge_id_length` tinyint(2) DEFAULT 22 COMMENT 'Length of the acknowledge id given to client',
  `client_encrypt` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'On request Message (Message only) encryoted. 0-Disabled, 1-Encrypted',
  `bill_encrypt_type` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Encrypt Messages only 2-Encrypt Mobile Only, 3- Encrypt Message and Mobile',
  `smpp_bind_type` varchar(10) CHARACTER SET latin1 DEFAULT 'TRx' COMMENT 'Tx, Rx, TRx',
  `smpp_max_allowed_connections` tinyint(4) DEFAULT 0 COMMENT 'Maximum binds allowed for this client',
  `smpp_max_speed` int(5) DEFAULT 0 COMMENT 'Maximum speed allows for this client',
  `smpp_charset` varchar(25) CHARACTER SET latin1 DEFAULT 'ISO-8859' COMMENT 'Charset used while receiving the request from the client',
  `domestic_promo_trai_blockout_purge` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Process the domestic message in next day, 1-Discard the message',
  `domestic_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the domestic message after blockout time, 2-Discard the message with in the blockout time',
  `domestic_sms_blockout_start` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout start time for Domestic Message',
  `domestic_sms_blockout_stop` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout end time for Domestic Message',
  `dlt_templ_grp_id` bigint(20) DEFAULT NULL,
  `dnd_chk` tinyint(1) DEFAULT 0 COMMENT '0-Disabled,1-Enabled',
  `dnd_pref` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'DND Preferences for this client',
  `blklist_chk` tinyint(1) DEFAULT 1 COMMENT '0-Disabled, 1-Enabled. If enabled refer the global mobile block for blocking',
  `spam_chk` tinyint(1) DEFAULT 2 COMMENT '0-Disabled, 1-Enabled, 2-Enabled and log the spam information',
  `dup_chk_req` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Disabled, 1-Enabled based on Client Ref Id, 2-Enabled based on Mobile and Message',
  `dup_chk_interval` int(10) NOT NULL DEFAULT 0 COMMENT 'Interval time for the duplicate check.',
  `intl_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the international message after blockout time, 2-Discard the message with in the blockout time',
  `intl_sms_blockout_start` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout start time for international Message',
  `intl_sms_blockout_stop` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout end time for international Message',
  `retry_alter_route_lookup` tinyint(1) DEFAULT 1 COMMENT '0-Disabled, 1-Enabled',
  `time_zone` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Default timezone for the Client',
  `time_offset` varchar(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Timezone offset value from GMT',
  `two_level_auth` tinyint(1) DEFAULT 0,
  `mt_adjust` int(1) DEFAULT 0,
  `dn_adjust` int(1) DEFAULT 0,
  `optin_chk_req` tinyint(1) NOT NULL DEFAULT 0,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  `modified_user` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sales_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_config_22feb2022`
--

LOCK TABLES `su_config_22feb2022` WRITE;
/*!40000 ALTER TABLE `su_config_22feb2022` DISABLE KEYS */;
/*!40000 ALTER TABLE `su_config_22feb2022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_service`
--

DROP TABLE IF EXISTS `sub_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_service` (
  `service` varchar(50) NOT NULL,
  `sub_service` varchar(50) NOT NULL,
  `sub_service_name` varchar(50) NOT NULL,
  `sub_service_desc` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - Enable, 0 - Disable',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`service`,`sub_service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_service`
--

LOCK TABLES `sub_service` WRITE;
/*!40000 ALTER TABLE `sub_service` DISABLE KEYS */;
INSERT INTO `sub_service` VALUES ('sms','api','API','Messaging over HTTPS Protocol',1,'2021-07-16 20:11:11','2021-07-16 20:11:11'),('sms','cm','Campaign UI','UI for running campaigns and more',1,'2021-07-17 10:16:08','2021-07-17 10:16:08'),('sms','international','INTL','Support for international sms delivery',1,'2021-07-14 10:58:52','2021-07-14 10:58:52'),('sms','smpp','SMPP','Messaging over SMPP Protocol',1,'2021-07-14 11:01:08','2021-07-14 11:01:08');
/*!40000 ALTER TABLE `sub_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_config`
--

DROP TABLE IF EXISTS `user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_config` (
  `cli_id` bigint(16) NOT NULL COMMENT 'Client Id for User',
  `firstname` varchar(50) DEFAULT NULL COMMENT 'First Name of the client',
  `lastname` varchar(50) DEFAULT NULL COMMENT 'Last Name of the client',
  `email` varchar(100) DEFAULT NULL COMMENT 'Email id for the client',
  `mobile` bigint(15) DEFAULT NULL COMMENT 'Mobile number for the client',
  `company` varchar(200) DEFAULT NULL COMMENT 'Company of the client',
  `address` varchar(200) DEFAULT NULL,
  `user` varchar(50) NOT NULL COMMENT 'Username for this User',
  `ui_pass` varchar(100) NOT NULL COMMENT 'Password for UI Customer',
  `api_pass` varchar(100) NOT NULL DEFAULT 'mgMitUQEQXQY8n8icGQNLGdPbDJTelRya3HockS6fHWBNzq/L0seqINs' COMMENT 'Password for API Customer',
  `smpp_pass` varchar(100) NOT NULL DEFAULT '5hu0iYPlsgzzyLF8fl7KXWtJTDExNzIha0oEvGKCGlDB0bPbZ8yQ0cgz' COMMENT 'Password for SMPP Customer',
  `user_type` tinyint(1) NOT NULL COMMENT '0-Super User,1-Admin User, 2-User. Type of the User.',
  `pu_id` bigint(16) NOT NULL COMMENT 'Parent User Id',
  `su_id` bigint(16) NOT NULL COMMENT 'Super User Id',
  `first_activation_date` datetime DEFAULT current_timestamp() COMMENT 'First activation date',
  `activation_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Last activation date',
  `acc_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'ACTIVE(0), DEACTIVATED(1), EXPIRY(2), SUSPENDED(3), INACTIVE(4), INVALID(5)',
  `acc_route_id` varchar(6) DEFAULT NULL COMMENT 'Default route id for the client',
  `platform_cluster` varchar(10) DEFAULT NULL COMMENT 'Account belongs to the specific Platform cluster',
  `sms_priority` tinyint(1) DEFAULT NULL COMMENT 'Default SMS priority',
  `newline_replace_char` varchar(3) DEFAULT NULL COMMENT 'A set of characters to be replaced as a new line in the request',
  `is_16bit_udh` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled. Used to create UDH Generation for multipart messages',
  `acknowledge_id_length` tinyint(2) DEFAULT NULL COMMENT 'Length of the acknowledge id given to Client',
  `client_encrypt` tinyint(1) DEFAULT NULL COMMENT 'On request Message (Message only) encryoted. 0-Disabled, 1-Encrypted',
  `bill_encrypt_type` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled ( Refer configuration.client_crypto_info table)',
  `domestic_promo_trai_blockout_purge` tinyint(1) DEFAULT NULL COMMENT '0-Process the domestic message in next day, 1-Discard the message',
  `domestic_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the domestic message after blockout time, 2-Discard the message with in the blockout time',
  `domestic_sms_blockout_start` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout start time for Domestic Message',
  `domestic_sms_blockout_stop` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout end time for Domestic Message',
  `dlt_templ_grp_id` bigint(20) DEFAULT NULL,
  `dup_chk_req` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled based on Client Ref Id, 2-Enabled based on Mobile and Message',
  `dup_chk_interval` int(10) DEFAULT NULL COMMENT 'Interval time for the duplicate check.',
  `intl_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the international message after blockout time, 2-Discard the message with in the blockout time',
  `intl_sms_blockout_start` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout start time for international Message',
  `intl_sms_blockout_stop` varchar(5) DEFAULT NULL COMMENT 'Client specific blockout end time for international Message',
  `retry_alter_route_lookup` tinyint(1) DEFAULT 1 COMMENT '0-Disabled, 1-Enabled',
  `time_zone` varchar(200) DEFAULT NULL COMMENT 'Default timezone for the Client',
  `time_offset` varchar(10) DEFAULT NULL COMMENT 'Timezone offset value from GMT',
  `two_level_auth` tinyint(1) DEFAULT NULL,
  `ip_validation` tinyint(1) NOT NULL DEFAULT 0,
  `ip_list` varchar(2000) DEFAULT NULL,
  `mt_adjust` int(1) DEFAULT 0,
  `dn_adjust` int(1) DEFAULT 0,
  `dnd_reject_yn` tinyint(1) DEFAULT 0,
  `vl_shortner` tinyint(1) DEFAULT 0,
  `msg_replace_chk` tinyint(1) NOT NULL DEFAULT 0,
  `is_schedule_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Allowed',
  `uc_iden_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disable, 1 - Enable',
  `uc_iden_char_len` tinyint(2) NOT NULL DEFAULT 1 COMMENT 'Number of characters to identify the Unicode Message',
  `uc_iden_occur` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Number of occurance of consigitive Uinicode char spcified in ''uc_iden_char_len''',
  `is_remove_uc_chars` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Remove identifyed Unicode chars',
  `url_smartlink_enable` tinyint(1) NOT NULL DEFAULT 0,
  `url_track_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `vl_shortcode_len` tinyint(1) NOT NULL DEFAULT 6,
  `is_async` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Sync, 1 - Async',
  `use_default_header` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `use_default_on_header_fail` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled , 1 - Enabled',
  `acc_default_header` varchar(15) NOT NULL DEFAULT 'DEVTST' COMMENT 'Client Default Header',
  `considerdefaultlength_as_domestic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disable, 1 - Enable',
  `domestic_tra_blockout_reject` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Accept During TRAI Blockout at Interface level,1-Reject During TRAI Blockout  at Interface level',
  `timebound_chk_enable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `timebound_interval` int(10) DEFAULT 0 COMMENT 'Time bound interval in seconds',
  `timebound_max_count_allow` int(10) NOT NULL DEFAULT 0 COMMENT 'Time bound max request count allow',
  `sms_rate` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'SMS Rate per message',
  `dlt_rate` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'DLT Rate per message',
  `domestic_special_series_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Domestic Special Numbers allow',
  `req_hex_msg` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Customer Sends Hex String in Message',
  `last_pwd_change` datetime DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(50) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_user` varchar(50) DEFAULT NULL,
  `acc_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-Test, 2-Demo, 0-Production',
  `invoice_based_on` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Submission, 1-Deliveries',
  `base_sms_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Base SMS Rate',
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Base Additionl Fixed Rate',
  `billing_currency_conv_type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 - Monthly , 2 - Daily',
  `is_ildo` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Non ildo, 1 - ildo',
  `dnd_pref` int(1) NOT NULL DEFAULT 0 COMMENT 'DND Preferences for this client',
  `force_dnd_check` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled , 1 - Enable Force DND Check',
  `billing_currency` varchar(3) NOT NULL DEFAULT 'INR' COMMENT 'billing currency value',
  `msg_retry_available` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - No Msg Retry, 1 - Single Part Only, 2 - Single and Multipart , 3 - Partial Failed Retry',
  `capping_chk_enable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `capping_interval_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - None, 1 - Minute, 2 - Hour, 3 - Date, 4 - Week, 5- Month, 6 - Year',
  `capping_interval` int(10) DEFAULT 0 COMMENT 'Capping Interval based on Interval Type',
  `capping_max_count_allow` bigint(15) DEFAULT 0 COMMENT 'Capping Max Count Allow',
  `credit_check` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `credit_limit` decimal(16,4) NOT NULL DEFAULT 0.0000 COMMENT 'Max Credit Limit for Post Paid Customers',
  `expiry_date` datetime DEFAULT NULL,
  `blklist_chk` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Gobal Level Only, 2 - User Level Only, 3 - User then Global only, 4 - User then Admin then Super Admin only, 5 - User then Admin then Super Admin then Global, 6 - User then Parent User then Grand Parent User only, 7 - User then Parent User then Grand Parent User then Global',
  `spam_chk` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Global Only, 2 - MsgType Only, 3 - Client Level Only, 4 - ALL (Client Level, MsgType, Global)',
  PRIMARY KEY (`cli_id`),
  UNIQUE KEY `user_config_user_uindex` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_config`
--

LOCK TABLES `user_config` WRITE;
/*!40000 ALTER TABLE `user_config` DISABLE KEYS */;
INSERT INTO `user_config` VALUES (4000001100000000,'jaffer','L','praveen@winnovature.com',9487660738,'Winnovature India Pvt Ltd','To be updated','jaffer','$2a$10$QZbSGc10EcUdBX9Z00Hmgepw5RK8RFaP4xPbcZX87GEWddoUGHna.','i1GTPzBhdrTTErUi2F6U629SVVNLNWF3dFZYTXn/pv6C3V77YZLFNXYY','hs+ItzXLENtN1DfrvK1teWxlYjFhdWpCYkRtdo3iEJ+IRekwl8/G7fn3',0,4000001100000000,4000001100000000,'2021-10-12 18:34:12','2021-10-12 18:34:12',0,'WW','trans',NULL,'',NULL,NULL,NULL,0,NULL,0,NULL,NULL,6000109,NULL,NULL,0,NULL,NULL,1,'Asia/Calcutta','+05:30',0,0,NULL,0,0,0,0,0,0,1,2,2,0,0,0,6,1,0,0,'DEVTST',1,1,0,0,0,0.0935,0.0250,0,0,NULL,'2021-10-12 18:34:12','4000001100000000','2024-10-23 07:10:57','5',1,0,0.093500000000,0.025000000000,2,0,0,0,'INR',1,0,0,0,0,0,0.0000,'2025-04-28 23:59:59',0,0);
/*!40000 ALTER TABLE `user_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER accounts.user_config_on_insert 
AFTER insert
	ON
	accounts.user_config FOR EACH ROW 
	INSERT
		into
		configuration.data_event_log (table_name,
		primary_column_value,
		record_status,
		is_processed) value('user_config',
		new.cli_id,
		'1',
		'0') */;;
DELIMITER ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER accounts.user_config_on_update 
AFTER update
	ON
	accounts.user_config FOR EACH ROW 
	INSERT
		into
		configuration.data_event_log (table_name,
		primary_column_value,
		record_status,
		is_processed) value('user_config',
		new.cli_id,
		'2',
		'0') */;;
DELIMITER ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER accounts.user_config_on_delete 
AFTER delete
	ON
	accounts.user_config FOR EACH ROW 
	INSERT
		into
		configuration.data_event_log (table_name,
		primary_column_value,
		record_status,
		is_processed) value('user_config',
		old.cli_id,
		'3',
		'0') */;;
DELIMITER ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_config_20211016`
--

DROP TABLE IF EXISTS `user_config_20211016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_config_20211016` (
  `cli_id` bigint(16) NOT NULL COMMENT 'Client Id for User',
  `firstname` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'First Name of the client',
  `lastname` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Last Name of the client',
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Email id for the client',
  `mobile` bigint(15) DEFAULT NULL COMMENT 'Mobile number for the client',
  `company` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Company of the client',
  `address` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `user` varchar(50) CHARACTER SET latin1 NOT NULL COMMENT 'Username for this User',
  `ui_pass` varchar(100) CHARACTER SET latin1 NOT NULL COMMENT 'Password for UI Customer',
  `api_pass` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'mgMitUQEQXQY8n8icGQNLGdPbDJTelRya3HockS6fHWBNzq/L0seqINs' COMMENT 'Password for API Customer',
  `smpp_pass` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '5hu0iYPlsgzzyLF8fl7KXWtJTDExNzIha0oEvGKCGlDB0bPbZ8yQ0cgz' COMMENT 'Password for SMPP Customer',
  `user_type` tinyint(1) NOT NULL COMMENT '0-Super User,1-Admin User, 2-User. Type of the User.',
  `pu_id` bigint(16) NOT NULL COMMENT 'Parent User Id',
  `su_id` bigint(16) NOT NULL COMMENT 'Super User Id',
  `first_activation_date` datetime DEFAULT current_timestamp() COMMENT 'First activation date',
  `activation_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Last activation date',
  `acc_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'ACTIVE(0), DEACTIVATED(1), EXPIRY(2), SUSPENDED(3), INACTIVE(4), INVALID(5)',
  `acc_route_id` varchar(6) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Default route id for the client',
  `platform_cluster` varchar(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Account belongs to the specific Platform cluster',
  `sms_priority` tinyint(1) DEFAULT NULL COMMENT 'Default SMS priority',
  `newline_replace_char` varchar(3) CHARACTER SET latin1 DEFAULT NULL COMMENT 'A set of characters to be replaced as a new line in the request',
  `is_16bit_udh` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled. Used to create UDH Generation for multipart messages',
  `acknowledge_id_length` tinyint(2) DEFAULT NULL COMMENT 'Length of the acknowledge id given to Client',
  `client_encrypt` tinyint(1) DEFAULT NULL COMMENT 'On request Message (Message only) encryoted. 0-Disabled, 1-Encrypted',
  `bill_encrypt_type` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled ( Refer configuration.client_crypto_info table)',
  `smpp_max_allowed_connections` tinyint(4) DEFAULT 0 COMMENT 'Maximum binds allowed for this client',
  `smpp_max_speed` int(5) DEFAULT 0 COMMENT 'Maximum speed allows for this client',
  `smpp_charset` varchar(25) CHARACTER SET latin1 DEFAULT 'ISO-8859-1' COMMENT 'Charset used while receiving the request from the client',
  `domestic_promo_trai_blockout_purge` tinyint(1) DEFAULT NULL COMMENT '0-Process the domestic message in next day, 1-Discard the message',
  `domestic_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the domestic message after blockout time, 2-Discard the message with in the blockout time',
  `domestic_sms_blockout_start` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout start time for Domestic Message',
  `domestic_sms_blockout_stop` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout end time for Domestic Message',
  `dlt_templ_grp_id` bigint(20) DEFAULT NULL,
  `dup_chk_req` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled based on Client Ref Id, 2-Enabled based on Mobile and Message',
  `dup_chk_interval` int(10) DEFAULT NULL COMMENT 'Interval time for the duplicate check.',
  `intl_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the international message after blockout time, 2-Discard the message with in the blockout time',
  `intl_sms_blockout_start` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout start time for international Message',
  `intl_sms_blockout_stop` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout end time for international Message',
  `retry_alter_route_lookup` tinyint(1) DEFAULT 1 COMMENT '0-Disabled, 1-Enabled',
  `time_zone` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Default timezone for the Client',
  `time_offset` varchar(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Timezone offset value from GMT',
  `two_level_auth` tinyint(1) DEFAULT NULL,
  `ip_validation` tinyint(1) NOT NULL DEFAULT 0,
  `ip_list` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `mt_adjust` int(1) DEFAULT 0,
  `dn_adjust` int(1) DEFAULT 0,
  `dnd_reject_yn` tinyint(1) DEFAULT 0,
  `vl_shortner` tinyint(1) DEFAULT 0,
  `msg_replace_chk` tinyint(1) NOT NULL DEFAULT 0,
  `is_schedule_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Allowed',
  `uc_iden_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disable, 1 - Enable',
  `uc_iden_char_len` tinyint(2) NOT NULL DEFAULT 1 COMMENT 'Number of characters to identify the Unicode Message',
  `uc_iden_occur` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Number of occurance of consigitive Uinicode char spcified in ''uc_iden_char_len''',
  `is_remove_uc_chars` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Remove identifyed Unicode chars',
  `url_smartlink_enable` tinyint(1) NOT NULL DEFAULT 0,
  `url_track_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `vl_shortcode_len` tinyint(1) NOT NULL DEFAULT 6,
  `is_async` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Sync, 1 - Async',
  `use_default_header` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `use_default_on_header_fail` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled , 1 - Enabled',
  `acc_default_header` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'DEVTST' COMMENT 'Client Default Header',
  `considerdefaultlength_as_domestic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disable, 1 - Enable',
  `domestic_tra_blockout_reject` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Accept During TRAI Blockout at Interface level,1-Reject During TRAI Blockout  at Interface level',
  `dlt_entityid_tag` varchar(4) CHARACTER SET latin1 NOT NULL DEFAULT '1400' COMMENT 'SMPP DLT Entity Id tag',
  `dlt_templateid_tag` varchar(4) CHARACTER SET latin1 NOT NULL DEFAULT '1401' COMMENT 'Smpp DLT Template Id ',
  `timebound_chk_enable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `timebound_interval` int(10) DEFAULT 0 COMMENT 'Time bound interval in seconds',
  `timebound_max_count_allow` int(10) NOT NULL DEFAULT 0 COMMENT 'Time bound max request count allow',
  `sms_rate` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'SMS Rate per message',
  `dlt_rate` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'DLT Rate per message',
  `domestic_special_series_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Domestic Special Numbers allow',
  `last_pwd_change` datetime DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_user` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_config_20211016`
--

LOCK TABLES `user_config_20211016` WRITE;
/*!40000 ALTER TABLE `user_config_20211016` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_config_20211016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_config_22feb22`
--

DROP TABLE IF EXISTS `user_config_22feb22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_config_22feb22` (
  `cli_id` bigint(16) NOT NULL COMMENT 'Client Id for User',
  `firstname` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'First Name of the client',
  `lastname` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Last Name of the client',
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Email id for the client',
  `mobile` bigint(15) DEFAULT NULL COMMENT 'Mobile number for the client',
  `company` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Company of the client',
  `address` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `user` varchar(50) CHARACTER SET latin1 NOT NULL COMMENT 'Username for this User',
  `ui_pass` varchar(100) CHARACTER SET latin1 NOT NULL COMMENT 'Password for UI Customer',
  `api_pass` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'mgMitUQEQXQY8n8icGQNLGdPbDJTelRya3HockS6fHWBNzq/L0seqINs' COMMENT 'Password for API Customer',
  `smpp_pass` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '5hu0iYPlsgzzyLF8fl7KXWtJTDExNzIha0oEvGKCGlDB0bPbZ8yQ0cgz' COMMENT 'Password for SMPP Customer',
  `user_type` tinyint(1) NOT NULL COMMENT '0-Super User,1-Admin User, 2-User. Type of the User.',
  `pu_id` bigint(16) NOT NULL COMMENT 'Parent User Id',
  `su_id` bigint(16) NOT NULL COMMENT 'Super User Id',
  `first_activation_date` datetime DEFAULT current_timestamp() COMMENT 'First activation date',
  `activation_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Last activation date',
  `acc_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'ACTIVE(0), DEACTIVATED(1), EXPIRY(2), SUSPENDED(3), INACTIVE(4), INVALID(5)',
  `acc_route_id` varchar(6) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Default route id for the client',
  `platform_cluster` varchar(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Account belongs to the specific Platform cluster',
  `sms_priority` tinyint(1) DEFAULT NULL COMMENT 'Default SMS priority',
  `newline_replace_char` varchar(3) CHARACTER SET latin1 DEFAULT NULL COMMENT 'A set of characters to be replaced as a new line in the request',
  `is_16bit_udh` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled. Used to create UDH Generation for multipart messages',
  `acknowledge_id_length` tinyint(2) DEFAULT NULL COMMENT 'Length of the acknowledge id given to Client',
  `client_encrypt` tinyint(1) DEFAULT NULL COMMENT 'On request Message (Message only) encryoted. 0-Disabled, 1-Encrypted',
  `bill_encrypt_type` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled ( Refer configuration.client_crypto_info table)',
  `smpp_max_allowed_connections` tinyint(4) DEFAULT 0 COMMENT 'Maximum binds allowed for this client',
  `smpp_max_speed` int(5) DEFAULT 0 COMMENT 'Maximum speed allows for this client',
  `smpp_charset` varchar(25) CHARACTER SET latin1 DEFAULT 'ISO-8859-1' COMMENT 'Charset used while receiving the request from the client',
  `domestic_promo_trai_blockout_purge` tinyint(1) DEFAULT NULL COMMENT '0-Process the domestic message in next day, 1-Discard the message',
  `domestic_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the domestic message after blockout time, 2-Discard the message with in the blockout time',
  `domestic_sms_blockout_start` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout start time for Domestic Message',
  `domestic_sms_blockout_stop` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout end time for Domestic Message',
  `dlt_templ_grp_id` bigint(20) DEFAULT NULL,
  `dup_chk_req` tinyint(1) DEFAULT NULL COMMENT '0-Disabled, 1-Enabled based on Client Ref Id, 2-Enabled based on Mobile and Message',
  `dup_chk_interval` int(10) DEFAULT NULL COMMENT 'Interval time for the duplicate check.',
  `intl_sms_blockout` tinyint(1) DEFAULT 0 COMMENT '0-Disabled, 1-Process the international message after blockout time, 2-Discard the message with in the blockout time',
  `intl_sms_blockout_start` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout start time for international Message',
  `intl_sms_blockout_stop` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Client specific blockout end time for international Message',
  `retry_alter_route_lookup` tinyint(1) DEFAULT 1 COMMENT '0-Disabled, 1-Enabled',
  `time_zone` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Default timezone for the Client',
  `time_offset` varchar(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Timezone offset value from GMT',
  `two_level_auth` tinyint(1) DEFAULT NULL,
  `ip_validation` tinyint(1) NOT NULL DEFAULT 0,
  `ip_list` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `mt_adjust` int(1) DEFAULT 0,
  `dn_adjust` int(1) DEFAULT 0,
  `dnd_reject_yn` tinyint(1) DEFAULT 0,
  `vl_shortner` tinyint(1) DEFAULT 0,
  `msg_replace_chk` tinyint(1) NOT NULL DEFAULT 0,
  `is_schedule_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Allowed',
  `uc_iden_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disable, 1 - Enable',
  `uc_iden_char_len` tinyint(2) NOT NULL DEFAULT 1 COMMENT 'Number of characters to identify the Unicode Message',
  `uc_iden_occur` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Number of occurance of consigitive Uinicode char spcified in ''uc_iden_char_len''',
  `is_remove_uc_chars` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Remove identifyed Unicode chars',
  `url_smartlink_enable` tinyint(1) NOT NULL DEFAULT 0,
  `url_track_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `vl_shortcode_len` tinyint(1) NOT NULL DEFAULT 6,
  `is_async` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Sync, 1 - Async',
  `use_default_header` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `use_default_on_header_fail` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled , 1 - Enabled',
  `acc_default_header` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'DEVTST' COMMENT 'Client Default Header',
  `considerdefaultlength_as_domestic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disable, 1 - Enable',
  `domestic_tra_blockout_reject` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0-Accept During TRAI Blockout at Interface level,1-Reject During TRAI Blockout  at Interface level',
  `dlt_entityid_tag` varchar(4) CHARACTER SET latin1 NOT NULL DEFAULT '1400' COMMENT 'SMPP DLT Entity Id tag',
  `dlt_templateid_tag` varchar(4) CHARACTER SET latin1 NOT NULL DEFAULT '1401' COMMENT 'Smpp DLT Template Id ',
  `timebound_chk_enable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled, 1 - Enabled',
  `timebound_interval` int(10) DEFAULT 0 COMMENT 'Time bound interval in seconds',
  `timebound_max_count_allow` int(10) NOT NULL DEFAULT 0 COMMENT 'Time bound max request count allow',
  `sms_rate` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'SMS Rate per message',
  `dlt_rate` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'DLT Rate per message',
  `domestic_special_series_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Domestic Special Numbers allow',
  `req_hex_msg` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Customer Sends Hex String in Message',
  `last_pwd_change` datetime DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_user` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `acc_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-Test, 2-Demo, 0-Production',
  `invoice_based_on` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Submission, 1-Deliveries',
  `base_sms_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Base SMS Rate',
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Base Additionl Fixed Rate',
  `billing_currency_conv_type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 - Monthly , 2 - Daily',
  `is_ildo` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Non ildo, 1 - ildo',
  `dnd_pref` int(1) NOT NULL DEFAULT 0 COMMENT 'DND Preferences for this client',
  `force_dnd_check` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Disabled , 1 - Enable Force DND Check',
  `billing_currency` varchar(3) CHARACTER SET latin1 NOT NULL DEFAULT 'INR' COMMENT 'billing currency value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_config_22feb22`
--

LOCK TABLES `user_config_22feb22` WRITE;
/*!40000 ALTER TABLE `user_config_22feb22` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_config_22feb22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_headers_intl`
--

DROP TABLE IF EXISTS `user_headers_intl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_headers_intl` (
  `cli_id` bigint(16) NOT NULL,
  `header` varchar(15) NOT NULL,
  `created_user` varchar(20) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `erp_created_user` varchar(20) DEFAULT NULL,
  `erp_created_ts` datetime DEFAULT current_timestamp(),
  `status` varchar(100) DEFAULT NULL,
  `status_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_headers_intl`
--

LOCK TABLES `user_headers_intl` WRITE;
/*!40000 ALTER TABLE `user_headers_intl` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_headers_intl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_service_map`
--

DROP TABLE IF EXISTS `user_service_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_service_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) NOT NULL,
  `service` varchar(256) NOT NULL,
  `sub_service` varchar(256) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(25) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  `modified_user` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_service_map_UN` (`cli_id`,`service`,`sub_service`)
) ENGINE=InnoDB AUTO_INCREMENT=6819 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_service_map`
--

LOCK TABLES `user_service_map` WRITE;
/*!40000 ALTER TABLE `user_service_map` DISABLE KEYS */;
INSERT INTO `user_service_map` VALUES (6815,4000001100000000,'sms','api','2024-10-23 07:03:02',NULL,'2024-10-23 07:03:02',NULL),(6816,4000001100000000,'sms','smpp','2024-10-23 07:03:06',NULL,'2024-10-23 07:03:06',NULL),(6817,4000001100000000,'sms','cm','2024-10-23 07:03:30',NULL,'2024-10-23 07:03:30',NULL),(6818,4000001100000000,'sms','international','2024-10-23 07:03:46',NULL,'2024-10-23 07:03:46',NULL);
/*!40000 ALTER TABLE `user_service_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_smpp_config`
--

DROP TABLE IF EXISTS `user_smpp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_smpp_config` (
  `cli_id` bigint(16) NOT NULL DEFAULT 0 COMMENT 'Client Id can be User, Admin, SuperAdmin level',
  `bind_type` varchar(10) NOT NULL DEFAULT 'Trx' COMMENT 'Tx, Rx, TRx',
  `max_allowed_connections` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Maximum binds allowed for this client',
  `max_speed` int(5) NOT NULL DEFAULT 1 COMMENT 'Maximum speed allows for this client',
  `charset` varchar(25) NOT NULL DEFAULT 'ISO-8859-1' COMMENT 'Charset used while receiving the request from the client',
  `dlt_entityid_tag` varchar(4) NOT NULL DEFAULT '1400' COMMENT 'DLT Entity Id Tag',
  `dlt_templateid_tag` varchar(4) NOT NULL DEFAULT '1401' COMMENT 'DLT Template Id Tag',
  `dn_expiry_in_sec` int(10) DEFAULT 28800 COMMENT 'DN Expiry time in seconds',
  `dn_date_format` varchar(20) NOT NULL DEFAULT 'yyMMddHHmm' COMMENT 'DN Date Format',
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `cli_mid_tag` varchar(4) DEFAULT '1402' COMMENT 'Client Message Id',
  PRIMARY KEY (`cli_id`,`bind_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_smpp_config`
--

LOCK TABLES `user_smpp_config` WRITE;
/*!40000 ALTER TABLE `user_smpp_config` DISABLE KEYS */;
INSERT INTO `user_smpp_config` VALUES (4000001100000000,'Trx',20,1000,'ISO-8859-1','1400','1401',28800,'yyMMddHHmm','2024-11-02 20:01:51.404','2024-11-02 20:02:21.574','1402');
/*!40000 ALTER TABLE `user_smpp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_templategroup_ids`
--

DROP TABLE IF EXISTS `users_templategroup_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_templategroup_ids` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) DEFAULT NULL,
  `template_group_id` bigint(20) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(50) DEFAULT NULL,
  `admin_created_ts` datetime DEFAULT current_timestamp(),
  `admin_created_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=1966 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_templategroup_ids`
--

LOCK TABLES `users_templategroup_ids` WRITE;
/*!40000 ALTER TABLE `users_templategroup_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_templategroup_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `accounts_view`
--

/*!50001 DROP TABLE IF EXISTS `accounts_view`*/;
/*!50001 DROP VIEW IF EXISTS `accounts_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `accounts_view` AS select `user`.`cli_id` AS `cli_id`,`user`.`firstname` AS `firstname`,`user`.`lastname` AS `lastname`,`user`.`email` AS `email`,`user`.`mobile` AS `mobile`,`user`.`company` AS `company`,`user`.`address` AS `address`,`user`.`user` AS `user`,`user`.`ui_pass` AS `ui_pass`,`user`.`api_pass` AS `api_pass`,`user`.`smpp_pass` AS `smpp_pass`,`user`.`user_type` AS `user_type`,`user`.`pu_id` AS `pu_id`,`user`.`su_id` AS `su_id`,`user`.`first_activation_date` AS `first_activation_date`,`user`.`activation_date` AS `activation_date`,if(`superuser`.`acc_status` > `user`.`acc_status`,`superuser`.`acc_status`,`user`.`acc_status`) AS `acc_status`,`superuser`.`msg_type` AS `msg_type`,ifnull(`user`.`acc_route_id`,`superuser`.`acc_route_id`) AS `acc_route_id`,ifnull(`user`.`platform_cluster`,if(`superuser`.`platform_cluster` is null,'',`superuser`.`platform_cluster`)) AS `platform_cluster`,ifnull(`user`.`sms_priority`,`superuser`.`sms_priority`) AS `sms_priority`,ifnull(`user`.`newline_replace_char`,`superuser`.`newline_replace_char`) AS `newline_replace_char`,ifnull(`user`.`is_16bit_udh`,`superuser`.`is_16bit_udh`) AS `is_16bit_udh`,ifnull(`user`.`acknowledge_id_length`,`superuser`.`acknowledge_id_length`) AS `acknowledge_id_length`,ifnull(`user`.`client_encrypt`,`superuser`.`client_encrypt`) AS `client_encrypt`,ifnull(`user`.`bill_encrypt_type`,`superuser`.`bill_encrypt_type`) AS `bill_encrypt_type`,ifnull(`user`.`domestic_promo_trai_blockout_purge`,`superuser`.`domestic_promo_trai_blockout_purge`) AS `domestic_promo_trai_blockout_purge`,`user`.`domestic_sms_blockout` AS `domestic_sms_blockout`,`user`.`domestic_sms_blockout_start` AS `domestic_sms_blockout_start`,`user`.`domestic_sms_blockout_stop` AS `domestic_sms_blockout_stop`,ifnull(`user`.`dlt_templ_grp_id`,`superuser`.`dlt_templ_grp_id`) AS `dlt_templ_grp_id`,ifnull(`user`.`dup_chk_req`,`superuser`.`dup_chk_req`) AS `dup_chk_req`,ifnull(`user`.`dup_chk_interval`,`superuser`.`dup_chk_interval`) AS `dup_chk_interval`,`user`.`intl_sms_blockout` AS `intl_sms_blockout`,`user`.`intl_sms_blockout_start` AS `intl_sms_blockout_start`,`user`.`intl_sms_blockout_stop` AS `intl_sms_blockout_stop`,ifnull(`user`.`retry_alter_route_lookup`,`superuser`.`retry_alter_route_lookup`) AS `retry_alter_route_lookup`,ifnull(`user`.`time_zone`,`superuser`.`time_zone`) AS `time_zone`,ifnull(`user`.`time_offset`,`superuser`.`time_offset`) AS `time_offset`,ifnull(`user`.`two_level_auth`,`superuser`.`two_level_auth`) AS `two_level_auth`,case when `superuser`.`credit_check` = 1 then 1 else `user`.`credit_check` end AS `credit_check`,`user`.`ip_validation` AS `ip_validation`,`user`.`ip_list` AS `ip_list`,`user`.`mt_adjust` AS `mt_adjust`,`user`.`dn_adjust` AS `dn_adjust`,`user`.`dnd_reject_yn` AS `dnd_reject_yn`,`user`.`vl_shortner` AS `vl_shortner`,`user`.`last_pwd_change` AS `last_pwd_change`,`user`.`is_schedule_allow` AS `is_schedule_allow`,`user`.`uc_iden_allow` AS `uc_iden_allow`,`user`.`uc_iden_char_len` AS `uc_iden_char_len`,`user`.`uc_iden_occur` AS `uc_iden_occur`,`user`.`is_remove_uc_chars` AS `is_remove_uc_chars`,`user`.`url_smartlink_enable` AS `url_smartlink_enable`,`user`.`url_track_enabled` AS `is_url_track`,`user`.`vl_shortcode_len` AS `sc_len`,`user`.`is_async` AS `acc_is_async`,`user`.`use_default_header` AS `use_default_header`,`user`.`acc_default_header` AS `acc_default_header`,`user`.`use_default_on_header_fail` AS `use_default_on_header_fail`,`user`.`dnd_pref` AS `dnd_pref`,`superuser`.`bill_type` AS `bill_type`,`superuser`.`dnd_chk` AS `dnd_chk`,`superuser`.`spam_chk` AS `spam_chk`,`superuser`.`blklist_chk` AS `blklist_chk`,`superuser`.`sms_retry_available` AS `sms_retry_available`,`superuser`.`sms_bill_on_sub` AS `sms_bill_on_sub`,`superuser`.`sales_id` AS `sales_id`,`user`.`considerdefaultlength_as_domestic` AS `considerdefaultlength_as_domestic`,`user`.`domestic_tra_blockout_reject` AS `domestic_tra_blockout_reject`,`user`.`timebound_chk_enable` AS `timebound_chk_enable`,`user`.`timebound_interval` AS `timebound_interval`,`user`.`timebound_max_count_allow` AS `timebound_max_count_allow`,`user`.`sms_rate` AS `sms_rate`,`user`.`dlt_rate` AS `dlt_rate`,`user`.`base_sms_rate` AS `base_sms_rate`,`user`.`base_add_fixed_rate` AS `base_add_fixed_rate`,`user`.`domestic_special_series_allow` AS `domestic_special_series_allow`,`user`.`req_hex_msg` AS `req_hex_msg`,`user`.`billing_currency` AS `billing_currency`,`user`.`acc_type` AS `acc_type`,`user`.`invoice_based_on` AS `invoice_based_on`,`user`.`billing_currency_conv_type` AS `billing_currency_conv_type`,`user`.`is_ildo` AS `is_ildo`,`user`.`force_dnd_check` AS `force_dnd_check`,`user`.`created_ts` AS `created_ts`,`user`.`created_user` AS `created_user`,`user`.`updated_ts` AS `updated_ts`,`user`.`modified_user` AS `modified_user`,`superuser`.`optin_chk_req` AS `optin_chk_req`,`user`.`msg_retry_available` AS `msg_retry_available`,`user`.`capping_chk_enable` AS `capping_chk_enable`,`user`.`capping_interval_type` AS `capping_interval_type`,`user`.`capping_interval` AS `capping_interval`,`user`.`capping_max_count_allow` AS `capping_max_count_allow`,`user`.`credit_limit` AS `credit_limit`,`user`.`msg_replace_chk` AS `msg_replace_chk`,`user`.`expiry_date` AS `expiry_date` from (`user_config` `user` join `su_config` `superuser` on(`user`.`su_id` = `superuser`.`cli_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-08 17:37:20
