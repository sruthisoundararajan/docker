pipeline {
    agent any
  environment {
		registry = "sruthisoundararajan/test"

	}
    stages{
    stage('Clone repository') {

      steps{
        checkout scm
    }
    }

    stage('Build image') {
        steps{
            script{
     
       bat "docker build -t sruthisoundararajan/test -f Dockerfile ."
    }
}}
    stage('Test image') {
        steps{
            bat "docker images"
    }
    }
    stage("aqua"){
      steps{
        try{
				aqua customFlags: '', hideBase: false, hostedImage: '', localImage: 'sruthisoundararajan/test', locationType: 'local', notCompliesCmd: '', onDisallowed: 'ignore', policies: '', register: false, registry: '', showNegligible: false
    }
      }
      catch(Exception e){
      echo "Failed Scan"
      }
      cleanWs()
      
}
}
}
