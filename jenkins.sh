pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                git branch: 'main', url: 'https://github.com/Prathima-R/My_first-task-.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'echo "Build successful!"'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "All tests passed!"'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application to staging environment...'
                sh 'echo "Deployment successful!"'
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
