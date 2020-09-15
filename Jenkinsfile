pipeline {
  agent any

  environment { 
    AWS_CREDENTIAL_ID='andfrankly-jenkins-aws'
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
        withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: env.AWS_CREDENTIAL_ID]]) {
          sh 'make push'
        }
      }
    }
  }
}
