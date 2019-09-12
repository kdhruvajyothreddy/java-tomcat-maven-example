pipeline {
    agent any
    stages {
        stage ('Build Server Project') {
            steps {
                echo 'Initializing the Code File'
                // For Windows machine
                bat 'mvn clean package'
                // For Linux machine
                // sh 'mvn clean package'
            }
            post {
                success {
                    echo 'Now archiving ....'
                    archiveArtifacts artifacts: '**/target/*.war'
                    echo 'War file has been archived'
                }
            }
        }
 
        stage ('Deploy Build in Staging Area') {
            steps {
                echo 'Deploying artifact in Staging area .....'
                build job: 'Deploy_Servlet_Staging_Pipeline'
            }            
        }        
    }
}