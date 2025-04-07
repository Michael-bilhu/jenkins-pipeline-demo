pipeline {
    agent any


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

