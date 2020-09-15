pipeline {
  agent any

  environment { 
    DOMAIN='secret.andfrankly.com'
  }

  stages {
    stage('Build') {
      steps {
        sh 'make build'
      }
    }
    stage('Deploy') {
      when {
        expression {
          currentBuild.result == null || currentBuild.result == 'SUCCESS'
        }
      }
      steps {
        sh 'make push'
      }
    }
  }
}
