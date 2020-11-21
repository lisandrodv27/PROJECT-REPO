#! /bin/bash

cd frontend
sudo docker build -t lisandrodv27/frontend-build:latest .
sudo docker push lisandrodv27/frontend-build:latest
cd ..
cd backend
sudo docker build -t lisandrodv27/backend-build:latest .
sudo docker push lisandrodv27/backend-build:latest
