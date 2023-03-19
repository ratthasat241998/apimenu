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
                    bat 'mvn package -DskipTests'
               }
          }
          stage('Test') {
               steps {
                    echo 'testing...'
                    //bat 'mvn test'
               }
          }
          stage('Deploy') {
               steps {
                    bat 'java -jar ./target/menu-0.0.1-SNAPSHOT.jar'
               }
          }
     }
}
