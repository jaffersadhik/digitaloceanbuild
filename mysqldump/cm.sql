-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 10.122.0.3    Database: cm
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
-- Table structure for table `billing_rate_changes`
--

DROP TABLE IF EXISTS `billing_rate_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_rate_changes` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `req_id` char(36) NOT NULL COMMENT 'unique id for this request/transaction',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `username` varchar(50) DEFAULT NULL COMMENT 'username for cli_id',
  `country` varchar(50) DEFAULT NULL COMMENT 'country name',
  `new_sms_rate` decimal(15,6) DEFAULT NULL COMMENT 'smsrate after the update',
  `old_sms_rate` decimal(15,6) DEFAULT NULL COMMENT 'previous smsrate before the update',
  `new_addl_rate` decimal(15,6) DEFAULT NULL COMMENT 'additional rate (DLT rate incase of india) after the update',
  `old_addl_rate` decimal(15,6) DEFAULT NULL COMMENT 'previous additional rate (DLT rate incase of india) before the update',
  `billing_currency` varchar(5) DEFAULT NULL,
  `done_by` bigint NOT NULL COMMENT 'Client Id of the user who made this transaction',
  `modified_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_rate_changes`
--

LOCK TABLES `billing_rate_changes` WRITE;
/*!40000 ALTER TABLE `billing_rate_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_rate_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_file_splits`
--

DROP TABLE IF EXISTS `campaign_file_splits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_file_splits` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `c_id` char(36) NOT NULL COMMENT 'foreign key of campaign_master.id',
  `c_f_id` char(36) NOT NULL COMMENT 'foreign key of campaign_files.id',
  `group_id` char(36) DEFAULT NULL COMMENT 'foreign key of group_master.id. this will be filled in from campaign_files table',
  `filename` varchar(250) DEFAULT NULL COMMENT 'split filename used for internal processing',
  `fileloc` varchar(550) DEFAULT NULL COMMENT 'full path of the split file',
  `file_delimiter` varchar(2) DEFAULT NULL COMMENT 'file delimiter',
  `exclude_group_ids` varchar(500) DEFAULT NULL COMMENT 'comma seperated exclude grp ids',
  `total` int DEFAULT NULL COMMENT 'total rows in file',
  `valid` int DEFAULT NULL COMMENT 'valid rows in file',
  `invalid` int DEFAULT NULL COMMENT 'invalid rows in file',
  `duplicate` int DEFAULT NULL COMMENT 'duplicate count',
  `excluded` int DEFAULT NULL COMMENT 'excluded count',
  `failed` int DEFAULT NULL COMMENT 'failed count',
  `instance_id` varchar(15) DEFAULT NULL COMMENT 'the instance which processed this file',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'file processing status. queued/completed/failed/inprocess',
  `retry_count` tinyint unsigned DEFAULT '0' COMMENT 'retry count of the file on failure. retry count starts from 1.',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `started_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process beginning for this file',
  `completed_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process completion (completed/failed) for this file',
  `reason` varchar(100) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_file_splits`
--

LOCK TABLES `campaign_file_splits` WRITE;
/*!40000 ALTER TABLE `campaign_file_splits` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_file_splits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_files`
--

DROP TABLE IF EXISTS `campaign_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_files` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table, which also represents a uploaded file',
  `c_id` char(36) NOT NULL COMMENT 'foreign key of campaign_master.id',
  `group_id` char(36) DEFAULT NULL COMMENT 'foreign key of group_master.id. this will be filled in from campaign_groups table via backend process',
  `filename` varchar(250) DEFAULT NULL COMMENT 'filename used for internal processing',
  `filename_ori` varchar(200) DEFAULT NULL COMMENT 'the file uploaded by the user',
  `filesize` varchar(100) DEFAULT NULL,
  `filetype` varchar(5) DEFAULT NULL COMMENT 'file extension. txt/csv/xls/xlsx',
  `fileloc` varchar(550) DEFAULT NULL COMMENT 'full path of the file',
  `exclude_group_ids` varchar(500) DEFAULT NULL COMMENT 'comma seperated exclude grp ids',
  `total` int DEFAULT '0' COMMENT 'total rows in file',
  `valid` int DEFAULT '0' COMMENT 'valid rows in file',
  `invalid` int DEFAULT '0' COMMENT 'invalid rows in file',
  `duplicate` int DEFAULT '0' COMMENT 'duplicate count',
  `excluded` int DEFAULT '0' COMMENT 'excluded count',
  `failed` int DEFAULT '0' COMMENT 'failed count',
  `instance_id` varchar(15) DEFAULT NULL COMMENT 'the instance which processed this file',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'file processing status. queued/completed/failed/inprocess',
  `retry_count` tinyint unsigned DEFAULT '0' COMMENT 'retry count of the file on failure. retry count starts from 1.',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `started_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process beginning for this file',
  `completed_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process completion (completed/failed) for this file',
  `reason` varchar(500) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_files`
--

LOCK TABLES `campaign_files` WRITE;
/*!40000 ALTER TABLE `campaign_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_groups`
--

DROP TABLE IF EXISTS `campaign_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_groups` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `c_id` char(36) NOT NULL COMMENT 'foreign key of campaign_master.id',
  `group_id` char(36) NOT NULL COMMENT 'foreign key of group_master.id',
  `exclude_group_ids` varchar(500) DEFAULT NULL COMMENT 'comma seperated exclude grp ids',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'file processing status. queued/completed/failed/inprocess',
  `fileloc` varchar(550) DEFAULT NULL COMMENT 'full path of the group file',
  `total` int DEFAULT NULL COMMENT 'total rows in created file',
  `retry_count` tinyint unsigned DEFAULT '0' COMMENT 'retry count for creating group file. retry count starts from 1.',
  `instance_id` varchar(15) DEFAULT NULL COMMENT 'the instance which processed this file',
  `reason` varchar(200) DEFAULT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `started_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process beginning for this file',
  `completed_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process completion (completed/failed) for this file',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_groups`
--

LOCK TABLES `campaign_groups` WRITE;
/*!40000 ALTER TABLE `campaign_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_master`
--

DROP TABLE IF EXISTS `campaign_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_master` (
  `id` char(36) NOT NULL COMMENT 'unique id for this campaign',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `username` varchar(50) NOT NULL,
  `c_name` varchar(50) NOT NULL COMMENT '-- should be unique for this user',
  `msg` text,
  `header` varchar(15) DEFAULT NULL COMMENT 'senderid',
  `intl_header` varchar(15) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL COMMENT 'foreign key of template_master.id ',
  `template_type` varchar(10) DEFAULT NULL COMMENT 'template type. column/index',
  `template_mobile_column` varchar(50) DEFAULT NULL COMMENT 'template mobile column or index',
  `dlt_entity_id` varchar(19) DEFAULT NULL COMMENT 'dlt_template_master.entity_id',
  `dlt_template_id` varchar(19) DEFAULT NULL COMMENT 'dlt_template_master.template_id. will be null for MTM as this will come from file',
  `c_type` varchar(15) NOT NULL COMMENT 'quick, otm, mtm, template, group',
  `c_lang_type` varchar(15) NOT NULL COMMENT 'english, unicode - will be identified by platform ',
  `c_lang` varchar(35) DEFAULT NULL COMMENT 'english / the language selected when unicode',
  `remove_dupe_yn` tinyint NOT NULL DEFAULT '1' COMMENT '0-Allow duplicate, 1- Remove Duplicate',
  `shorten_url` tinyint DEFAULT '0',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'final campaign status. queued/completed/failed/inprocess',
  `reason` varchar(100) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  `full_completion_yn` tinyint DEFAULT NULL COMMENT '0-One or more campaign files have failed (after max retry) , 1- All the files have been completed',
  `scheduled_ts` datetime DEFAULT NULL,
  `ipaddr` varchar(50) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_master`
--

LOCK TABLES `campaign_master` WRITE;
/*!40000 ALTER TABLE `campaign_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_schedule_at`
--

DROP TABLE IF EXISTS `campaign_schedule_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_schedule_at` (
  `id` char(36) NOT NULL COMMENT 'unique id for this campaign',
  `cs_id` char(36) NOT NULL COMMENT 'foreign key of campaign_schedule.id',
  `username` varchar(50) NOT NULL,
  `scheduled_ts` datetime NOT NULL,
  `status` varchar(10) DEFAULT 'queued' COMMENT 'queued/completed/failed/inprocess',
  `retry_count` tinyint unsigned DEFAULT '0' COMMENT 'retry count of the file on failure. retry count starts from 1.',
  `reason` varchar(100) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  `selected_dt` varchar(100) DEFAULT NULL,
  `selected_zone` varchar(100) DEFAULT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_schedule_at`
--

LOCK TABLES `campaign_schedule_at` WRITE;
/*!40000 ALTER TABLE `campaign_schedule_at` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_schedule_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_schedule_master`
--

DROP TABLE IF EXISTS `campaign_schedule_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_schedule_master` (
  `id` char(36) NOT NULL COMMENT 'unique id for this campaign',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `username` varchar(50) NOT NULL,
  `c_name` varchar(100) NOT NULL COMMENT '-- should be unique for this user. will be appended with ts when its multi schedule ',
  `msg` text,
  `header` varchar(15) DEFAULT NULL COMMENT 'senderid',
  `intl_header` varchar(15) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL COMMENT 'foreign key of template_master.id ',
  `template_type` varchar(10) DEFAULT NULL COMMENT 'template type. column/index',
  `template_mobile_column` varchar(50) DEFAULT NULL COMMENT 'template mobile column or index',
  `group_ids` varchar(500) DEFAULT NULL COMMENT 'comma seperated  grp ids',
  `filenames` varchar(400) DEFAULT NULL COMMENT 'comma separated filenames used for internal processing',
  `filenames_ori` varchar(400) DEFAULT NULL COMMENT 'comma separated filenames uploaded by the user',
  `totals` varchar(400) DEFAULT NULL COMMENT 'comma separated counts of respective files',
  `filesizes` varchar(200) DEFAULT NULL COMMENT 'comma separated filesizes',
  `filetypes` varchar(50) DEFAULT NULL COMMENT 'comma separated file extension. csv/xls/xlsx',
  `filelocs` varchar(900) DEFAULT NULL COMMENT 'comma separated full path of the file',
  `exclude_group_ids` varchar(500) DEFAULT NULL COMMENT 'comma seperated exclude grp ids',
  `dlt_entity_id` varchar(19) DEFAULT NULL COMMENT 'dlt_template_master.entity_id',
  `dlt_template_id` varchar(19) DEFAULT NULL COMMENT 'dlt_template_master.template_id. will be null for MTM as this may come from file',
  `c_type` varchar(15) NOT NULL COMMENT 'quick, otm, mtm, template, group',
  `c_lang_type` varchar(15) NOT NULL COMMENT 'english, unicode - will be identified by platform ',
  `c_lang` varchar(35) DEFAULT NULL COMMENT 'english / the language selected when unicode',
  `remove_dupe_yn` tinyint NOT NULL DEFAULT '1' COMMENT '0-Allow duplicate, 1- Remove Duplicate',
  `shorten_url` tinyint DEFAULT '0' COMMENT '0-Disabled, 1-Enabled',
  `ipaddr` varchar(50) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_schedule_master`
--

LOCK TABLES `campaign_schedule_master` WRITE;
/*!40000 ALTER TABLE `campaign_schedule_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_schedule_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_features_blacklist`
--

DROP TABLE IF EXISTS `cm_features_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cm_features_blacklist` (
  `cli_id` bigint NOT NULL,
  `feature` varchar(100) NOT NULL COMMENT 'link/card to be disabled',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_features_blacklist`
--

LOCK TABLES `cm_features_blacklist` WRITE;
/*!40000 ALTER TABLE `cm_features_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_features_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_params`
--

DROP TABLE IF EXISTS `config_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_params` (
  `key` varchar(100) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `key_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_params`
--

LOCK TABLES `config_params` WRITE;
/*!40000 ALTER TABLE `config_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_user_fullmessage`
--

DROP TABLE IF EXISTS `config_user_fullmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_user_fullmessage` (
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_user_fullmessage`
--

LOCK TABLES `config_user_fullmessage` WRITE;
/*!40000 ALTER TABLE `config_user_fullmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_user_fullmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_user_quicklinks`
--

DROP TABLE IF EXISTS `config_user_quicklinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_user_quicklinks` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `username` varchar(50) DEFAULT NULL COMMENT 'username for cli_id',
  `quicklink` varchar(10) NOT NULL COMMENT 'cq/cotm/cmtm/cg/ct/account/template/group etc',
  `group` varchar(15) NOT NULL COMMENT 'campaign/createnew/myaccount/report',
  `done_by` bigint NOT NULL COMMENT 'Client Id of the user who created ',
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_user_quicklinks`
--

LOCK TABLES `config_user_quicklinks` WRITE;
/*!40000 ALTER TABLE `config_user_quicklinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_user_quicklinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_user_whitelabel`
--

DROP TABLE IF EXISTS `config_user_whitelabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_user_whitelabel` (
  `cli_id` bigint NOT NULL COMMENT 'SA Client Id',
  `logo_relative_path` varchar(50) NOT NULL COMMENT 'customers logo',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_user_whitelabel`
--

LOCK TABLES `config_user_whitelabel` WRITE;
/*!40000 ALTER TABLE `config_user_whitelabel` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_user_whitelabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus_request`
--

DROP TABLE IF EXISTS `contactus_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus_request` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `fname` varchar(50) DEFAULT NULL COMMENT 'first name',
  `lname` varchar(50) DEFAULT NULL COMMENT 'last name',
  `email` varchar(50) DEFAULT NULL COMMENT 'email',
  `mobile` varchar(50) DEFAULT NULL COMMENT 'mobile',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `comments` varchar(2000) NOT NULL COMMENT 'comments',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus_request`
--

LOCK TABLES `contactus_request` WRITE;
/*!40000 ALTER TABLE `contactus_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_column_mapping`
--

DROP TABLE IF EXISTS `dlt_template_column_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlt_template_column_mapping` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'unique id for each row of this table',
  `telco` varchar(50) NOT NULL COMMENT 'telco name whose config this row holds',
  `telco_display_name` varchar(100) DEFAULT NULL,
  `header` varchar(30) NOT NULL COMMENT 'header/senderid column',
  `template_id` varchar(30) NOT NULL COMMENT 'dlt template id column',
  `template_name` varchar(30) DEFAULT NULL,
  `template_content` varchar(30) NOT NULL COMMENT 'dlt template message column',
  `template_type` varchar(30) DEFAULT NULL,
  `telemarketer` varchar(40) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `registered_dlt` varchar(30) DEFAULT NULL,
  `registered_on` varchar(30) DEFAULT NULL,
  `status_date` varchar(30) DEFAULT NULL,
  `approval_status` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `consent_type` varchar(30) DEFAULT NULL,
  `datetime_format` varchar(30) DEFAULT NULL COMMENT 'format of date & time in file. If cell is in custom format then leave this null',
  `approval_text` varchar(30) DEFAULT NULL COMMENT 'text to identify if template is approved. If multiple then should be comma seperated',
  `sample_file_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dlt_template_column_mapping_UN` (`telco`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_column_mapping`
--

LOCK TABLES `dlt_template_column_mapping` WRITE;
/*!40000 ALTER TABLE `dlt_template_column_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_column_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_files`
--

DROP TABLE IF EXISTS `dlt_template_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlt_template_files` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table, which also represents a uploaded file',
  `d_id` char(36) NOT NULL COMMENT 'foreign key of dlt_template_request.id',
  `filename` varchar(250) DEFAULT NULL COMMENT 'the file uploaded by the user',
  `filename_ori` varchar(200) DEFAULT NULL COMMENT 'the file uploaded by the user',
  `fileloc` varchar(550) DEFAULT NULL COMMENT 'full path of the file',
  `total` int DEFAULT '0' COMMENT 'total rows in file',
  `valid` int DEFAULT '0' COMMENT 'valid rows in file',
  `invalid` int DEFAULT '0' COMMENT 'invalid(mandatory column value missing) rows in file',
  `duplicate` int DEFAULT '0' COMMENT 'duplicate count',
  `failed` int DEFAULT '0' COMMENT 'failed count',
  `instance_id` varchar(15) DEFAULT NULL COMMENT 'the instance which processed this file',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'file processing status. queued/completed/failed/inprocess',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `started_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process beginning for this file',
  `completed_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process completion (completed/failed) for this file',
  `reason` varchar(500) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  `master_id` char(36) DEFAULT NULL COMMENT 'original id of file in case of retry',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_files`
--

LOCK TABLES `dlt_template_files` WRITE;
/*!40000 ALTER TABLE `dlt_template_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_invalid_rows`
--

DROP TABLE IF EXISTS `dlt_template_invalid_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlt_template_invalid_rows` (
  `id` char(36) NOT NULL,
  `dtf_id` char(36) NOT NULL COMMENT 'dlt_template_files id',
  `data_json` text NOT NULL COMMENT 'data in json format',
  `file_loc` varchar(550) NOT NULL COMMENT 'File with actual data',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_invalid_rows`
--

LOCK TABLES `dlt_template_invalid_rows` WRITE;
/*!40000 ALTER TABLE `dlt_template_invalid_rows` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_invalid_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlt_template_request`
--

DROP TABLE IF EXISTS `dlt_template_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlt_template_request` (
  `id` char(36) NOT NULL COMMENT 'unique id for this request',
  `username` varchar(50) NOT NULL,
  `cli_id` bigint NOT NULL,
  `entity_id` varchar(19) NOT NULL,
  `template_group_id` bigint NOT NULL,
  `telco` varchar(50) NOT NULL,
  `status` varchar(10) DEFAULT 'queued' COMMENT 'final campaign status. queued/completed/failed/inprocess',
  `reason` varchar(100) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint NOT NULL COMMENT 'Created user cli_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlt_template_request`
--

LOCK TABLES `dlt_template_request` WRITE;
/*!40000 ALTER TABLE `dlt_template_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlt_template_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_req`
--

DROP TABLE IF EXISTS `download_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `download_req` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `cli_id` bigint NOT NULL COMMENT 'report for the user',
  `from_ts` datetime DEFAULT NULL COMMENT 'from datetime. time component for TZ',
  `to_ts` datetime DEFAULT NULL COMMENT 'to datetime. time component for TZ',
  `req_id` varchar(100) DEFAULT NULL COMMENT 'the req id received from download service',
  `status` varchar(15) NOT NULL COMMENT 'inprocess/failed/completed',
  `reason` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL COMMENT 'interface type filter. can be comma seperated',
  `campaign_id` char(36) DEFAULT NULL COMMENT 'campaign filter.',
  `campaign_name` varchar(50) DEFAULT NULL,
  `senderid` varchar(10) DEFAULT NULL COMMENT 'senderid filter.',
  `statusflag` varchar(15) DEFAULT NULL COMMENT 'statusflag filter. submitted/delivered/rejected/failed',
  `loggedinuserid` bigint NOT NULL COMMENT 'cli_id who made the req',
  `loggedinusername` varchar(50) NOT NULL COMMENT 'username who made the req',
  `loggedinusertype` tinyint(1) NOT NULL COMMENT 'usertype who made the req 0/1/2',
  `from_tz` date NOT NULL COMMENT 'User selected date in his tz',
  `to_tz` date DEFAULT NULL COMMENT 'user selected date in his tz',
  `zone_name` varchar(50) DEFAULT NULL COMMENT 'tz of the user',
  `download_path` varchar(300) DEFAULT NULL COMMENT 'full server path of the download file',
  `total` int DEFAULT NULL,
  `download_xl_path` varchar(300) DEFAULT NULL,
  `filters` text COMMENT 'selected filters as json',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_req`
--

LOCK TABLES `download_req` WRITE;
/*!40000 ALTER TABLE `download_req` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_log` (
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `user` varchar(50) NOT NULL COMMENT 'username',
  `httpcode` varchar(10) NOT NULL COMMENT 'HTTP status code',
  `route` varchar(300) NOT NULL COMMENT 'request route url',
  `ip` varchar(20) DEFAULT NULL,
  `err_msg` varchar(500) NOT NULL COMMENT 'the error message ',
  `params` text NOT NULL COMMENT 'the req parameters',
  `sessionid` varchar(50) NOT NULL COMMENT 'unique key to identify the token uniqueness',
  `req_id` varchar(50) DEFAULT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `err_stack` text NOT NULL COMMENT 'the complete err stack'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_log`
--

LOCK TABLES `error_log` WRITE;
/*!40000 ALTER TABLE `error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_file_splits`
--

DROP TABLE IF EXISTS `group_file_splits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_file_splits` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `g_id` char(36) NOT NULL COMMENT 'foreign key of group_master.id',
  `g_f_id` char(36) NOT NULL COMMENT 'foreign key of group_files.id',
  `filename` varchar(250) DEFAULT NULL COMMENT 'split filename used for internal processing',
  `fileloc` varchar(550) DEFAULT NULL COMMENT 'full path of the split file',
  `total` int DEFAULT NULL COMMENT 'total rows in file',
  `valid` int DEFAULT NULL COMMENT 'valid rows in file',
  `invalid` int DEFAULT NULL COMMENT 'invalid rows in file',
  `duplicate` int DEFAULT NULL COMMENT 'duplicate count',
  `failed` int DEFAULT NULL COMMENT 'failed count',
  `instance_id` varchar(15) DEFAULT NULL COMMENT 'the instance which processed this file',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'file processing status. queued/completed/failed/inprocess',
  `retry_count` tinyint unsigned DEFAULT '0' COMMENT 'retry count of the file on failure. retry count starts from 1.',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `started_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process beginning for this file',
  `completed_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process completion (completed/failed) for this file',
  `reason` varchar(100) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_file_splits`
--

LOCK TABLES `group_file_splits` WRITE;
/*!40000 ALTER TABLE `group_file_splits` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_file_splits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_files`
--

DROP TABLE IF EXISTS `group_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_files` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table, which also represents a uploaded file',
  `g_id` char(36) NOT NULL COMMENT 'foreign key of group_master.id',
  `filename` varchar(250) DEFAULT NULL COMMENT 'filename used for internal processing',
  `filename_ori` varchar(200) DEFAULT NULL COMMENT 'the file uploaded by the user',
  `filesize` varchar(100) DEFAULT NULL,
  `filetype` varchar(5) NOT NULL COMMENT 'file extension. csv/xls/xlsx',
  `fileloc` varchar(550) DEFAULT NULL COMMENT 'full path of the file',
  `total` int DEFAULT NULL COMMENT 'total rows in file',
  `valid` int DEFAULT NULL COMMENT 'valid rows in file',
  `invalid` int DEFAULT NULL COMMENT 'invalid rows in file',
  `duplicate` int DEFAULT NULL COMMENT 'duplicate count',
  `failed` int DEFAULT NULL COMMENT 'failed count',
  `instance_id` varchar(15) DEFAULT NULL COMMENT 'the instance which processed this file',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'file processing status. queued/completed/failed/inprocess',
  `retry_count` tinyint unsigned DEFAULT '0' COMMENT 'retry count of the file on failure. retry count starts from 1.',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `started_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process beginning for this file',
  `completed_ts` datetime DEFAULT NULL COMMENT 'represents the ts of process completion (completed/failed) for this file',
  `reason` varchar(100) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_files`
--

LOCK TABLES `group_files` WRITE;
/*!40000 ALTER TABLE `group_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_master`
--

DROP TABLE IF EXISTS `group_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_master` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `g_name` varchar(50) NOT NULL COMMENT '-- should be unique for this user',
  `g_visibility` varchar(10) NOT NULL COMMENT 'private/shared',
  `g_type` varchar(10) NOT NULL COMMENT 'normal/exclude',
  `status` varchar(10) DEFAULT 'queued' COMMENT 'final group status. queued,completed/failed/inprocess',
  `reason` varchar(100) DEFAULT NULL COMMENT 'the reason for failure or some desc',
  `full_completion_yn` tinyint NOT NULL DEFAULT '1' COMMENT '0-One or more group files have failed (after max retry) , 1- All the files have been completed',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_ts` datetime DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_master`
--

LOCK TABLES `group_master` WRITE;
/*!40000 ALTER TABLE `group_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user_mapping`
--

DROP TABLE IF EXISTS `group_user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_user_mapping` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `g_id` char(36) NOT NULL COMMENT 'foreign key group_master.id',
  `assigned_by` char(36) DEFAULT NULL COMMENT 'ci_id (who) assigned this',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_user_mapping_g_id_cli_id_uindex` (`g_id`,`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user_mapping`
--

LOCK TABLES `group_user_mapping` WRITE;
/*!40000 ALTER TABLE `group_user_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_routing`
--

DROP TABLE IF EXISTS `queue_routing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queue_routing` (
  `max_count` decimal(10,0) NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_routing`
--

LOCK TABLES `queue_routing` WRITE;
/*!40000 ALTER TABLE `queue_routing` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_routing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redis_info_cm`
--

DROP TABLE IF EXISTS `redis_info_cm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redis_info_cm` (
  `rid` int NOT NULL,
  `ip` varchar(15) NOT NULL,
  `port` int NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  `db` varchar(2) NOT NULL,
  `maxpool` int NOT NULL,
  `con_time_out_insec` int NOT NULL,
  `con_wait_time_insec` int NOT NULL,
  `status` int DEFAULT '1',
  `comment` varchar(50) NOT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `unique_cons_cm` (`ip`,`port`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redis_info_cm`
--

LOCK TABLES `redis_info_cm` WRITE;
/*!40000 ALTER TABLE `redis_info_cm` DISABLE KEYS */;
/*!40000 ALTER TABLE `redis_info_cm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_priority`
--

DROP TABLE IF EXISTS `sms_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_priority` (
  `volume` bigint NOT NULL,
  `priority` tinyint NOT NULL COMMENT '0,1=High; 2,3=Medium; 4=Low; 5=VeryLow',
  UNIQUE KEY `sms_priority_UN` (`volume`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='based on volume respective sms priority will be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_priority`
--

LOCK TABLES `sms_priority` WRITE;
/*!40000 ALTER TABLE `sms_priority` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_master`
--

DROP TABLE IF EXISTS `template_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_master` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `t_name` varchar(100) NOT NULL COMMENT '-- should be unique for this user',
  `t_type` varchar(10) DEFAULT NULL COMMENT 'column/index incase is_static=0',
  `t_mobile_column` varchar(50) DEFAULT NULL COMMENT 'used to represent mobile column in the upload file. it could be a index position or column name in case is_static=0',
  `dlt_entity_id` varchar(19) NOT NULL COMMENT 'dlt_template_master.entity_id',
  `dlt_template_id` varchar(19) NOT NULL COMMENT 'dlt_template_master.template_id',
  `t_lang_type` varchar(15) NOT NULL COMMENT 'english, unicode',
  `t_lang` varchar(35) DEFAULT NULL COMMENT 'null / the language selected when unicode',
  `t_content` text NOT NULL COMMENT 'template message',
  `is_static` tinyint(1) DEFAULT NULL COMMENT '0-dynamic, 1-static',
  `is_unicode` tinyint(1) NOT NULL COMMENT '0-plain 1-unicode',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_master`
--

LOCK TABLES `template_master` WRITE;
/*!40000 ALTER TABLE `template_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezone`
--

DROP TABLE IF EXISTS `timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timezone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(50) NOT NULL COMMENT 'eg. Asia/Calcutta',
  `display_name` varchar(80) NOT NULL COMMENT 'eg. (UTC+00:00) Etc/Greenwich',
  `short_name` varchar(20) DEFAULT NULL,
  `long_name` varchar(40) NOT NULL COMMENT 'eg. Indian Standard Time',
  `offset` varchar(10) NOT NULL COMMENT 'e.g +05:30',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezone`
--

LOCK TABLES `timezone` WRITE;
/*!40000 ALTER TABLE `timezone` DISABLE KEYS */;
/*!40000 ALTER TABLE `timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `two_factor_authentication`
--

DROP TABLE IF EXISTS `two_factor_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `two_factor_authentication` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(50) NOT NULL,
  `cli_id` bigint NOT NULL,
  `username` varchar(50) NOT NULL,
  `otp` int NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `invalid_attempts` int DEFAULT NULL,
  `regen_attempts` int DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `two_factor_authentication`
--

LOCK TABLES `two_factor_authentication` WRITE;
/*!40000 ALTER TABLE `two_factor_authentication` DISABLE KEYS */;
/*!40000 ALTER TABLE `two_factor_authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_configs`
--

DROP TABLE IF EXISTS `user_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_configs` (
  `cli_id` bigint NOT NULL,
  `auto_gen_cname` tinyint DEFAULT '0' COMMENT '0-do not auto generate campaign name 1-auto generate campaign name',
  `subusers_reports` tinyint DEFAULT '0',
  `full_message` tinyint DEFAULT '0',
  `inactive_account_login` tinyint DEFAULT '0' COMMENT '0-disabled, 1-enabled',
  UNIQUE KEY `user_configs_UN` (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_configs`
--

LOCK TABLES `user_configs` WRITE;
/*!40000 ALTER TABLE `user_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_session_log`
--

DROP TABLE IF EXISTS `user_session_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_session_log` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `user` varchar(50) NOT NULL COMMENT 'username',
  `action` varchar(10) NOT NULL COMMENT 'login/logout',
  `sessionid` varchar(50) NOT NULL COMMENT 'unique key to identify the token uniqueness',
  `ip` varchar(20) DEFAULT NULL,
  `action_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `ua_info` text NOT NULL COMMENT 'user agent information',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_session_log`
--

LOCK TABLES `user_session_log` WRITE;
/*!40000 ALTER TABLE `user_session_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_session_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_transactions` (
  `id` char(36) NOT NULL COMMENT 'unique id for this table',
  `cli_id` bigint NOT NULL COMMENT 'Client Id of the end user',
  `username` varchar(50) DEFAULT NULL COMMENT 'username for cli_id',
  `action` varchar(10) NOT NULL COMMENT 'add/deduct',
  `amount` decimal(10,4) NOT NULL COMMENT 'wallet amount to be added / deducted',
  `loggedin_bal_before` decimal(15,6) DEFAULT NULL COMMENT 'loggedin users balance before the action',
  `loggedin_bal_after` decimal(15,6) DEFAULT NULL COMMENT 'loggedin users balance after the action. calc=>bal_before + action_amount',
  `old_bal` decimal(15,6) DEFAULT NULL COMMENT 'users bal before action',
  `new_bal` decimal(15,6) DEFAULT '0.000000' COMMENT 'users new balance after action. newbal=oldbal+action_amount',
  `source` varchar(50) DEFAULT NULL COMMENT 'request from e.g. account creation / edit account / manage wallet',
  `description` varchar(300) DEFAULT NULL COMMENT 'comments abt the transaction',
  `sessionid` char(36) DEFAULT NULL COMMENT 'session id from token',
  `done_by` bigint NOT NULL COMMENT 'Client Id of the user who made this transaction',
  `done_by_username` varchar(50) DEFAULT NULL COMMENT 'username for done_by',
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_transactions`
--

LOCK TABLES `wallet_transactions` WRITE;
/*!40000 ALTER TABLE `wallet_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xls_live_api_customer_28sep21`
--

DROP TABLE IF EXISTS `xls_live_api_customer_28sep21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xls_live_api_customer_28sep21` (
  `customer_name` varchar(100) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `interfacetype` varchar(25) DEFAULT NULL,
  `total_recd` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xls_live_api_customer_28sep21`
--

LOCK TABLES `xls_live_api_customer_28sep21` WRITE;
/*!40000 ALTER TABLE `xls_live_api_customer_28sep21` DISABLE KEYS */;
/*!40000 ALTER TABLE `xls_live_api_customer_28sep21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xls_user_dlt_templates_28sep21`
--

DROP TABLE IF EXISTS `xls_user_dlt_templates_28sep21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xls_user_dlt_templates_28sep21` (
  `dlt_req_uid` int DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  `consent_type` varchar(100) DEFAULT NULL,
  `header_reg_id` varchar(50) DEFAULT NULL,
  `senderid` varchar(50) DEFAULT NULL,
  `register_at_operator` varchar(100) DEFAULT NULL,
  `telemarketer` varchar(100) DEFAULT NULL,
  `senderid_reg_date` datetime DEFAULT NULL,
  `template_msg` varchar(3000) DEFAULT NULL,
  `template_sample_msg` varchar(3000) DEFAULT NULL,
  `senderid_req_date` datetime DEFAULT NULL,
  `approval_status` int DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `rodt` datetime DEFAULT NULL,
  `if_deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xls_user_dlt_templates_28sep21`
--

LOCK TABLES `xls_user_dlt_templates_28sep21` WRITE;
/*!40000 ALTER TABLE `xls_user_dlt_templates_28sep21` DISABLE KEYS */;
/*!40000 ALTER TABLE `xls_user_dlt_templates_28sep21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xls_user_dlt_templates_all_06oct21`
--

DROP TABLE IF EXISTS `xls_user_dlt_templates_all_06oct21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xls_user_dlt_templates_all_06oct21` (
  `cli_id` bigint DEFAULT NULL,
  `tg_id` varchar(20) DEFAULT NULL,
  `dlt_req_uid` int DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  `consent_type` varchar(100) DEFAULT NULL,
  `header_reg_id` varchar(50) DEFAULT NULL,
  `senderid` varchar(50) DEFAULT NULL,
  `register_at_operator` varchar(100) DEFAULT NULL,
  `telemarketer` varchar(100) DEFAULT NULL,
  `senderid_reg_date` datetime DEFAULT NULL,
  `template_msg` varchar(3000) DEFAULT NULL,
  `template_sample_msg` varchar(3000) DEFAULT NULL,
  `senderid_req_date` datetime DEFAULT NULL,
  `approval_status` int DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `rodt` datetime DEFAULT NULL,
  `if_deleted` int DEFAULT NULL,
  `completed` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xls_user_dlt_templates_all_06oct21`
--

LOCK TABLES `xls_user_dlt_templates_all_06oct21` WRITE;
/*!40000 ALTER TABLE `xls_user_dlt_templates_all_06oct21` DISABLE KEYS */;
/*!40000 ALTER TABLE `xls_user_dlt_templates_all_06oct21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xls_user_dlt_templates_all_28sep21`
--

DROP TABLE IF EXISTS `xls_user_dlt_templates_all_28sep21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xls_user_dlt_templates_all_28sep21` (
  `dlt_req_uid` int DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  `consent_type` varchar(100) DEFAULT NULL,
  `header_reg_id` varchar(50) DEFAULT NULL,
  `senderid` varchar(50) DEFAULT NULL,
  `register_at_operator` varchar(100) DEFAULT NULL,
  `telemarketer` varchar(100) DEFAULT NULL,
  `senderid_reg_date` datetime DEFAULT NULL,
  `template_msg` varchar(3000) DEFAULT NULL,
  `template_sample_msg` varchar(3000) DEFAULT NULL,
  `senderid_req_date` datetime DEFAULT NULL,
  `approval_status` int DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `rodt` datetime DEFAULT NULL,
  `if_deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xls_user_dlt_templates_all_28sep21`
--

LOCK TABLES `xls_user_dlt_templates_all_28sep21` WRITE;
/*!40000 ALTER TABLE `xls_user_dlt_templates_all_28sep21` DISABLE KEYS */;
/*!40000 ALTER TABLE `xls_user_dlt_templates_all_28sep21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xls_user_dlt_templates_testing`
--

DROP TABLE IF EXISTS `xls_user_dlt_templates_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xls_user_dlt_templates_testing` (
  `dlt_req_uid` int DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  `consent_type` varchar(100) DEFAULT NULL,
  `header_reg_id` varchar(50) DEFAULT NULL,
  `senderid` varchar(50) DEFAULT NULL,
  `register_at_operator` varchar(100) DEFAULT NULL,
  `telemarketer` varchar(100) DEFAULT NULL,
  `senderid_reg_date` datetime DEFAULT NULL,
  `template_msg` varchar(3000) DEFAULT NULL,
  `template_sample_msg` varchar(3000) DEFAULT NULL,
  `senderid_req_date` datetime DEFAULT NULL,
  `approval_status` int DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `rodt` datetime DEFAULT NULL,
  `if_deleted` int DEFAULT NULL,
  `cli_id` bigint DEFAULT NULL,
  `template_group_id` bigint DEFAULT NULL,
  `completed` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xls_user_dlt_templates_testing`
--

LOCK TABLES `xls_user_dlt_templates_testing` WRITE;
/*!40000 ALTER TABLE `xls_user_dlt_templates_testing` DISABLE KEYS */;
/*!40000 ALTER TABLE `xls_user_dlt_templates_testing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  6:34:27
