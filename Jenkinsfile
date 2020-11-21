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
        }
            
        stage("Clone repository and access it") {
          steps {
            sh "chmod a+x ./scripts/repo-clone-access.sh"
            sh "./scripts/repo-clone-access.sh"
          }
        }  
            
        stage("Build frontend/backend and push to DockerHub") {
          steps {
            sh "chmod a+x ./scripts/build-push.sh"
            sh "./scripts/build-push.sh "
          }
        }
 
        stage("Run docker-compose and tests") {
           steps {
            sh "chmod a+x ./scripts/run-test.sh"
            sh "./scripts/run-test.sh"
           }
         }
        
        //stage("K8s") {
         // steps {
     
         // }
       // }
    }
}
