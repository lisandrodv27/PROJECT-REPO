#! /bin/bash

sudo rm -rf PROJECT-REPO
git clone https://github.com/lisandrodv27/PROJECT-REPO.git
cd PROJECT-REPO
mysql -h test-db.cpe0zmxz843f.eu-west-1.rds.amazonaws.com -P 3306 -u ${TEST_DATABASE_USER} -p${TEST_DB_PASSWD} < database/Create.sql
mysql -h main-db.cpe0zmxz843f.eu-west-1.rds.amazonaws.com -P 3306 -u ${TEST_DATABASE_USER} -p${TEST_DB_PASSWD} < database/Create.sql
sudo -E DATABASE_URI=${DATABASE_URI} -E TEST_DATABASE_URI=${TEST_DATABASE_URI} -E SECRET_KEY=${SECRET_KEY} docker-compose up -d --build 
sudo docker exec backend bash -c "pytest tests/ --cov application"
sudo docker exec frontend bash -c "pytest tests/ --cov application"
sudo docker-compose down
cd ..

