pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Running build.bat from GitHub...'
                bat 'build.bat'
            }
        }

        stage('Complete') {
            steps {
                echo 'CI/CD Pipeline Complete ✅'
            }
        }
    }
}

