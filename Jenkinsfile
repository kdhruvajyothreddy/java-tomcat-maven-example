pipeline {
    agent any
    tools {
        maven 'localMaven'
    }

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
       	    	   		archiveArtifacts artifacts:'**/target/*.war'
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
	    stage('Deploy to Production') {
	    	steps {	    	
				timeout(time:5, unit:'DAYS') {
					input message:'APPROVE Production Deployment?'
				}					
				echo 'Deploying to Production'
	    		build job:'Deploy_Production_Pipeline'    
	    	}
	    	post {
	    	    success {
    	    	    echo 'Deployment Production SUCCESSFUL'
    	    	}
    	    	failure {
	    	        echo 'Deployment Production FAILED'
	    	    }
	    	}
	     }
	}
}
