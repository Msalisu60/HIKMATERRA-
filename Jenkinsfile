pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Dockerize') {
            steps {
                echo 'Building Docker image...'
                // sh 'docker build -t my-app .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application securely...'
            }
        }
    }
}
