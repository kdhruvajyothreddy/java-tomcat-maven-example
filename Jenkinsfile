pipeline {
    agent any 
    stages {
        stage ('Initialize') {
            steps {
                echo "Initializing the code file"
            }
        }

        // For Pipeline Project
        stage ('Build Servlet Project') {
            steps {
                // For windows machine
                bat 'mvn clean package'

                // For Linux machine
                // sh 'mvn clean package'
            }
            post {
                success {
                    echo "Now archiving ..... "

                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        // For Freestyle Project
        stage ('Deploy Build in Staging Area') {
            steps {
                // To build a freestyle project in Jenkins
                build job: 'Deploy_StagingArea_Pipeline'
            }
        }

        stage ('Deploy to Production') {
            steps {
                timeout(time:5, unit: 'DAYS') {
                    input message: "Approve PRODUCTION DEPLOYMENT?"
                }
                build job: 'Deploy_Production_Pipeline'
                post {
                    success {
                        echo 'Deployment on PRODUCTION is successful.'
                    }
                    failure {
                        echo 'Deployment FAILURE on PRODUCTION.'
                    }
                }
            }
        }
    }    
}