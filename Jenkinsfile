pipeline {
    agent any
  environment {
		registry = "sruthisoundararajan/test"
       MEND_API_KEY = credentials('mend-api-key')
        MEND_USER_KEY = credentials('mend-user-key')

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
             echo "Docker Build Step Skipped"
       // bat "docker build -t sruthisoundararajan/test -f Dockerfile ."
    }
}}
    stage('Test image') {
        steps{
            bat "docker images"
    }
    }
    stage("mend image scan"){
    steps{
      sh 'mend image sruthisoundararajan/test:latest'
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
