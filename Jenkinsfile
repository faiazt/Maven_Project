pipeline {
    agent any
    stages{
        stage('Building the app using maven') {
            steps {
                sh '''
                echo building the maven application
                pwd
                sudo mvn -version
                sudo mvn clean install
                '''
            }
        }
    }
}
