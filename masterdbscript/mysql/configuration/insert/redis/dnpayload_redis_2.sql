insert into redis_config(redis_id,ip,port,db,con_timeout_sec,read_timout_sec,max_wait_sec) values('DNPAYLOAD_REDIS_2','192.168.1.46','20001','9','30','30','30');
insert into cluster_component_datasource_map_detail(datasource_map_id,datasource_type,datasource_id,seq_no,max_pool_size,max_idle_count,min_idle_count,debug_enabled) values('13','redis','DNPAYLOAD_REDIS_2','2','25','10','1','0');

