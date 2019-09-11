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
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
 
        stage ('Deploy Build in Staging Area') {
            steps {
                echo 'Deploying artifact in Staging area .....'
                build job: 'Deploy_StagingArea_Pipeline'
            }
            post {
                success {
                    echo 'Deployed in Staging Area successfully.'
                }
            }
        }        
    }
}