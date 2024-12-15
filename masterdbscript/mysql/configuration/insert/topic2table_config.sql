INSERT INTO `topic2table_config` VALUES
('client_handover_log',9,'client_handover','client_handover_log_detail','','','',1,1000,'2021-06-22 17:14:59','2021-07-08 20:32:07'),
('client_handover_master_log',9,'client_handover','client_handover_log_master','','','',1,1000,'2021-06-22 17:17:22','2021-07-07 17:27:20'),
('client_handover_retry_data',9,'client_handover','client_handover_retry_master','','','',1,1000,'2021-06-22 17:17:22','2021-07-07 18:47:18'),
('deliveries',6,'billing','deliveries','com.itextos.beacon.platform.topic2table.impl.billing.BillingTablenameFinder','db_bill_ins_db_suf,db_bill_ins_tab_suf,db_bill_ins_jndi,db_bill_ins_cli_suf','created_ts=-1:dlr_type=dn_req_cli',1,1000,'2021-05-27 10:43:38','2021-08-09 10:45:58'),
('error_log',8,'logging','error_log','','','created_ts=-1',1,1000,'2021-05-27 10:43:38','2021-07-23 18:52:09'),
('full_message',6,'billing','full_message','com.itextos.beacon.platform.topic2table.impl.billing.BillingTablenameFinder','db_bill_ins_db_suf,db_bill_ins_tab_suf,db_bill_ins_jndi,db_bill_ins_cli_suf','created_ts=-1',1,1000,'2021-05-27 10:43:38','2021-08-09 10:45:58'),
('interim_failuers',6,'billing','interim_failures','com.itextos.beacon.platform.topic2table.impl.billing.BillingTablenameFinder','db_bill_ins_db_suf,db_bill_ins_tab_suf,db_bill_ins_jndi,db_bill_ins_cli_suf','created_ts=-1',1,1000,'2021-08-10 19:43:31','2021-08-10 19:43:31'),
('no_payload_dn',8,'logging','no_payload_carrier_dn',NULL,NULL,'created_ts=-1',1,1000,'2021-08-04 16:31:19','2021-08-04 16:36:34'),
('smpp_post_log',6,'billing','dn_post_log','com.itextos.beacon.platform.topic2table.impl.billing.BillingTablenameFinder','db_bill_ins_db_suf,db_bill_ins_tab_suf,db_bill_ins_jndi,db_bill_ins_cli_suf','created_ts=-1:dlr_type=dn_req_cli',1,1000,'2021-05-27 10:43:38','2021-08-09 10:45:58'),
('submission',6,'billing','submission','com.itextos.beacon.platform.topic2table.impl.billing.BillingTablenameFinder','db_bill_ins_db_suf,db_bill_ins_tab_suf,db_bill_ins_jndi,db_bill_ins_cli_suf','created_ts=-1:dlr_type=dn_req_cli',1,1000,'2021-05-27 10:43:38','2021-08-09 10:45:58');
