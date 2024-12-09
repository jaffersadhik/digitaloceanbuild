cd dlrpayloaddngenerator/
docker-compose down
docker-compose up -d
cd ..
cd ac/low/
docker-compose down
docker-compose up -d
cd ../..
cd ac/high/
docker-compose down
docker-compose up -d
cd ../..
cd dnpost/http/high/
docker-compose down
docker-compose up -d
cd ../../..
cd dnpost/http/low/
docker-compose down
docker-compose up -d
cd ../../..
cd dnpost/smpp/high/
docker-compose down
docker-compose up -d
cd ../../..
cd dnpost/smpp/low/
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
cd rc/low/
docker-compose down
docker-compose up -d
cd ../..
cd rc/high
docker-compose down
docker-compose up -d
cd ../..
