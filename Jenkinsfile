pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                // Pull the latest code from Git
                git 'https://github.com/sky251/Node-app.git'
            }
        }
        stage('Build') {
            steps {
                // Build the Docker image
                sh 'docker build -t myapp .'
            }
        }
        stage('Test') {
            steps {
                // Run any tests (adjust this to match your setup)
                sh 'npm test'
            }
        }
        stage('Docker Login') {
            steps {
                // Log in to Docker Hub or other registry
                sh 'docker login -u sky251 -p Sky@12345'
            }
        }
        stage('Deploy') {
            steps {
                // Tag and push the Docker image to a container registry
                sh 'docker tag myapp $DOCKER_USER/myapp:latest'
                sh 'docker push $DOCKER_USER/myapp:latest'
            }
        }
    }
}
