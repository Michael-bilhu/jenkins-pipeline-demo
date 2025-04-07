pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Michael-bilhu/jenkins-pipeline-demo'
            }
        }

        stage('Build') {
            steps {
                echo 'Running build.sh from GitHub...'
                bat 'build.bat' // for Windows users
            }
        }

        stage('Complete') {
            steps {
                echo 'CI/CD Pipeline Complete ✅'
            }
        }
    }
}

