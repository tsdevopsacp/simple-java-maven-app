pipeline {
  agent any
  stages {

    stage('Compile') {
      steps {
        sh 'mvn clean compile'
      }
    }

    stage('Unit Test') {
      steps {
        sh 'mvn verify'
      }
    }

    stage('Package') {
      steps {
        sh 'mvn package -DskipTests=true'
      }
    }

  }
}
