pipeline {
    agent any
    stages {
        stage ('compile'){
        steps {
    sh 'mvn compile'
}  
  }
  stage ('build'){
    steps {
      sh 'mvn -B -Dskioptests clean package'
       }
       }
        stage ('test'){
            steps {
                sh 'mvn test'
            }
        }
        stage ('deploy'){
            steps {
                sh 'java -jar target/myapp-1.0-SNAPSHOT.jar'    
        }
        }
    }
}