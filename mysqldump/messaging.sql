-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 10.122.0.3    Database: messaging
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
-- Table structure for table `blockout_data`
--

DROP TABLE IF EXISTS `blockout_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blockout_data` (
  `sno` bigint NOT NULL AUTO_INCREMENT,
  `instance_id` bigint NOT NULL,
  `cli_id` bigint NOT NULL,
  `date_time_to_process` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_payload` mediumtext NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2442300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockout_data`
--

LOCK TABLES `blockout_data` WRITE;
/*!40000 ALTER TABLE `blockout_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockout_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interface_fallback`
--

DROP TABLE IF EXISTS `interface_fallback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interface_fallback` (
  `sno` bigint unsigned NOT NULL AUTO_INCREMENT,
  `messageid` varchar(25) NOT NULL,
  `priority` tinyint NOT NULL,
  `input_req` mediumtext NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=50976 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface_fallback`
--

LOCK TABLES `interface_fallback` WRITE;
/*!40000 ALTER TABLE `interface_fallback` DISABLE KEYS */;
/*!40000 ALTER TABLE `interface_fallback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `no_payload_dn_retry`
--

DROP TABLE IF EXISTS `no_payload_dn_retry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `no_payload_dn_retry` (
  `sno` bigint NOT NULL AUTO_INCREMENT,
  `payload_rid` int NOT NULL,
  `expiry_count` int NOT NULL DEFAULT '0' COMMENT 'Expiry the record max config count reaches',
  `cluster` varchar(10) DEFAULT NULL,
  `dn_payload` mediumtext,
  `created_ts` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2786 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_payload_dn_retry`
--

LOCK TABLES `no_payload_dn_retry` WRITE;
/*!40000 ALTER TABLE `no_payload_dn_retry` DISABLE KEYS */;
/*!40000 ALTER TABLE `no_payload_dn_retry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_data`
--

DROP TABLE IF EXISTS `schedule_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_data` (
  `sno` bigint NOT NULL AUTO_INCREMENT,
  `instance_id` bigint NOT NULL,
  `cli_id` bigint NOT NULL,
  `date_time_to_process` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_payload` mediumtext NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=493782 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_data`
--

LOCK TABLES `schedule_data` WRITE;
/*!40000 ALTER TABLE `schedule_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smpp_concat_all`
--

DROP TABLE IF EXISTS `smpp_concat_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smpp_concat_all` (
  `sno` bigint NOT NULL AUTO_INCREMENT,
  `cluster` varchar(50) DEFAULT NULL COMMENT 'Cluster Type',
  `message_payload` mediumtext COMMENT 'Message payload for each part',
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smpp_concat_all`
--

LOCK TABLES `smpp_concat_all` WRITE;
/*!40000 ALTER TABLE `smpp_concat_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `smpp_concat_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smpp_dlr_fallback`
--

DROP TABLE IF EXISTS `smpp_dlr_fallback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smpp_dlr_fallback` (
  `sno` bigint NOT NULL AUTO_INCREMENT,
  `cli_id` bigint DEFAULT NULL COMMENT 'Client Id',
  `msg_id` varchar(25) DEFAULT NULL COMMENT 'Message Id',
  `cluster` varchar(10) DEFAULT NULL COMMENT 'Cluster Type',
  `paylod_dlr` mediumtext,
  `created_ts` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=1139791 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smpp_dlr_fallback`
--

LOCK TABLES `smpp_dlr_fallback` WRITE;
/*!40000 ALTER TABLE `smpp_dlr_fallback` DISABLE KEYS */;
/*!40000 ALTER TABLE `smpp_dlr_fallback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  6:36:17
