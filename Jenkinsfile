pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'flask-app'
        DOCKER_TAG = 'latest'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-repo/Devops_Exam1.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // Add any testing commands here, e.g., run unit tests
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // If you are pushing to Docker Hub, use the following:
                    docker.withRegistry('https://hub.docker.com', 'docker-hub-credentials') {
                        docker.image("${DOCKER_IMAGE}:${DOCKER_TAG}").push()
                    }
                }
            }
        }

        stage('Deploy to Production') {
            steps {
                script {
                    // Add deployment steps here, e.g., run the Flask app on a remote server
                }
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
