-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.136    Database: messaging
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
-- Current Database: `messaging`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `messaging` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `messaging`;

--
-- Table structure for table `blockout_data`
--

DROP TABLE IF EXISTS `blockout_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockout_data` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(5) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `date_time_to_process` timestamp NOT NULL DEFAULT current_timestamp(),
  `message_payload` mediumtext NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2442300 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_fallback`
--

DROP TABLE IF EXISTS `interface_fallback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_fallback` (
  `sno` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `messageid` varchar(25) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `input_req` mediumtext NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=50972 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2786 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule_data`
--

DROP TABLE IF EXISTS `schedule_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_data` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(5) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `date_time_to_process` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `message_payload` mediumtext NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=493782 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `smpp_concat_all`
--

DROP TABLE IF EXISTS `smpp_concat_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smpp_concat_all` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cluster` varchar(50) DEFAULT NULL COMMENT 'Cluster Type',
  `message_payload` mediumtext DEFAULT NULL COMMENT 'Message payload for each part',
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `smpp_dlr_fallback`
--

DROP TABLE IF EXISTS `smpp_dlr_fallback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smpp_dlr_fallback` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) DEFAULT NULL COMMENT 'Client Id',
  `msg_id` varchar(25) DEFAULT NULL COMMENT 'Message Id',
  `cluster` varchar(10) DEFAULT NULL COMMENT 'Cluster Type',
  `paylod_dlr` mediumtext DEFAULT NULL,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=1139791 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 19:14:14
