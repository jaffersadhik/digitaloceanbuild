cd accountsync
docker-compose up -d
cd ..
cd dnpayload1
docker-compose up -d
cd ..
cd dnpayload2
docker-compose up -d
cd ..
cd smppdnredis1
docker-compose up -d
cd ..
cd smppdnredis2
docker-compose up -d
cd ..
cd smppdnredis3
docker-compose up -d
cd ..
cd smppdnredis4
docker-compose up -d
cd ..
cd duplicatecheckredis
docker-compose up -d
cd ..
cd shortcoderedis
docker-compose up -d
cd ..
cd kafkaredis
docker-compose up -d
cd ..
cd smppconsumerredis
docker-compose up -d
cd ..
cd smppconcateredis
docker-compose up -d
cd ..
cd walletredis
docker-compose up -d
cd ..
