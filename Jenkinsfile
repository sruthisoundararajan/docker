pipeline {
    agent any
    stages{
    stage('Clone repository') {

      steps{
        checkout scm
    }
    }

    stage('Build image') {
        steps{
            script{
             // echo "Docker Build Step Skipped"
       bat "docker build -t test:15 -f Dockerfile ."
    }
}}
    stage('Test image') {
        steps{
            bat "docker images"
    }
    }
    stage("aqua"){
      steps{
aqua containerRuntime: 'docker', customFlags: '', hideBase: false, hostedImage: '', localImage: 'test:15', localToken: '', locationType: 'local', notCompliesCmd: '', onDisallowed: 'ignore', policies: '', register: false, registry: '', runtimeDirectory: '', scannerPath: '', showNegligible: false, tarFilePath: ''      
}
}
}
  post{
    always{
      cleanWs()
      bat "docker rmi test:15"
    }}
}
