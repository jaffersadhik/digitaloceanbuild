-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.136    Database: imp
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
-- Current Database: `imp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `imp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `imp`;

--
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_log` (
  `user_id` int(10) NOT NULL COMMENT 'management_user Id ',
  `username` varchar(50) NOT NULL COMMENT 'username',
  `httpcode` varchar(10) NOT NULL COMMENT 'HTTP status code',
  `route` varchar(300) NOT NULL COMMENT 'request route url',
  `ip` varchar(20) DEFAULT NULL,
  `err_msg` varchar(500) NOT NULL COMMENT 'the error message ',
  `params` text NOT NULL COMMENT 'the req parameters',
  `sessionid` varchar(50) NOT NULL COMMENT 'unique key to identify the token uniqueness',
  `req_id` varchar(50) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `err_stack` text NOT NULL COMMENT 'the complete err stack'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `management_user`
--

DROP TABLE IF EXISTS `management_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT 'username',
  `password` varchar(100) NOT NULL COMMENT 'password',
  `role` varchar(20) DEFAULT NULL COMMENT 'the role of the user admin/user/sales/finance',
  `created_ts` datetime DEFAULT current_timestamp(),
  `email` varchar(50) DEFAULT NULL,
  `updated_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `management_user_session_log`
--

DROP TABLE IF EXISTS `management_user_session_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_user_session_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'unique id for this table',
  `userid` int(10) NOT NULL COMMENT 'user id fk of management_user.id',
  `username` varchar(50) NOT NULL COMMENT 'username',
  `action` varchar(10) NOT NULL COMMENT 'login/logout',
  `sessionid` varchar(50) NOT NULL COMMENT 'unique key to identify the token uniqueness',
  `ip` varchar(20) DEFAULT NULL,
  `action_ts` datetime DEFAULT current_timestamp(),
  `ua_info` text NOT NULL COMMENT 'user agent information',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2545 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 19:11:16
