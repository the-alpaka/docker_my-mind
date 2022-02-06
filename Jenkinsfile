pipeline {
    agent none
    stages {
        stage('Set Environment & Build Images') {
            agent any
            steps {
                sh 'docker buildx create --name mybuilder'
                sh 'docker buildx use mybuilder'
                sh 'docker buildx build -t thealpaka/mymind:latest --platform linux/arm64,linux/arm/v7,linux/amd64 --push .'
            }
        }
    }
}