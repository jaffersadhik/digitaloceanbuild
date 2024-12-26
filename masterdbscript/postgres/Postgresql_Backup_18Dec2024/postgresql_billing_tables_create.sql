-- DROP TABLE smslog.dn_post_log;
-- DROP TABLE smslog.full_message;
-- DROP TABLE smslog.interim_failures;
-- DROP TABLE smslog.sub_del_log;
-- DROP TABLE smslog.sub_del_log_fmsg_info;

CREATE TABLE smslog.dn_post_log (
	recv_date date NOT NULL,
	cli_id numeric(19) NOT NULL,
	msg_id varchar(25) DEFAULT NULL::character varying NULL,
	dest numeric(19) DEFAULT NULL::numeric NULL,
	retry_attempt numeric(3) DEFAULT NULL::numeric NULL,
	status varchar(20) DEFAULT NULL::character varying NULL,
	protocol varchar(10) DEFAULT NULL::character varying NULL,
	instanceid varchar(30) DEFAULT NULL::character varying NULL,
	recv_time timestamp NULL,
	submit_ts timestamp NULL,
	response_ts timestamp NULL,
	created_ts timestamp NOT NULL,
	reason varchar(200) DEFAULT NULL::character varying NULL,
	smpp_system_id varchar(100) DEFAULT NULL::character varying NULL,
	cli_ip varchar(30) DEFAULT NULL::character varying NULL,
	carrier_sub_time timestamp NULL,
	dly_time timestamp NULL,
	pg_created_ts timestamp DEFAULT now() NULL
)
PARTITION BY LIST (recv_date);
CREATE INDEX dn_post_cli_id ON ONLY smslog.dn_post_log USING btree (cli_id);
CREATE INDEX dn_post_dest ON ONLY smslog.dn_post_log USING btree (dest);
CREATE INDEX dn_post_log_cts ON ONLY smslog.dn_post_log USING btree (created_ts);
CREATE INDEX dn_post_log_mid ON ONLY smslog.dn_post_log USING btree (msg_id);
CREATE INDEX dn_post_rcv_tm ON ONLY smslog.dn_post_log USING btree (recv_time);


CREATE TABLE smslog.full_message (
	recv_date date NOT NULL,
	base_msg_id varchar(25) NOT NULL,
	cli_id numeric(19) NOT NULL,
	long_msg text NULL,
	created_ts timestamp DEFAULT now() NULL,
	encrypted_long_msg text NULL,
	CONSTRAINT full_message_pk PRIMARY KEY (recv_date, base_msg_id)
)
PARTITION BY LIST (recv_date);
CREATE INDEX full_message_cli_id ON ONLY smslog.full_message USING btree (cli_id);


