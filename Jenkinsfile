pipeline {
  agent any

  environment { 
    DOMAIN=secret.andfrankly.com
  }

  stages {
    stage('Build') {
      steps {
        sh 'make run'
      }
    }
  }
}
