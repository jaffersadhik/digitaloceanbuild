CREATE TABLE `query_async_queue_exec_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_id` char(36) NOT NULL,
  `log_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `log_message` varchar(2000) DEFAULT NULL,
  `log_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_id` (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25009 DEFAULT CHARSET=latin1 