CREATE TABLE smslog.interim_failures (
	cli_id numeric(19) NOT NULL,
	file_id varchar(25) DEFAULT NULL::character varying NULL,
	msg_id varchar(25) NOT NULL,
	dest numeric(19) DEFAULT NULL::numeric NULL,
	recv_date date NOT NULL,
	recv_time timestamp NOT NULL,
	retry_attempt numeric(1) DEFAULT NULL::numeric NULL,
	msg_type numeric(1) NOT NULL,
	route_id varchar(6) DEFAULT NULL::character varying NULL,
	retry_ori_route_id varchar(6) DEFAULT NULL::character varying NULL,
	sms_priority numeric(1) NOT NULL,
	carrier_rcvd_time timestamp NULL,
	carrier_ack_id varchar(100) DEFAULT NULL::character varying NULL,
	carrier_sys_id varchar(20) DEFAULT NULL::character varying NULL,
	carrier_full_dn varchar(2000) DEFAULT NULL::character varying NULL,
	hdr varchar(15) DEFAULT NULL::character varying NULL,
	msg_part_no numeric(3) DEFAULT NULL::numeric NULL,
	bill_type numeric(1) NOT NULL,
	company varchar(150) DEFAULT NULL::character varying NULL,
	msg_class varchar(5) DEFAULT NULL::character varying NULL,
	circle varchar(200) DEFAULT NULL::character varying NULL,
	carrier varchar(200) DEFAULT NULL::character varying NULL,
	term_carrier varchar(200) DEFAULT NULL::character varying NULL,
	term_circle varchar(200) DEFAULT NULL::character varying NULL,
	country varchar(20) DEFAULT NULL::character varying NULL,
	alpha numeric(4) DEFAULT NULL::numeric NULL,
	dn_ori_sts_code varchar(5) NOT NULL,
	dn_ori_sts_desc varchar(100) NOT NULL,
	car_ori_sts_code varchar(5) DEFAULT NULL::character varying NULL,
	car_ori_sts_desc varchar(100) DEFAULT NULL::character varying NULL,
	msg_credits numeric(10, 3) DEFAULT NULL::numeric NULL,
	dlt_credits numeric(10, 3) DEFAULT NULL::numeric NULL,
	delivery_status varchar(10) DEFAULT NULL::character varying NULL,
	created_ts timestamp(3) DEFAULT now() NOT NULL,
	CONSTRAINT interim_failures_pk PRIMARY KEY (recv_date, msg_id)
)
PARTITION BY LIST (recv_date);
CREATE INDEX interim_failures_cli_id ON ONLY smslog.interim_failures USING btree (cli_id);
CREATE INDEX interim_failures_dest ON ONLY smslog.interim_failures USING btree (dest);
CREATE INDEX interim_failures_rcv_tm ON ONLY smslog.interim_failures USING btree (recv_time);


