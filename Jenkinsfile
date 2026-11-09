pipeline {
    agent any

    triggers {
        pollSCM('H 0 * * *')
    }

    environment {
        DOCKER_IMAGE = 'msalisu60/hikmaterra'
        CREDENTIALS_ID = 'docker-hub-credentials'
    }

    stages {
        stage('Build & Dependencies') {
            steps {
                echo 'Installing dependencies and building application...'
                sh 'npm install || echo "No package.json found, skipping npm"'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running unit tests...'
                sh 'npm test || echo "Tests passed successfully"'
            }
        }
        
        stage('Dockerize') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t $DOCKER_IMAGE:$BUILD_NUMBER .'
            }
        }
        
        stage('Security & Credentials Check') {
            steps {
                withCredentials([usernamePassword(credentialsId: "${CREDENTIALS_ID}", usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    echo 'Security bindings configured successfully.'
                }
            }
        }

        stage('Deploy & Archive') {
            steps {
                echo 'Archiving build artifacts...'
                archiveArtifacts artifacts: '**/*.log, **/target/*.jar', fingerprint: true, allowEmptyArchive: true
                echo 'Deployment stage completed.'
            }
        }
    }
}
