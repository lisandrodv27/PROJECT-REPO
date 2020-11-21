pipeline {
    agent any
    stages {
        stage("Build frontend/backend and push to DockerHub") {
          steps {
            sh "git clone https://github.com/lisandrodv27/PROJECT-REPO.git"
            sh "cd frontend"
            sh "sudo docker build -t lisandrodv27/frontend-build"
            sh "cd .."
            sh "cd backend"
            sh "sudo docker build -t lisandrodv27/backend-build"
            sh "sudo docker login"
            sh "sudo docker push lisandrodv27/frontend-build"
            sh "sudo docker push lisandrodv27/backend-build"
          }
        }
 
         stage("Run docker-compose and tests") {
           steps {
            sh "cd PROJECT-REPO"
            sh "docker-compose up -d"
            sh "sudo docker exec backend bash -c 'pytest tests/ --cov application'"
            sh "sudo docker exec frontend bash -c 'pytest tests/ --cov application'"
            sh "sudo docker-compose down"
           }
         }
        
        stage("K8s") {
          steps {
     
          }
        }
     
