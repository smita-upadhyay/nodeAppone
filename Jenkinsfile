

pipeline {
  agent any
	
    environment {
      PACKER_HOME = tool name: 'packer', type: 'biz.neustar.jenkins.plugins.packer.PackerInstallation'
    }
	
      stages {
	   stage('AMI creation') {  
	  steps {
	     withCredentials([[ $class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'my-creden', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
             sh '$PACKER_HOME/packer --version'
	     sh '$PACKER_HOME/packer build -var aws_access_key=${AWS_ACCESS_KEY_ID} -var aws_secret_key=${AWS_SECRET_ACCESS_KEY} ./packer.json'
	   /* sh 'aws ssm put-parameter --name "web-server" --value "three-node-App" --type "String" --datatype "aws:ec2:image"'*/
              }
           }
        } 
     stage('cf Stack') {
          steps {
       withCredentials([[ $class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'my-creden', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                 sh  "aws cloudformation create-stack --stack-name newinfras --template-body file://cf.yml  --region 'us-east-1'"
               }
             }
	  }
       }
    }