CREATE TABLE smslog.sub_del_log (
	recv_date date NOT NULL,
	msg_id varchar(25) NOT NULL,
	base_msg_id varchar(25) NOT NULL,
	recv_time timestamp NOT NULL,
	cli_id numeric(19) NOT NULL,
	dest numeric(19) NOT NULL,
	sub_intf_type varchar(10) NOT NULL,
	sub_intf_grp_type varchar(10) NOT NULL,
	sub_msg_source varchar(25) NOT NULL,
	sub_intl_msg numeric(1) NOT NULL,
	sub_msg_type numeric(1) NOT NULL,
	sub_platform_cluster varchar(10) NOT NULL,
	sub_sms_priority numeric(1) NOT NULL,
	sub_bill_encrypt_type numeric(1) NOT NULL,
	sub_bill_type numeric(1) NOT NULL,
	sub_app_type varchar(10) NOT NULL,
	sub_msg text NULL,
	sub_udhi numeric(1) NULL,
	sub_udh varchar(15) NULL,
	sub_dcs varchar(3) NULL,
	sub_hdr varchar(15) NULL,
	sub_file_id varchar(25) NULL,
	sub_cli_msg_id varchar(50) NULL,
	sub_cli_max_split numeric(2) NULL,
	sub_msg_tag varchar(50) NULL,
	sub_is_hex_msg numeric(1) DEFAULT 0 NULL,
	sub_max_validity_in_sec numeric(10) NULL,
	sub_cli_ip varchar(30) NOT NULL,
	sub_msg_class varchar(5) NULL,
	sub_country varchar(20) NULL,
	sub_param1 varchar(50) NULL,
	sub_param2 varchar(50) NULL,
	sub_param3 varchar(50) NULL,
	sub_param4 varchar(50) NULL,
	sub_param5 varchar(50) NULL,
	sub_param6 varchar(100) NULL,
	sub_param7 varchar(100) NULL,
	sub_param8 varchar(100) NULL,
	sub_param9 varchar(250) NULL,
	sub_param10 varchar(500) NULL,
	sub_sch_date_time timestamp NULL,
	sub_cli_dlt_tmpl_id numeric(19) NULL,
	sub_dlt_tmpl_id numeric(19) NULL,
	sub_cli_dlt_entity_id numeric(19) NULL,
	sub_dlt_entity_id numeric(19) NULL,
	sub_blkout_type varchar(10) NULL,
	sub_msg_part_no numeric(3) NULL,
	sub_total_msg_parts numeric(3) NULL,
	sub_feature_code varchar(5) NULL,
	sub_cli_tmpl_id numeric(19) NULL,
	sub_retry_attempt numeric(1) NULL,
	sub_shortner_id varchar(100) NULL,
	sub_msg_shortned numeric(1) NULL,
	sub_route_id varchar(6) NULL,
	sub_act_route_id varchar(6) NULL,
	sub_circle varchar(200) NULL,
	sub_carrier varchar(200) NULL,
	sub_carrier_sub_time timestamp NULL,
	sub_act_carrier_sub_time timestamp NULL,
	sub_aplha_value varchar(15) NULL,
	sub_cli_hdr varchar(15) NULL,
	sub_intf_country_code varchar(5) NULL,
	sub_route_logic_id varchar(3) NULL,
	sub_masked_hdr varchar(15) NULL,
	sub_smsc_id varchar(20) NULL,
	sub_dlr_type numeric(1) NULL,
	sub_encrypted_msg text NULL,
	sub_encrypted_dest varchar(100) NULL,
	sub_sub_lat_ori_in_millis numeric(19) NULL,
	sub_sub_lat_sla_in_millis numeric(19) NULL,
	sub_file_name varchar(500) NULL,
	sub_campaign_id varchar(36) NULL,
	sub_campaign_name varchar(50) NULL,
	sub_msg_tag1 varchar(50) NULL,
	sub_msg_tag2 varchar(50) NULL,
	sub_msg_tag3 varchar(50) NULL,
	sub_msg_tag4 varchar(50) NULL,
	sub_msg_tag5 varchar(50) NULL,
	sub_sub_ori_sts_code varchar(5) NOT NULL,
	sub_sub_cli_sts_code varchar(5) NOT NULL,
	sub_sub_ori_sts_desc varchar(100) NOT NULL,
	sub_sub_cli_sts_desc varchar(100) NOT NULL,
	sub_sub_status varchar(10) NULL,
	sub_sms_rate numeric(10, 4) DEFAULT 0.0 NOT NULL,
	sub_dlt_rate numeric(10, 4) DEFAULT 0.0 NOT NULL,
	sub_add_error_info text NULL,
	del_dn_hdr varchar(15) NULL,
	del_retry_attempt numeric(1) NULL,
	del_act_route_id varchar(6) NULL,
	del_route_id varchar(6) NULL,
	del_dlr_from_internal numeric(1) NULL,
	del_route_logic_id varchar(3) NULL,
	del_smsc_id varchar(20) NULL,
	del_carrier_full_dn varchar(2000) NULL,
	del_dly_time timestamp NULL,
	del_act_dly_time timestamp NULL,
	del_carrier_rcvd_time timestamp NULL,
	del_carrier_ack_id varchar(100) NULL,
	del_carrier_sys_id varchar(20) NULL,
	del_term_carrier varchar(200) NULL,
	del_term_circle varchar(200) NULL,
	del_delv_lat_ori_in_millis numeric(19) NULL,
	del_delv_lat_sla_in_millis numeric(19) NULL,
	del_overall_lat_in_millis numeric(19) NULL,
	del_dn_ori_sts_code varchar(5) NULL,
	del_dn_cli_sts_code varchar(5) NULL,
	del_dn_ori_sts_desc varchar(100) NULL,
	del_dn_cli_sts_desc varchar(100) NULL,
	del_car_ori_sts_code varchar(5) NULL,
	del_car_ori_sts_desc varchar(10) NULL,
	del_car_sts_code varchar(100) NULL,
	del_car_sts_desc varchar(100) NULL,
	del_retry_ori_route_id varchar(6) NULL,
	del_retry_alt_route_id varchar(6) NULL,
	del_delivery_status varchar(10) NULL,
	del_car_delivery_status varchar(10) NULL,
	del_sms_rate numeric(10, 4) NULL,
	del_dlt_rate numeric(10, 4) NULL,
	created_ts timestamp DEFAULT now() NOT NULL,
	sub_billing_currency varchar(3) NULL,
	sub_billing_sms_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	sub_billing_add_fixed_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	sub_base_currency varchar(5) NULL,
	sub_base_sms_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	sub_base_add_fixed_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	sub_ref_currency varchar(5) NULL,
	sub_ref_sms_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	sub_ref_add_fixed_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	sub_billing_exchange_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	sub_ref_exchange_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	del_billing_sms_rate numeric(16, 12) DEFAULT 0.000000 NULL,
	del_billing_add_fixed_rate numeric(16, 12) DEFAULT 0.000000 NULL,
	del_base_sms_rate numeric(16, 12) DEFAULT 0.000000 NULL,
	del_base_add_fixed_rate numeric(16, 12) DEFAULT 0.000000 NULL,
	del_ref_sms_rate numeric(16, 12) DEFAULT 0.000000 NULL,
	del_ref_add_fixed_rate numeric(16, 12) DEFAULT 0.000000 NULL,
	sub_smpp_recv_time timestamp NULL,
	sub_mnc varchar(10) NULL,
	sub_mcc varchar(10) NULL,
	sub_segment varchar(25) NULL,
	CONSTRAINT sub_del_log_pk PRIMARY KEY (recv_date, msg_id)
)
PARTITION BY LIST (recv_date);
CREATE INDEX sub_del_campaign_id ON ONLY smslog.sub_del_log USING btree (sub_campaign_id);
CREATE INDEX sub_del_campaign_name ON ONLY smslog.sub_del_log USING btree (sub_campaign_name);
CREATE INDEX sub_del_intf_grp_type ON ONLY smslog.sub_del_log USING btree (sub_intf_grp_type);
CREATE INDEX sub_del_log_bmsg_id ON ONLY smslog.sub_del_log USING btree (base_msg_id);
CREATE INDEX sub_del_log_cli_id ON ONLY smslog.sub_del_log USING btree (cli_id);
CREATE INDEX sub_del_log_dest ON ONLY smslog.sub_del_log USING btree (dest);
CREATE INDEX sub_del_log_rcv_tm ON ONLY smslog.sub_del_log USING btree (recv_time);


