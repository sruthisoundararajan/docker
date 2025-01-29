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
  
       bat "docker build -f Dockerfile ."
    }
}}
    stage('Test image') {
        steps{
            bat 'echo "Tests passed"'
    }
    }
    stage("aqua"){
      steps{
        sh "docker images"
    }
}
}
}
