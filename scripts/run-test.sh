#! /bin/bash

sudo docker-compose up -d
sudo docker exec backend bash -c 'pytest tests/ --cov application'
sudo docker exec frontend bash -c 'pytest tests/ --cov application'
sudo docker-compose down