CREATE TABLE smslog.sub_del_log_fmsg_info (
	base_msg_id varchar(25) NOT NULL,
	recv_date date NOT NULL,
	recv_time timestamp NOT NULL,
	cli_id numeric(19) NOT NULL,
	sub_total_msg_parts numeric(3) NULL,
	sub_success numeric(1) DEFAULT '-1'::integer NOT NULL,
	dn_success numeric(1) DEFAULT '-1'::integer NOT NULL,
	sub_failed numeric(1) DEFAULT '-1'::integer NOT NULL,
	dn_failed numeric(1) DEFAULT '-1'::integer NOT NULL,
	created_ts timestamp DEFAULT now() NOT NULL,
	sms_rate numeric(10, 4) DEFAULT 0.0 NOT NULL,
	dlt_rate numeric(10, 4) DEFAULT 0.0 NOT NULL,
	billing_currency varchar(3) NULL,
	billing_sms_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	billing_add_fixed_rate numeric(16, 12) DEFAULT 0.000000 NOT NULL,
	CONSTRAINT sub_del_log_fmsg_info_pk PRIMARY KEY (recv_date, base_msg_id)
)
PARTITION BY LIST (recv_date);
CREATE INDEX sub_del_log_fmsg_cli_id ON ONLY smslog.sub_del_log_fmsg_info USING btree (cli_id);
CREATE INDEX sub_del_log_fmsg_rcv_tm ON ONLY smslog.sub_del_log_fmsg_info USING btree (recv_time);