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
     def scanResults = mendScan([
                'productName': config.productName ?: 'default-product',
                'projectName': config.projectName ?: 'container-scan',
                'containerImage': "sruthisoundararajan/test:latest",
                'includeVulnerabilities': true,
                'includeLicenses': true,
                'failOnError': config.failOnCritical ?: true,
                'vulnerabilitySeverityThreshold': config.severityThreshold ?: 'CRITICAL',
                'scanLocalImage': true  // Important flag for local image scanning
            ])
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
