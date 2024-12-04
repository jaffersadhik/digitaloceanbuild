-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 10.122.0.3    Database: imp
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
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_log` (
  `user_id` int NOT NULL COMMENT 'management_user Id ',
  `username` varchar(50) NOT NULL COMMENT 'username',
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
-- Table structure for table `management_user`
--

DROP TABLE IF EXISTS `management_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT 'username',
  `password` varchar(100) NOT NULL COMMENT 'password',
  `role` varchar(20) DEFAULT NULL COMMENT 'the role of the user admin/user/sales/finance',
  `created_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) DEFAULT NULL,
  `updated_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_user`
--

LOCK TABLES `management_user` WRITE;
/*!40000 ALTER TABLE `management_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_user_session_log`
--

DROP TABLE IF EXISTS `management_user_session_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_user_session_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'unique id for this table',
  `userid` int NOT NULL COMMENT 'user id fk of management_user.id',
  `username` varchar(50) NOT NULL COMMENT 'username',
  `action` varchar(10) NOT NULL COMMENT 'login/logout',
  `sessionid` varchar(50) NOT NULL COMMENT 'unique key to identify the token uniqueness',
  `ip` varchar(20) DEFAULT NULL,
  `action_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `ua_info` text NOT NULL COMMENT 'user agent information',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2545 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_user_session_log`
--

LOCK TABLES `management_user_session_log` WRITE;
/*!40000 ALTER TABLE `management_user_session_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_user_session_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04  6:35:11
