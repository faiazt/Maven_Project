pipeline {
    agent any
    stages{
        stage('Building the app using maven') {
            steps {
                sh '''
                echo building the maven application
                pwd
                mvn -version
                mvn clean install
                '''
            }
        }
    }
}
