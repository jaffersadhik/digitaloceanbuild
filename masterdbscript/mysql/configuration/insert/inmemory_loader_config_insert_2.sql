insert into inmemory_loader_config(inmemory_id,description,jndiinfo_id,auto_refresh_req,sleep_time_in_sec,inmemory_process_class_name,`sql`)
values('mcc_mnc','To load the mcc_mnc information','1','1','5','com.itextos.beacon.inmemory.inmemdata.mccmnc.MccMncCollection',
'select * from mcc_mnc');

