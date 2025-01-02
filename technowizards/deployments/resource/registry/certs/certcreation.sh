openssl req -newkey rsa:2048 -nodes -keyout domain.key -x509 -days 36500 -out domain.crt -config openssl-san.cnf
