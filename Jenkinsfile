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
       	    	   		archiveArtifacts artifacts:'**/*.war', fingerprint:true
       	    		}
	    	   }
    	}
	}
}
