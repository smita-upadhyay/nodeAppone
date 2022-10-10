

pipeline {
  agent any
 
	
  stages {
	
	  stage('Submit Stack') {
            steps {
		    withCredentials([[ $class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'my-creden', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                
            
		
		 sh  "aws cloudformation create-stack --stack-name infra --template-body file://cftwo.yml --EnvironmentName 'abc' --KeyName 'mykey' --region 'us-east-1'"
          
              }
             }
	  }


  }
}

