pipeline {
  agent {
    node {
      label 'master'
    }
    
  }
  stages {
    stage('checkout') {
      steps {
        git 'https://github.com/pbarriscale/springxd-base.git'
      }
    }
    stage('build') {
      steps {
        sh 'docker build -t pbarriscale/springxd-base .'
      }
    }
  }
}