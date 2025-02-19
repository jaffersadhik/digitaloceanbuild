 CREATE TABLE dlr_unitia (
  smsc varchar(40) DEFAULT NULL,
  ts varchar(65) DEFAULT NULL,
  destination varchar(40) DEFAULT NULL,
  source varchar(40) DEFAULT NULL,
  service varchar(40) DEFAULT NULL,
  url text DEFAULT NULL,
  mask int(10) DEFAULT NULL,
  status int(10) DEFAULT NULL,
  boxc varchar(40) DEFAULT NULL,
  itime timestamp NOT NULL DEFAULT current_timestamp(),
  pstatus decimal(1,0) DEFAULT 0,
  sstatus decimal(1,0) DEFAULT 0,
  KEY dlr_itime_index (itime),
  KEY dlr_smsc_index (smsc),
  KEY dlr_ts_index (ts)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

