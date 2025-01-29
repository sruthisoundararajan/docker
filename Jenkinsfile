node {
    def app

    stage('Clone repository') {
      

        checkout scm
    }

    stage('Build image') {
  
       app = docker.build("sruthisoundararajan/test")
    }
    stage('docker Images List'){
        sh 'docker images'
    }
    stage('AQUA Scan results'){
        echo "results"
    }
}
