pipeline {
    agent any

    environment {
        IMAGE_NAME = "self-healing-app"
        CONTAINER_NAME = "self-healing-container"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                cd app
                docker build -t ${IMAGE_NAME}:v1 .
                '''
            }
        }

        stage('Backup Stable Image') {
            steps {
                sh '''
                docker tag ${IMAGE_NAME}:v1 ${IMAGE_NAME}:stable || true
                '''
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop ${CONTAINER_NAME} || true
                docker rm ${CONTAINER_NAME} || true

                docker run -d \
                --name ${CONTAINER_NAME} \
                -p 5000:5000 \
                ${IMAGE_NAME}:v1
                '''
            }
        }

        stage('Health Check') {
            steps {
                sh '''
                chmod +x scripts/*.sh

                ./scripts/restart.sh
                '''
            }
        }
    }
}
