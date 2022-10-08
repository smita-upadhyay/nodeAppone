pipeline {
  agent any
  environment {
      PACKER_HOME = tool name: 'packer', type: 'biz.neustar.jenkins.plugins.packer.PackerInstallation'
    }
	
  stages {
	
stage('Example') {
steps {
sh '$PACKER_HOME/packer --version'

}
}


  }
}
