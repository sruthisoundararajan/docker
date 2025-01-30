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
aqua containerRuntime: 'docker', customFlags: '', hideBase: false, hostedImage: '', localImage: 'sruthisoundararajan/test:1', localToken: '', locationType: 'local', notCompliesCmd: '', onDisallowed: 'ignore', policies: '', register: false, registry: '', runtimeDirectory: '', scannerPath: '', showNegligible: false, tarFilePath: ''      
}
}
}
  post{
    always{
      cleanWs()
    }}
}
