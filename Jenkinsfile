pipeline {
     agent any
     stages {
          stage('Source') {
               steps {
                    git branch: 'main',
                        url: 'https://github.com/ratthasat241998/apimenu.git'
               }
          }
          stage('Build') {
               steps {
                    // sh 'mvn package -DskipTests'
                    bat 'mvn package -DskipTests'
               }
          }
          stage('Test') {
               steps {
                    echo 'testing...'
                    //sh 'mvn test'
               }
          }
          stage('Deploy') {
               steps {
                    //sh 'java -jar ./target/menu-0.0.1-SNAPSHOT.jar'
                    bat 'java -jar ./target/menu-0.0.1-SNAPSHOT.jar'
               }
          }
     }
}
