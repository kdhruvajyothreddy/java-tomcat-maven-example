pipeline {
    agent any
	stages {
	    stage('Build Servlet Project') {
    	   steps {
				//For Windows
			 	bat 'mvn clean install'
			 	
			 	//For Linux
			 	//sh 'mvn clean install'
			 	echo 'The servlet package has been created'			 	
   	    	}   	    	
   	    	post {
	    	       success {       	    	   		
       	    	   		echo 'Now archiving ....'
       	    	   		archiveArtifacts artifacts:'**/*.war'
       	    		}
	    	   }
    	}
    	stage('Deploy Artifact to Staging') {
	       steps {
       	    	echo 'Deploying artifacts into Satging ....'
       	    	build job:'Deploy_Artifact_Staging_Pipeline'
       	    	echo 'Deployment to Staging completed'
       		}

	    }

	}
}
