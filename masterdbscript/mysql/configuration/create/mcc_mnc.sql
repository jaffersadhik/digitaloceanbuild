create table mcc_mnc(
prefix int(10) primary key,
mnc int(10) ,
mcc int(10) ,
created_ts datetime,
updated_ts datetime,
FOREIGN KEY (mcc, mnc) REFERENCES mnc(mcc, mnc)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
