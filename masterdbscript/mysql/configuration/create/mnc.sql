create table mnc(
mnc int(10) NOT NULL,
mcc  int(10) NOT NULL,
operator varchar(1000) NOT NULL,
PRIMARY KEY (mcc, mnc,operator),
CONSTRAINT fk_mnc_mcc FOREIGN KEY (mcc) REFERENCES mcc (mcc)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
