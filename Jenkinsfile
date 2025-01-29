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
  
       bat "docker build -f Dockerfile ."
    }
}}
    stage('Test image') {
        steps{
            bat "docker images"
    }
    }
    stage("aqua"){
      steps{
				aqua customFlags: '', hideBase: false, hostedImage: '', localImage: registry, locationType: 'local', notCompliesCmd: '', onDisallowed: 'ignore', policies: '', register: false, registry: '', showNegligible: false
    }
}
}
}
