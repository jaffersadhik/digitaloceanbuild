CREATE TABLE mcc (
  mcc int(10) NOT NULL,
  country_code_iso_3 varchar(5) NOT NULL,
  name varchar(100) ,
  PRIMARY KEY (mcc, country_code_iso_3),
  CONSTRAINT fk_mcc_cc FOREIGN KEY (country_code_iso_3) REFERENCES country_info (country_code_iso_3)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;

