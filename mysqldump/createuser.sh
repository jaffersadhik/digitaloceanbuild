mysql -h 127.0.0.1 -P 30001 -u root -p -e "CREATE USER 'appuser'@'%' IDENTIFIED BY 'appuser@123';"
mysql -h 127.0.0.1 -P 30001 -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO 'appuser'@'%';"
mysql -h 127.0.0.1 -P 30001 -u root -p -e "CREATE USER 'cfguser'@'%' IDENTIFIED BY 'Sy5Cf8@123';"
mysql -h 127.0.0.1 -P 30001 -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO 'cfguser'@'%';"
mysql -h 127.0.0.1 -P 30001 -u root -p -e "ALTER USER 'appuser'@'%' IDENTIFIED WITH mysql_native_password BY 'appuser@123';"
mysql -h 127.0.0.1 -P 30001 -u root -p -e "ALTER USER 'cfguser'@'%' IDENTIFIED WITH mysql_native_password BY 'Sy5Cf8@123';"