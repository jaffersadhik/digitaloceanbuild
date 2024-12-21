-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.165    Database: sysconfig
-- ------------------------------------------------------
-- Server version	10.5.5-MariaDB-1:10.5.5+maria~focal

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
-- Table structure for table `jndi_info`
--

DROP TABLE IF EXISTS `jndi_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jndi_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '[PropertyKey=id] ID for the connection Pool',
  `description` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL COMMENT '[PropertyKey=url] JDBC URL for the database connection',
  `driver_class_name` varchar(100) NOT NULL COMMENT '[PropertyKey=driverClassName] Driver class to be used',
  `username` varchar(50) NOT NULL COMMENT '[PropertyKey=username] User Name for the connection creation',
  `password` varchar(100) NOT NULL COMMENT '[PropertyKey=password] Password for the connecton creation',
  `initial_size` int(3) DEFAULT 1 COMMENT '[PropertyKey=initialSize] The initial number of connections that are created when the pool is started',
  `max_active` int(3) DEFAULT 3 COMMENT '[PropertyKey=maxActive] Old Property. Maximum connection to be available in the connection pool',
  `max_total` int(3) DEFAULT 10 COMMENT '[PropertyKey=maxTotal] Maximum connection to be available in the connection pool',
  `max_idle` int(3) DEFAULT 5 COMMENT '[PropertyKey=maxIdle] The maximum number of connections that can remain idle in the pool',
  `min_idle` int(3) DEFAULT 2 COMMENT '[PropertyKey=minIdle] The minimum number of connections that can remain idle in the pool',
  `max_wait` int(9) DEFAULT -1 COMMENT '[PropertyKey=maxWait] Old Property. The maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception',
  `max_wait_millis` int(9) DEFAULT -1 COMMENT '[PropertyKey=maxWaitMillis] The maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception',
  `time_between_eviction_runs_millis` int(9) DEFAULT -1 COMMENT '[PropertyKey=timeBetweenEvictionRunsMillis] The number of milliseconds to sleep between runs of the idle object evictor thread',
  `num_tests_per_eviction_run` int(3) DEFAULT 3 COMMENT '[PropertyKey=numTestsPerEvictionRun] The number of objects to examine during each run of the idle object evictor thread',
  `min_evictable_idle_time_millis` int(9) DEFAULT 1800000 COMMENT '[PropertyKey=minEvictableIdleTimeMillis] The minimum amount of time an object may sit idle in the pool before it is eligable for eviction by the idle object evictor',
  `validation_query` varchar(100) DEFAULT 'select 1' COMMENT '[PropertyKey=validationQuery] Query to fire to check the connection''s status',
  `test_on_borrow` int(1) DEFAULT 1 COMMENT '[PropertyKey=testOnBorrow] The indication of whether objects will be validated before being borrowed from the pool',
  `remove_abandoned` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandoned] Old Property.',
  `remove_abandoned_on_maintenance` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandonedOnMaintenance] Flags to remove abandoned connections if they exceed the removeAbandonedTimout',
  `remove_abandoned_on_borrow` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandonedOnBorrow] Flags to remove abandoned connections if they exceed the removeAbandonedTimout',
  `remove_abandoned_timeout_seconds` int(4) DEFAULT 300 COMMENT '[PropertyKey=removeAbandonedTimeout] Timeout in seconds before an abandoned connection can be removed.',
  `log_abandoned` int(1) DEFAULT 0 COMMENT '[PropertyKey=logAbandoned] Flag to log stack traces for application code which abandoned a Statement or Connection',
  `abandoned_usage_tracking` int(1) DEFAULT 0 COMMENT '[PropertyKey=abandonedUsageTracking] The connection pool records a stack trace every time a method is called on a pooled connection and retains the most recent stack trace to aid debugging of abandoned connection',
  `other_connection_properties` varchar(2000) DEFAULT ' ' COMMENT '[PropertyKey=connectionProperties] \n1. Other mislaneous properties to be used.\n2. Every property will be '';'' separated.\n3. Property should be specified as <propertyName=propertyValue>',
  `pin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_desc` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jndi_info`
--

LOCK TABLES `jndi_info` WRITE;
/*!40000 ALTER TABLE `jndi_info` DISABLE KEYS */;
INSERT INTO `jndi_info` VALUES (11,'topic2table','jdbc:mariadb://192.168.1.165:30001/t2t','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(10,'r3c','jdbc:mariadb://192.168.1.165:30001/r3c','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(12,'r3c_pb','jdbc:postgresql://192.168.1.126:5432/r3c?rewriteBatchedStatements=true','org.postgresql.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(5,'payload','jdbc:mariadb://192.168.1.165:30001/payload','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(7,'messaging','jdbc:mariadb://192.168.1.165:30001/messaging','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(8,'logging','jdbc:mariadb://192.168.1.165:30001/logging','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(3,'listing','jdbc:mariadb://192.168.1.165:30001/listing','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(9,'httpclienthandover','jdbc:mariadb://192.168.1.165:30001/client_handover','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(1,'configuration','jdbc:mariadb://192.168.1.165:30001/configuration','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(4,'carrier_handover','jdbc:mariadb://192.168.1.165:30001/carrier_handover','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(6,'billing','jdbc:mariadb://192.168.1.165:30001/billing','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL),(2,'accounts','jdbc:mariadb://192.168.1.165:30001/accounts','org.mariadb.jdbc.Driver','cfguser','N5mIleJjtYx2EFg8+cd3uFpGaUgxdEpKQjde+JBw9AjmsAX7iQEVAvlI',1,3,50,5,2,-1,-1,-1,3,1800000,'select 1',1,1,1,1,300,0,0,'',NULL);
/*!40000 ALTER TABLE `jndi_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-09 19:31:24
