pipeline {
    agent any

    parameters {
        choice(name: 'DEPLOY_ENV', choices: ['dev', 'stage', 'prod'], description: 'Choose environment')
    }

    stages {
        stage('Build') {
            steps {
                timeout(time: 2, unit: 'MINUTES') {
                    echo "Building for ${params.DEPLOY_ENV}"
                    bat 'build.bat'
                }
            }
        }

        stage('Deploy') {
            when {
                expression { params.DEPLOY_ENV == 'prod' }
            }
            steps {
                echo "🚀 Deploying to Production!"
            }
        }

        stage('Wrap Up') {
            steps {
                echo "✅ Pipeline finished for ${params.DEPLOY_ENV}"
            }
        }
    }
}
