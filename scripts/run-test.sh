#! /bin/bash

sudo docker-compose down
sudo docker-compose ps -a
sudo rm -rf PROJECT-REPO
git clone https://github.com/lisandrodv27/PROJECT-REPO.git
cd PROJECT-REPO
#mysql -h test-db.cpe0zmxz843f.eu-west-1.rds.amazonaws.com -P 3306 -u root -ppassword123 < database/Create.sql
#mysql -h main-db.cpe0zmxz843f.eu-west-1.rds.amazonaws.com -P 3306 -u root -ppassword123 < database/Create.sql
sudo docker-compose up -d --build 
sudo docker exec backend bash -c "pytest tests/ --cov application"
sudo docker exec frontend bash -c "pytest tests/ --cov application"
sudo docker-compose down
cd ..

