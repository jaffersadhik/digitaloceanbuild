-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 10.122.0.3    Database: listing
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
-- Table structure for table `blacklist$`
--

DROP TABLE IF EXISTS `blacklist$`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blacklist$` (
  `mobile` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist$`
--

LOCK TABLES `blacklist$` WRITE;
/*!40000 ALTER TABLE `blacklist$` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist$` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_list_headers`
--

DROP TABLE IF EXISTS `block_list_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_list_headers` (
  `header` varchar(15) NOT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_list_headers`
--

LOCK TABLES `block_list_headers` WRITE;
/*!40000 ALTER TABLE `block_list_headers` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_list_headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_list_numbers`
--

DROP TABLE IF EXISTS `block_list_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_list_numbers` (
  `mnumber` bigint NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_list_numbers`
--

LOCK TABLES `block_list_numbers` WRITE;
/*!40000 ALTER TABLE `block_list_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_list_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_list_spam_words`
--

DROP TABLE IF EXISTS `block_list_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_list_spam_words` (
  `keywords` text NOT NULL,
  `threshold` tinyint NOT NULL DEFAULT '1',
  `action` tinyint NOT NULL DEFAULT '0' COMMENT '0- Do Nothing, 1- Block the message, 2 - Log the spam words',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_list_spam_words`
--

LOCK TABLES `block_list_spam_words` WRITE;
/*!40000 ALTER TABLE `block_list_spam_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_list_spam_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_list_spam_words_msgtype`
--

DROP TABLE IF EXISTS `block_list_spam_words_msgtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_list_spam_words_msgtype` (
  `msg_type` tinyint NOT NULL,
  `keywords` text NOT NULL,
  `threshold` tinyint NOT NULL DEFAULT '1',
  `action` tinyint NOT NULL DEFAULT '0' COMMENT '0 - Do Nothing (Ignore), 1 - Block the request, 2 - Log the spam words',
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_list_spam_words_msgtype`
--

LOCK TABLES `block_list_spam_words_msgtype` WRITE;
/*!40000 ALTER TABLE `block_list_spam_words_msgtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_list_spam_words_msgtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_block_list_numbers`
--

DROP TABLE IF EXISTS `client_block_list_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_block_list_numbers` (
  `cli_id` bigint NOT NULL,
  `mnumber` bigint NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cli_id`,`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_block_list_numbers`
--

LOCK TABLES `client_block_list_numbers` WRITE;
/*!40000 ALTER TABLE `client_block_list_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_block_list_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnd_data`
--

DROP TABLE IF EXISTS `dnd_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnd_data` (
  `dest` bigint NOT NULL,
  `preferences` varchar(20) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnd_data`
--

LOCK TABLES `dnd_data` WRITE;
/*!40000 ALTER TABLE `dnd_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnd_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exceptions_spam_block_list`
--

DROP TABLE IF EXISTS `exceptions_spam_block_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exceptions_spam_block_list` (
  `cli_id` bigint NOT NULL,
  `template` text NOT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exceptions_spam_block_list`
--

LOCK TABLES `exceptions_spam_block_list` WRITE;
/*!40000 ALTER TABLE `exceptions_spam_block_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `exceptions_spam_block_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interface_sms_template`
--

DROP TABLE IF EXISTS `interface_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interface_sms_template` (
  `template_id` varchar(20) NOT NULL,
  `cli_id` bigint NOT NULL,
  `template` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface_sms_template`
--

LOCK TABLES `interface_sms_template` WRITE;
/*!40000 ALTER TABLE `interface_sms_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `interface_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intl_block_list_spam_words`
--

DROP TABLE IF EXISTS `intl_block_list_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intl_block_list_spam_words` (
  `keywords` text NOT NULL,
  `threshold` tinyint NOT NULL DEFAULT '1',
  `action` tinyint NOT NULL DEFAULT '0' COMMENT '0- Do Nothing, 1- Block the message, 2 - Log the spam words',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intl_block_list_spam_words`
--

LOCK TABLES `intl_block_list_spam_words` WRITE;
/*!40000 ALTER TABLE `intl_block_list_spam_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `intl_block_list_spam_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intl_block_list_spam_words_msgtype`
--

DROP TABLE IF EXISTS `intl_block_list_spam_words_msgtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intl_block_list_spam_words_msgtype` (
  `msg_type` tinyint NOT NULL,
  `keywords` text NOT NULL,
  `threshold` tinyint NOT NULL,
  `action` tinyint NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intl_block_list_spam_words_msgtype`
--

LOCK TABLES `intl_block_list_spam_words_msgtype` WRITE;
/*!40000 ALTER TABLE `intl_block_list_spam_words_msgtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `intl_block_list_spam_words_msgtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intl_exceptions_spam_block_list`
--

DROP TABLE IF EXISTS `intl_exceptions_spam_block_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intl_exceptions_spam_block_list` (
  `cli_id` bigint NOT NULL,
  `template` text NOT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intl_exceptions_spam_block_list`
--

LOCK TABLES `intl_exceptions_spam_block_list` WRITE;
/*!40000 ALTER TABLE `intl_exceptions_spam_block_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `intl_exceptions_spam_block_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optout_list`
--

DROP TABLE IF EXISTS `optout_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optout_list` (
  `optout_id` bigint NOT NULL,
  `mnumber` bigint NOT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`optout_id`,`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optout_list`
--

LOCK TABLES `optout_list` WRITE;
/*!40000 ALTER TABLE `optout_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `optout_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whitelist_mobiles`
--

DROP TABLE IF EXISTS `whitelist_mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `whitelist_mobiles` (
  `mnumber` bigint NOT NULL,
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitelist_mobiles`
--

LOCK TABLES `whitelist_mobiles` WRITE;
/*!40000 ALTER TABLE `whitelist_mobiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist_mobiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  6:35:25
