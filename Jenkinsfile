pipeline {
    agent any
    stages {
        stage("Build image") {
          steps {
            sh "sudo docker build -t lisandrodv27/flask-app:1.0 ."
          }
        }
        
        stage("Testing stage") {
          steps {
            sh "docker-compose -d up"
            sh "docker exec backend bash -c 'pytest tests/ --cov application'"
            sh "docker exec frontend bash -c 'pytest tests/ --cov application'"
            sh "docker-compose down"
          }
        }
      
        stage("Log in and push built image to DockerHub") {
          steps {
            sh "sudo docker login"
            sh "sudo docker push lisandrodv27/flask-app:1.0"
          }
        }
        
        stage("K8s") {
          steps {
            sh ""
          }
        }
