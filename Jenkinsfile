pipeline {
  agent any
  stages {
    stage('Install packer') {
        steps {
          script {
            
            sh'''#!/bin/bash
                      curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
                      sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
                      sudo apt-get update && sudo apt-get install packer
                   '''  
          }
        }
    }
    stage('packer validate') {
      steps{
        script{
          
          sh'''#!/bin/bash
                       packer validate ./packer.json
                    '''
        }
      }
    }
    stage('packer build') {
      steps {
          script {
          
          withCredentials([usernamePassword(credentialsId: 'abc', passwordVariable: 'AWS_SECRET', usernameVariable: 'AWS_KEY')])  {
            sh'''#!/bin/bash
                          packer build -var aws_access_key=${AWS_KEY} -var aws_secret_key=${AWS_SECRET} ./packer.json'
                        ''' 
                         
        }
      }
    }
  }
}
}
