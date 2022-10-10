@Library('github.com/releaseworks/jenkinslib') _

pipeline {
  agent any
 
	
  stages {
	
	  stage('Submit Stack') {
            steps {
		    withCredentials([
            usernamePassword(credentialsId: 'sec', passwordVariable: 'AWS_SECRET', usernameVariable: 'AWS_KEY')
	]) {
		 sh "aws --version"
          
              }
             }
	  }


  }
}
