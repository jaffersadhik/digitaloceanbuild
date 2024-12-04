-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 10.122.0.3    Database: r3c
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
-- Table structure for table `r3c_0`
--

DROP TABLE IF EXISTS `r3c_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_0` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_0`
--

LOCK TABLES `r3c_0` WRITE;
/*!40000 ALTER TABLE `r3c_0` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_1`
--

DROP TABLE IF EXISTS `r3c_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_1` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_1`
--

LOCK TABLES `r3c_1` WRITE;
/*!40000 ALTER TABLE `r3c_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_10`
--

DROP TABLE IF EXISTS `r3c_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_10` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_10`
--

LOCK TABLES `r3c_10` WRITE;
/*!40000 ALTER TABLE `r3c_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_11`
--

DROP TABLE IF EXISTS `r3c_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_11` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_11`
--

LOCK TABLES `r3c_11` WRITE;
/*!40000 ALTER TABLE `r3c_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_12`
--

DROP TABLE IF EXISTS `r3c_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_12` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_12`
--

LOCK TABLES `r3c_12` WRITE;
/*!40000 ALTER TABLE `r3c_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_13`
--

DROP TABLE IF EXISTS `r3c_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_13` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_13`
--

LOCK TABLES `r3c_13` WRITE;
/*!40000 ALTER TABLE `r3c_13` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_14`
--

DROP TABLE IF EXISTS `r3c_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_14` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_14`
--

LOCK TABLES `r3c_14` WRITE;
/*!40000 ALTER TABLE `r3c_14` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_15`
--

DROP TABLE IF EXISTS `r3c_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_15` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_15`
--

LOCK TABLES `r3c_15` WRITE;
/*!40000 ALTER TABLE `r3c_15` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_16`
--

DROP TABLE IF EXISTS `r3c_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_16` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_16`
--

LOCK TABLES `r3c_16` WRITE;
/*!40000 ALTER TABLE `r3c_16` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_17`
--

DROP TABLE IF EXISTS `r3c_17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_17` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_17`
--

LOCK TABLES `r3c_17` WRITE;
/*!40000 ALTER TABLE `r3c_17` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_18`
--

DROP TABLE IF EXISTS `r3c_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_18` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_18`
--

LOCK TABLES `r3c_18` WRITE;
/*!40000 ALTER TABLE `r3c_18` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_19`
--

DROP TABLE IF EXISTS `r3c_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_19` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_19`
--

LOCK TABLES `r3c_19` WRITE;
/*!40000 ALTER TABLE `r3c_19` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_2`
--

DROP TABLE IF EXISTS `r3c_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_2` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_2`
--

LOCK TABLES `r3c_2` WRITE;
/*!40000 ALTER TABLE `r3c_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_20`
--

DROP TABLE IF EXISTS `r3c_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_20` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_20`
--

LOCK TABLES `r3c_20` WRITE;
/*!40000 ALTER TABLE `r3c_20` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_3`
--

DROP TABLE IF EXISTS `r3c_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_3` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_3`
--

LOCK TABLES `r3c_3` WRITE;
/*!40000 ALTER TABLE `r3c_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_4`
--

DROP TABLE IF EXISTS `r3c_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_4` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_4`
--

LOCK TABLES `r3c_4` WRITE;
/*!40000 ALTER TABLE `r3c_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_5`
--

DROP TABLE IF EXISTS `r3c_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_5` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_5`
--

LOCK TABLES `r3c_5` WRITE;
/*!40000 ALTER TABLE `r3c_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_6`
--

DROP TABLE IF EXISTS `r3c_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_6` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_6`
--

LOCK TABLES `r3c_6` WRITE;
/*!40000 ALTER TABLE `r3c_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_7`
--

DROP TABLE IF EXISTS `r3c_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_7` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_7`
--

LOCK TABLES `r3c_7` WRITE;
/*!40000 ALTER TABLE `r3c_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_8`
--

DROP TABLE IF EXISTS `r3c_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_8` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_8`
--

LOCK TABLES `r3c_8` WRITE;
/*!40000 ALTER TABLE `r3c_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_9`
--

DROP TABLE IF EXISTS `r3c_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_9` (
  `shortner_id` varchar(6) NOT NULL COMMENT 'Url Shortner Id',
  `cli_id` bigint NOT NULL,
  `file_id` varchar(25) NOT NULL,
  `base_msg_id` varchar(25) NOT NULL,
  `dest` bigint NOT NULL,
  `additional_info` text,
  `expiry_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`shortner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_9`
--

LOCK TABLES `r3c_9` WRITE;
/*!40000 ALTER TABLE `r3c_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_exclude_url`
--

DROP TABLE IF EXISTS `r3c_exclude_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_exclude_url` (
  `cli_id` bigint NOT NULL,
  `exclude_url` text,
  `is_partial` tinyint(1) DEFAULT '0' COMMENT '0 - Match Full Url, 1 - Partial Match',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_exclude_url`
--

LOCK TABLES `r3c_exclude_url` WRITE;
/*!40000 ALTER TABLE `r3c_exclude_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_exclude_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_include_url`
--

DROP TABLE IF EXISTS `r3c_include_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_include_url` (
  `cli_id` bigint NOT NULL,
  `Include_url` text,
  `is_partial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - Match Full Url, 1 - Partial Url',
  `smartlink_id` bigint NOT NULL,
  PRIMARY KEY (`cli_id`,`smartlink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_include_url`
--

LOCK TABLES `r3c_include_url` WRITE;
/*!40000 ALTER TABLE `r3c_include_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_include_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r3c_smartlink_info`
--

DROP TABLE IF EXISTS `r3c_smartlink_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r3c_smartlink_info` (
  `smartlink_id` bigint NOT NULL,
  `cli_id` bigint NOT NULL,
  `redirect_url` text,
  `domain_url` text,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`smartlink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r3c_smartlink_info`
--

LOCK TABLES `r3c_smartlink_info` WRITE;
/*!40000 ALTER TABLE `r3c_smartlink_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `r3c_smartlink_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_redirect_log`
--

DROP TABLE IF EXISTS `url_redirect_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `url_redirect_log` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `useragent` text,
  `customparams` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=900894 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_redirect_log`
--

LOCK TABLES `url_redirect_log` WRITE;
/*!40000 ALTER TABLE `url_redirect_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `url_redirect_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  6:36:46
