-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 10.122.0.3    Database: client_handover
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
-- Table structure for table `client_handover_config_body_params`
--

DROP TABLE IF EXISTS `client_handover_config_body_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_config_body_params` (
  `handover_id` bigint NOT NULL,
  `handover_seq_no` int NOT NULL,
  `param_seq_no` int NOT NULL,
  `mw_constant_name` varchar(100) NOT NULL,
  `mw_alternative_constant_name` varchar(100) DEFAULT NULL,
  `default_value` varchar(200) DEFAULT NULL,
  `data_type` int NOT NULL DEFAULT '1' COMMENT '1 -> String, 2 -> Number, 3 -> Date / Time',
  `data_format` varchar(50) DEFAULT NULL,
  `data_validation` varchar(100) DEFAULT NULL COMMENT '"" -> Empty String, NULL -> Empty String, -999 -> Number invalid',
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `drools_file_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`handover_id`,`handover_seq_no`,`mw_constant_name`),
  CONSTRAINT `client_handover_params_FK` FOREIGN KEY (`handover_id`) REFERENCES `client_handover_config_master` (`handover_id`),
  CONSTRAINT `client_handover_params_FK_1` FOREIGN KEY (`handover_id`, `handover_seq_no`) REFERENCES `client_handover_config_detail` (`handover_id`, `handover_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_config_body_params`
--

LOCK TABLES `client_handover_config_body_params` WRITE;
/*!40000 ALTER TABLE `client_handover_config_body_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_config_body_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_config_detail`
--

DROP TABLE IF EXISTS `client_handover_config_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_config_detail` (
  `handover_id` bigint NOT NULL,
  `handover_seq_no` int NOT NULL COMMENT 'Sequence number for this handover',
  `primary_url` varchar(500) NOT NULL,
  `secondary_url` varchar(500) DEFAULT NULL COMMENT 'In case of Primary URL is not available, connect to the secondary URL',
  `is_secured` int NOT NULL DEFAULT '0' COMMENT '0 -> http, 1-> https, all other values are treated as http only',
  `certificate_file_path` varchar(500) DEFAULT NULL COMMENT 'In case if url is using certificate file, then we use the file location.',
  `certificate_pass_pharse` varchar(100) DEFAULT NULL COMMENT 'Password to open the certificate file.',
  `http_method` int NOT NULL DEFAULT '0' COMMENT '0 -> GET, 1 -> POST, Any other values treated as GET.',
  `handover_template` varchar(2000) NOT NULL COMMENT 'template to send the message to the client',
  `body_header` varchar(500) DEFAULT NULL,
  `body_footer` varchar(500) DEFAULT NULL,
  `con_wait_timeout_millis` int NOT NULL DEFAULT '30000',
  `read_timeout_millis` int NOT NULL DEFAULT '30000',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch_body_delimiter` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`handover_id`,`handover_seq_no`),
  CONSTRAINT `client_handover_master_FK` FOREIGN KEY (`handover_id`) REFERENCES `client_handover_config_master` (`handover_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_config_detail`
--

LOCK TABLES `client_handover_config_detail` WRITE;
/*!40000 ALTER TABLE `client_handover_config_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_config_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_config_header_params`
--

DROP TABLE IF EXISTS `client_handover_config_header_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_config_header_params` (
  `handover_id` bigint NOT NULL,
  `handover_seq_no` int NOT NULL,
  `param_seq_no` int NOT NULL,
  `header_param_name` varchar(200) NOT NULL,
  `header_param_value` varchar(200) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`handover_id`,`handover_seq_no`,`header_param_name`),
  CONSTRAINT `client_handover_header_params_FK` FOREIGN KEY (`handover_id`) REFERENCES `client_handover_config_master` (`handover_id`),
  CONSTRAINT `client_handover_header_params_FK_1` FOREIGN KEY (`handover_id`, `handover_seq_no`) REFERENCES `client_handover_config_detail` (`handover_id`, `handover_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_config_header_params`
--

LOCK TABLES `client_handover_config_header_params` WRITE;
/*!40000 ALTER TABLE `client_handover_config_header_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_config_header_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_config_master`
--

DROP TABLE IF EXISTS `client_handover_config_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_config_master` (
  `handover_id` bigint NOT NULL AUTO_INCREMENT,
  `cli_id` bigint NOT NULL,
  `batch_size` int NOT NULL DEFAULT '0' COMMENT 'Batch size for each request',
  `retry_expiry_logic` int NOT NULL DEFAULT '0' COMMENT '0 -> Disabled 1 -> Time Based, 2 -> Retry Count Based, 3 -> Combination of both time and count',
  `expiry_time_seconds` int NOT NULL DEFAULT '300' COMMENT 'Time difference from DN received time, to make the record as expired',
  `max_retry_count` int NOT NULL DEFAULT '3',
  `retry_sleep_time_millis` int NOT NULL DEFAULT '1000' COMMENT 'Sleep time between each retry.',
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_retry_attempt` int NOT NULL DEFAULT '1',
  `thread_count` int DEFAULT '1',
  PRIMARY KEY (`handover_id`),
  UNIQUE KEY `client_handover_UN` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_config_master`
--

LOCK TABLES `client_handover_config_master` WRITE;
/*!40000 ALTER TABLE `client_handover_config_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_config_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_log_detail`
--

DROP TABLE IF EXISTS `client_handover_log_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_log_detail` (
  `request_id` varchar(50) DEFAULT NULL,
  `cli_url` varchar(100) DEFAULT NULL,
  `cli_hover_req_content` text,
  `ch_res` text,
  `ch_is_batch` tinyint DEFAULT NULL,
  `ch_sts_code` bigint DEFAULT NULL,
  `ch_res_time` bigint DEFAULT NULL,
  `cli_handover_start_time` datetime DEFAULT NULL,
  `cli_handover_end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_log_detail`
--

LOCK TABLES `client_handover_log_detail` WRITE;
/*!40000 ALTER TABLE `client_handover_log_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_log_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_log_master`
--

DROP TABLE IF EXISTS `client_handover_log_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_log_master` (
  `cli_id` bigint NOT NULL,
  `msg_id` varchar(25) NOT NULL,
  `max_retry_count` int NOT NULL,
  `request_id` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_log_master`
--

LOCK TABLES `client_handover_log_master` WRITE;
/*!40000 ALTER TABLE `client_handover_log_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_log_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_retry_detail`
--

DROP TABLE IF EXISTS `client_handover_retry_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_retry_detail` (
  `cli_id` bigint DEFAULT NULL,
  `msg_id` varchar(50) NOT NULL,
  `max_retry_count` int DEFAULT NULL,
  `request_id` varchar(50) DEFAULT NULL,
  `cli_handover_start_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_retry_detail`
--

LOCK TABLES `client_handover_retry_detail` WRITE;
/*!40000 ALTER TABLE `client_handover_retry_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_retry_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_retry_master`
--

DROP TABLE IF EXISTS `client_handover_retry_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_retry_master` (
  `cli_id` bigint NOT NULL,
  `msg_id` varchar(25) NOT NULL,
  `cli_hover_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_retry_master`
--

LOCK TABLES `client_handover_retry_master` WRITE;
/*!40000 ALTER TABLE `client_handover_retry_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_retry_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_handover_retry_meta_data_failure`
--

DROP TABLE IF EXISTS `client_handover_retry_meta_data_failure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_handover_retry_meta_data_failure` (
  `msg_id` varchar(25) NOT NULL,
  `cli_hover_message` text NOT NULL,
  `is_customer_specific` tinyint(1) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_handover_retry_meta_data_failure`
--

LOCK TABLES `client_handover_retry_meta_data_failure` WRITE;
/*!40000 ALTER TABLE `client_handover_retry_meta_data_failure` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_handover_retry_meta_data_failure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlrquery_config_body_params`
--

DROP TABLE IF EXISTS `dlrquery_config_body_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlrquery_config_body_params` (
  `response_header_id` bigint NOT NULL,
  `param_seq_no` int NOT NULL,
  `mw_constant_name` varchar(100) NOT NULL,
  `mw_alternative_constant_name` varchar(100) DEFAULT NULL,
  `default_value` varchar(200) DEFAULT NULL,
  `data_type` int NOT NULL DEFAULT '1' COMMENT '1 -> String, 2 -> Number, 3 -> Date / Time',
  `data_format` varchar(50) DEFAULT NULL,
  `data_validation` varchar(100) DEFAULT NULL COMMENT '"" -> Empty String, NULL -> Empty String, -999 -> Number invalid',
  `drools_file_path` varchar(500) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`response_header_id`,`param_seq_no`),
  CONSTRAINT `dlrquery_config_body_params_FK` FOREIGN KEY (`response_header_id`) REFERENCES `dlrquery_response_master` (`response_header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlrquery_config_body_params`
--

LOCK TABLES `dlrquery_config_body_params` WRITE;
/*!40000 ALTER TABLE `dlrquery_config_body_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlrquery_config_body_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlrquery_config_detail`
--

DROP TABLE IF EXISTS `dlrquery_config_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlrquery_config_detail` (
  `response_header_id` bigint NOT NULL,
  `handover_template` varchar(2000) NOT NULL COMMENT 'template to send the message to the client',
  `body_header` varchar(500) DEFAULT NULL,
  `body_footer` varchar(500) DEFAULT NULL,
  `batch_body_delimiter` varchar(100) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`response_header_id`),
  CONSTRAINT `dlrquery_config_detail_FK` FOREIGN KEY (`response_header_id`) REFERENCES `dlrquery_response_master` (`response_header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlrquery_config_detail`
--

LOCK TABLES `dlrquery_config_detail` WRITE;
/*!40000 ALTER TABLE `dlrquery_config_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlrquery_config_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlrquery_config_header_params`
--

DROP TABLE IF EXISTS `dlrquery_config_header_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlrquery_config_header_params` (
  `response_header_id` bigint NOT NULL,
  `param_seq_no` int NOT NULL,
  `header_param_name` varchar(200) NOT NULL,
  `header_param_value` varchar(200) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`response_header_id`,`param_seq_no`),
  UNIQUE KEY `dlrquery_config_header_params_UN` (`response_header_id`,`header_param_name`),
  CONSTRAINT `dlrquery_config_header_params_FK` FOREIGN KEY (`response_header_id`) REFERENCES `dlrquery_response_master` (`response_header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlrquery_config_header_params`
--

LOCK TABLES `dlrquery_config_header_params` WRITE;
/*!40000 ALTER TABLE `dlrquery_config_header_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlrquery_config_header_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlrquery_config_master`
--

DROP TABLE IF EXISTS `dlrquery_config_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlrquery_config_master` (
  `cli_id` bigint NOT NULL,
  `response_header_id` bigint NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`cli_id`,`response_header_id`),
  UNIQUE KEY `dlrquery_config_master_UN` (`cli_id`),
  KEY `dlrquery_config_master_FK` (`response_header_id`),
  CONSTRAINT `dlrquery_config_master_FK` FOREIGN KEY (`response_header_id`) REFERENCES `dlrquery_response_master` (`response_header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlrquery_config_master`
--

LOCK TABLES `dlrquery_config_master` WRITE;
/*!40000 ALTER TABLE `dlrquery_config_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlrquery_config_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlrquery_response_master`
--

DROP TABLE IF EXISTS `dlrquery_response_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlrquery_response_master` (
  `response_header_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`response_header_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlrquery_response_master`
--

LOCK TABLES `dlrquery_response_master` WRITE;
/*!40000 ALTER TABLE `dlrquery_response_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlrquery_response_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  6:34:07
