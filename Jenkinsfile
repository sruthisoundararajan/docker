pipeline {
    agent any
  environment {
		registry = "sruthisoundararajan/test"
		registryCredential = 'bitsanjay198'
		dockerImage = ''
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
        aqua customFlags: '', hideBase: false, hostedImage: '', localImage: registry, locationType: 'local', notCompliesCmd: '', onDisallowed: 'ignore'
    }
}
}
}
