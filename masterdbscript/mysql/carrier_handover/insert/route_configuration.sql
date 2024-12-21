
insert into route_configuration
(
route_id,route_desc,is_txn_route,is_promo_route,is_intl_route,
kannel_ip,kannel_port,kannel_status_port,kannel_store_size_max_limit,
smscid,isprefix,promo_header,header_whitelisted,promo_header_type,
dtime_format,ignore_status,carrier_full_dn
)
values
(
'FKAA','FAKE SMSC','1','1','1',
'192.168.1.46','18003','18001','100000',
'FAKE','0','123456','1','0',
'yyMMddHHmmss','0','id:1 sub:001 dlvrd:001 submitdate:{0} donedate:{1} stat:DELIVRD err:000 Text:null'
);
