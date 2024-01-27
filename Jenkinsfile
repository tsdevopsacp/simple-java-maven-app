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
    
    stage('Static Analysis') {
      steps {
        sh 'mvn sonar:sonar \\
  -Dsonar.projectKey=Simple-Java-Maven-App \
  -Dsonar.projectName='Simple Java Maven App' \
  -Dsonar.host.url=http://13.201.33.154:9000 \
  -Dsonar.token=sqp_65c5a81864d98bfa015def2e470aeb7ba07f3728
  -Dsonar.qualitygate.wait=true'
      }
    }

    stage('Package') {
      steps {
        sh 'mvn package -DskipTests=true'
      }
    }
    
  }
}
