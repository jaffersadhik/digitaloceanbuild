insert into redis_config(redis_id,ip,port,db,con_timeout_sec,read_timout_sec,max_wait_sec) values('WALLET_CHK','192.168.1.126','20001','15','30','30','30');
insert into cluster_component_datasource_map_detail(datasource_map_id,datasource_type,datasource_id,seq_no,max_pool_size,max_idle_count,min_idle_count,debug_enabled) values('20','redis','WALLET_CHK','1','25','10','1','0');

