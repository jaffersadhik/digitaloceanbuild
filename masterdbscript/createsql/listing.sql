-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.136    Database: listing
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-1:10.5.12+maria~bionic-log

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
-- Current Database: `listing`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `listing` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `listing`;

--
-- Table structure for table `blacklist$`
--

DROP TABLE IF EXISTS `blacklist$`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist$` (
  `mobile` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block_list_headers`
--

DROP TABLE IF EXISTS `block_list_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_list_headers` (
  `header` varchar(15) NOT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block_list_numbers`
--

DROP TABLE IF EXISTS `block_list_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_list_numbers` (
  `mnumber` bigint(19) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block_list_spam_words`
--

DROP TABLE IF EXISTS `block_list_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_list_spam_words` (
  `keywords` text NOT NULL,
  `threshold` tinyint(3) NOT NULL DEFAULT 1,
  `action` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0- Do Nothing, 1- Block the message, 2 - Log the spam words',
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block_list_spam_words_msgtype`
--

DROP TABLE IF EXISTS `block_list_spam_words_msgtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_list_spam_words_msgtype` (
  `msg_type` tinyint(3) NOT NULL,
  `keywords` text NOT NULL,
  `threshold` tinyint(3) NOT NULL DEFAULT 1,
  `action` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0 - Do Nothing (Ignore), 1 - Block the request, 2 - Log the spam words',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_block_list_numbers`
--

DROP TABLE IF EXISTS `client_block_list_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_block_list_numbers` (
  `cli_id` bigint(20) NOT NULL,
  `mnumber` bigint(19) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cli_id`,`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dnd_data`
--

DROP TABLE IF EXISTS `dnd_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnd_data` (
  `dest` bigint(19) NOT NULL,
  `preferences` varchar(20) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exceptions_spam_block_list`
--

DROP TABLE IF EXISTS `exceptions_spam_block_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exceptions_spam_block_list` (
  `cli_id` bigint(16) NOT NULL,
  `template` text NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_sms_template`
--

DROP TABLE IF EXISTS `interface_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_sms_template` (
  `template_id` varchar(20) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `template` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intl_block_list_spam_words`
--

DROP TABLE IF EXISTS `intl_block_list_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intl_block_list_spam_words` (
  `keywords` text NOT NULL,
  `threshold` tinyint(3) NOT NULL DEFAULT 1,
  `action` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0- Do Nothing, 1- Block the message, 2 - Log the spam words',
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intl_block_list_spam_words_msgtype`
--

DROP TABLE IF EXISTS `intl_block_list_spam_words_msgtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intl_block_list_spam_words_msgtype` (
  `msg_type` tinyint(3) NOT NULL,
  `keywords` text NOT NULL,
  `threshold` tinyint(3) NOT NULL,
  `action` tinyint(3) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intl_exceptions_spam_block_list`
--

DROP TABLE IF EXISTS `intl_exceptions_spam_block_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intl_exceptions_spam_block_list` (
  `cli_id` bigint(16) NOT NULL,
  `template` text NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `optout_list`
--

DROP TABLE IF EXISTS `optout_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optout_list` (
  `optout_id` bigint(19) NOT NULL,
  `mnumber` bigint(19) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`optout_id`,`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `whitelist_mobiles`
--

DROP TABLE IF EXISTS `whitelist_mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whitelist_mobiles` (
  `mnumber` bigint(19) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 19:12:11
