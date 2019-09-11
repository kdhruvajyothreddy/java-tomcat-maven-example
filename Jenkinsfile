pipeline {
    agent any 
    stages {
        stage ('Initialize') {
            steps {
                echo "Initializing the code file"
            }
        }

        stage ('Build') {
            steps {
                // For windows machine
                bat 'mvn clean package'

                // For Linux machine
                // sh 'mvn clean package'

            }
        }

        post {
            success {
                echo "Now archiving ..... "

                archiveArtifacts artifacts: '**/*.war'
            }
        }
    }    
}