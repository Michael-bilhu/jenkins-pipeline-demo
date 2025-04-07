pipeline {
    agent any

    parameters {
        choice(name: 'DEPLOY_ENV', choices: ['dev', 'stage', 'prod'], description: 'Choose deployment environment')
    }

    stages {
        stage('Build') {
            steps {
                echo "Building for environment: ${params.DEPLOY_ENV}"
                bat 'build.bat'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying to ${params.DEPLOY_ENV} environment"
            }
        }
    }
}
