pipeline {
    agent any
    environment {
        docker_username=credentials("dockeruser")
        docker_password=credentials("dockerpasswd")
    }
    
    stages {
        stage("Log into DockerHub") {
            steps {
                sh "sudo docker login --username=${dockeruser} -password=${dockerpasswd}"
        }
            
        stage("Clone repository and access it") {
          steps {
            sh "git clone https://github.com/lisandrodv27/PROJECT-REPO.git"
            sh "cd PROJECT-REPO" 
          }
        }  
            
        stage("Build frontend/backend and push to DockerHub") {
          steps {
            sh "cd frontend"
            sh "sudo docker build -t lisandrodv27/frontend-build:latest ."
            sh "sudo docker push lisandrodv27/frontend-build:latest"
            sh "cd .."
            sh "cd backend"
            sh "sudo docker build -t lisandrodv27/backend-build:latest ."
            sh "sudo docker push lisandrodv27/backend-build:latest"
          }
        }
 
        stage("Run docker-compose and tests") {
           steps {
            
            sh "docker-compose up -d"
            sh "sudo docker exec backend bash -c 'pytest tests/ --cov application'"
            sh "sudo docker exec frontend bash -c 'pytest tests/ --cov application'"
            sh "sudo docker-compose down"
           }
         }
        
        //stage("K8s") {
         // steps {
     
         // }
       // }
    }
}
