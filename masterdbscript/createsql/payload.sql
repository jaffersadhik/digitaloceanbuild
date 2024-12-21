-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.136    Database: payload
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
-- Current Database: `payload`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `payload` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `payload`;

--
-- Table structure for table `acc_ignore_from_dn_generation`
--

DROP TABLE IF EXISTS `acc_ignore_from_dn_generation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_ignore_from_dn_generation` (
  `cli_id` bigint(16) NOT NULL,
  `is_active` tinyint(1) NOT NULL COMMENT '0-will generate dns , 1-will ignore dn generation',
  `payload_expiry_in_hr` int(2) NOT NULL COMMENT 'Will expire payloads after specified hrs based on ignore_or_generate',
  `ignore_or_generate` tinyint(1) NOT NULL COMMENT '0-generate, 1-ignore',
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dlr_receive_fallback`
--

DROP TABLE IF EXISTS `dlr_receive_fallback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlr_receive_fallback` (
  `sno` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `messageid` varchar(25) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `cluster` varchar(50) NOT NULL,
  `input_req` mediumtext NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5989 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dn_payload_map`
--

DROP TABLE IF EXISTS `dn_payload_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dn_payload_map` (
  `message_id` varchar(25) NOT NULL,
  `retry_attempt` decimal(4,0) NOT NULL,
  `payload` longtext NOT NULL,
  `cluster` varchar(50) NOT NULL,
  `processed` decimal(1,0) NOT NULL DEFAULT 0,
  `payload_expiry` datetime(3) NOT NULL,
  `stime` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 19:14:59
