cd low/
docker-compose down
docker-compose up --scale ic=2 -d
cd ..
cd high/
docker-compose down
docker-compose up --scale ic=2 -d
cd ..

