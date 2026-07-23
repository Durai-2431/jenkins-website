pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Durai-2431/jenkins-website.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mywebsite .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker rm -f website || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d -p 80:80 --name website mywebsite'
            }
        }
    }
}
