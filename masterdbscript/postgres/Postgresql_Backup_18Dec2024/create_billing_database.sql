CREATE USER admin WITH password 'admin@123'
   SUPERUSER CREATEDB CREATEROLE REPLICATION
   VALID UNTIL 'infinity'
  ;

CREATE USER rptuser WITH password 'rptuser@123'
   VALID UNTIL 'infinity'
;

CREATE USER appuser WITH password 'appuser@123'
   VALID UNTIL 'infinity'
;

CREATE DATABASE billing
  WITH TEMPLATE=template0
       OWNER = appuser
       ENCODING = 'UTF8'
       LC_COLLATE = 'en_US.UTF-8'
       LC_CTYPE = 'en_US.UTF-8'
;

GRANT CONNECT ON DATABASE billing TO rptuser;
