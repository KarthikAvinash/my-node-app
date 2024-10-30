pipeline {
    agent any

    tools {
        nodejs 'NodeJS' // Ensure this matches the name you used in Global Tool Configuration
    }

    environment {
        CI = 'true' // Common environment variable for CI tools
    }

    stages {
        stage('Checkout') {
            steps {
                // Pulls code from GitHub
                git url: 'https://github.com/your-github-username/your-repo-name.git', branch: 'main'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Installs Node.js dependencies
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                // Build the application
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                // Run application tests (assuming tests are defined in package.json)
                sh 'npm test'
            }
        }
    }

    post {
        success {
            echo 'Build and tests completed successfully!'
        }
        failure {
            echo 'Build or tests failed. Please check the logs for details.'
        }
    }
}
