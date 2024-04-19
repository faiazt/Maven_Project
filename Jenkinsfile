pipeline {
    agent any
   environment {
	DOCKER_PASSWORD=credentials('33bf6ca2-692b-48ca-9e94-17e4daf0c26c')
  }	
    stages{
        stage('Checkout from GitHub') {
            steps {
                git branch: 'main', url: 'https://github.com/faiazt/Maven_Project.git'
            }
        }
        stage('Building the app using maven') {
            steps {
                sh '''
                echo building the maven application
                mvn clean install
                '''
            }
        }
        stage('Building the docker image') {
            steps {
                sh '''
                docker build . -t mavenapp:${BUILD_NUMBER}
		        docker tag mavenapp:${BUILD_NUMBER} ftahmid/mavenapp:${BUILD_NUMBER}
                '''
            }
        }
        stage('Push Docker Image'){
            steps{
               sh ''' 
	           echo ${DOCKER_PASSWORD} | docker login -u ftahmid --password-stdin 
               docker push ftahmid/mavenapp:${BUILD_NUMBER}
             '''
            }
        }
    }
}
