node {
    def app

    stage('Clone repository') {
      

        checkout scm
    }

    stage('Build image') {
      sh 'docker build -f Dockerfile .'
    }
    stage('docker Images List'){
        sh 'docker images'
    }
    stage('AQUA Scan results'){
        echo "results"
    }
}
