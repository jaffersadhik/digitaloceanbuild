CREATE TABLE `interface_sms_template` (
  `template_id` varchar(20) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `template` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
