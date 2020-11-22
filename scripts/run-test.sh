#! /bin/bash

sudo -E DATABASE_URI=${DATABASE_URI} -E TEST_DATABASE_URI=${TEST_DATABASE_URI} -E SECRET_KEY=${SECRET_KEY} docker-compose up -d --build
mysql -h ${TEST_DATABASE_ENDP} -P 3306 -u ${TEST_DATABASE_USER} -p${TEST_DB_PASSWD} < database/Create.sql
sudo docker exec backend bash -c "pytest tests/ --cov application"
sudo docker exec frontend bash -c "pytest tests/ --cov application"
sudo docker-compose down
rm -rf PROJECT-REPO
