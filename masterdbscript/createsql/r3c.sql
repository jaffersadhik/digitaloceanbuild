-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.136    Database: r3c
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
-- Current Database: `r3c`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `r3c` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `r3c`;

--
-- Table structure for table `r3c_0`
--

DROP TABLE IF EXISTS `r3c_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_0` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_1`
--

DROP TABLE IF EXISTS `r3c_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_1` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_10`
--

DROP TABLE IF EXISTS `r3c_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_10` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_11`
--

DROP TABLE IF EXISTS `r3c_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_11` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_12`
--

DROP TABLE IF EXISTS `r3c_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_12` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_13`
--

DROP TABLE IF EXISTS `r3c_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_13` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_14`
--

DROP TABLE IF EXISTS `r3c_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_14` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_15`
--

DROP TABLE IF EXISTS `r3c_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_15` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_16`
--

DROP TABLE IF EXISTS `r3c_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_16` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_17`
--

DROP TABLE IF EXISTS `r3c_17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_17` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_18`
--

DROP TABLE IF EXISTS `r3c_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_18` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_19`
--

DROP TABLE IF EXISTS `r3c_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_19` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_2`
--

DROP TABLE IF EXISTS `r3c_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_2` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_20`
--

DROP TABLE IF EXISTS `r3c_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_20` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_3`
--

DROP TABLE IF EXISTS `r3c_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_3` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_4`
--

DROP TABLE IF EXISTS `r3c_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_4` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_5`
--

DROP TABLE IF EXISTS `r3c_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_5` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_6`
--

DROP TABLE IF EXISTS `r3c_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_6` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_7`
--

DROP TABLE IF EXISTS `r3c_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_7` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_8`
--

DROP TABLE IF EXISTS `r3c_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_8` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_9`
--

DROP TABLE IF EXISTS `r3c_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_9` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_exclude_url`
--

DROP TABLE IF EXISTS `r3c_exclude_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_exclude_url` (
  `cli_id` bigint(16) NOT NULL,
  `exclude_url` text DEFAULT NULL,
  `is_partial` tinyint(1) DEFAULT 0 COMMENT '0 - Match Full Url, 1 - Partial Match',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_include_url`
--

DROP TABLE IF EXISTS `r3c_include_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_include_url` (
  `cli_id` bigint(16) NOT NULL,
  `Include_url` text DEFAULT NULL,
  `is_partial` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Match Full Url, 1 - Partial Url',
  `smartlink_id` bigint(20) NOT NULL,
  PRIMARY KEY (`cli_id`,`smartlink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `r3c_smartlink_info`
--

DROP TABLE IF EXISTS `r3c_smartlink_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r3c_smartlink_info` (
  `smartlink_id` bigint(20) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `redirect_url` text DEFAULT NULL,
  `domain_url` text DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`smartlink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `url_redirect_log`
--

DROP TABLE IF EXISTS `url_redirect_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_redirect_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(16) NOT NULL,
  `dest` varchar(15) NOT NULL,
  `msg_id` varchar(25) NOT NULL,
  `hdr` varchar(15) DEFAULT NULL,
  `campaign_id` varchar(100) DEFAULT NULL,
  `campaign_name` varchar(100) DEFAULT NULL,
  `msg_recv_time` datetime(3) DEFAULT NULL,
  `cli_msg_id` varchar(50) DEFAULT NULL,
  `ipaddress` varchar(18) DEFAULT NULL,
  `countrycode` varchar(5) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `longitute` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `osname` varchar(50) DEFAULT NULL,
  `osgroup` varchar(50) DEFAULT NULL,
  `browsername` varchar(50) DEFAULT NULL,
  `browserversion` varchar(25) DEFAULT NULL,
  `devicename` varchar(50) DEFAULT NULL,
  `requesttime` datetime(3) DEFAULT NULL,
  `smartlinkid` varchar(10) DEFAULT NULL,
  `shortenurl` varchar(50) DEFAULT NULL,
  `shortcode` varchar(100) DEFAULT NULL,
  `redirecturl` varchar(200) DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `customparams` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_ts` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=900894 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 19:17:07
