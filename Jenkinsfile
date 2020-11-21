pipeline {
    agent any
    stages {
        stage("Build images") {
          steps {
            sh "docker-compose up -d"
          }
        }
        
        stage("Testing stage") {
          steps {
            sh "git clone 
            sh "sudo docker exec backend bash -c 'pytest tests/ --cov application'"
            sh "sudo docker exec frontend bash -c 'pytest tests/ --cov application'"
            sh "sudo docker-compose down"
          }
        }
      
        stage("Log in and push built image to DockerHub") {
          steps {
            sh "sudo docker login"
            sh "sudo docker push lisandrodv27/"
          }
        }
        
        stage("K8s") {
          steps {
            sh "kubectl apply -f nginx"
          }
        }
