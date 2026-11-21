pipeline {

    agent any

    stages {

        stage('Install Dependencies') {
            steps {
                echo 'Installing testing dependencies...'
                sh 'npm ci'
                echo 'Dependencies installed successfully!'
            }
        }

        stage('Unit Testing') {
            steps {
                echo 'Running unit tests...'
                sh 'npm run test:unit'
                echo 'Unit tests completed successfully!'
            }
        }

        stage('Integration Testing') {
            steps {
                echo 'Running integration tests...'
                sh 'npm run test:integration'
                echo 'Integration tests completed successfully!'
            }
        }

        stage('Build') {
            steps {
                echo 'Starting DevOps application build...'
                sh 'docker --version'
                sh 'docker build -t devops-app:1.0 .'
                echo 'Docker image build completed!'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS: All HTML tests passed and Docker image built.'
        }

        failure {
            echo 'FAILURE: Check the Jenkins Console Output.'
        }

        always {
            echo 'Jenkins pipeline execution finished.'
        }
    }
}
