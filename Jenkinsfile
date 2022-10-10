pipeline {
  agent any
 
	
  stages {
	

	  stage('Submit Stack') {
            steps {
		    withCredentials([
            usernamePassword(credentialsId: 'sec', passwordVariable: 'AWS_SECRET', usernameVariable: 'AWS_KEY')
	]) {
            sh "aws cloudformation create-stack --stack-name infra --template-body file://newfinal - Copy.yml --region 'us-east-1'"
              }
             }
	  }


  }
}
