cd dlrpayloaddngenerator/
docker-compose down
docker-compose up -d
cd ..
cd ac/all/
docker-compose down
docker-compose up -d
cd ../..
cd dnpost/http/all/
docker-compose down
docker-compose up -d
cd ../../..
cd dnpost/smpp/all/
docker-compose down
docker-compose up -d
cd ../../..
cd dnpost/smpp/poller/
docker-compose down
docker-compose up -d
cd ../../..
cd duplicatecheckcleanup/
docker-compose down
docker-compose up -d
cd ..
cd kannelstatusupdator/
docker-compose down
docker-compose up -d
cd ..
cd poller/dnfp/
docker-compose down
docker-compose up -d
cd ../..
cd poller/ifp/
docker-compose down
docker-compose up -d
cd ../..
cd poller/scheduleblockoutpoller/
docker-compose down
docker-compose up -d
cd ../..
cd smppconcatehandover/
docker-compose down
docker-compose up -d
cd ..
cd rc/all
docker-compose down
docker-compose up -d
cd ../..
