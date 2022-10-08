pipeline {
  agent any
  environment {
      PACKER_HOME = tool name: 'packer', type: 'biz.neustar.jenkins.plugins.packer.PackerInstallation'
    }
	
  stages {
    stage('Create Packer AMI') {
        steps {
          withCredentials([
            usernamePassword(credentialsId: 'abc', passwordVariable: 'AWS_SECRET', usernameVariable: 'AWS_KEY')
          ]) {
            sh 'packer build -var aws_access_key=${AWS_KEY} -var aws_secret_key=${AWS_SECRET} ./packer.json'
        }
      }
    }
  }
}
