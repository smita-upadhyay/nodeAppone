

pipeline {
  agent any
 
	
  stages {
	
	  stage('Submit Stack') {
            steps {
	
		 sh "aws --version"
		 sh  "aws cloudformation create-stack --stack-name infra --template-body file://cftwo.yml --region 'us-east-1'"
          
              }
             }
	  }


  }

