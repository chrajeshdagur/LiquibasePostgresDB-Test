pipeline {
    agent any

    environment {
        LIQUIBASE_HOME = '/path/to/liquibase'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                // Add your build steps here
            }
        }

        stage('Apply DB Changes to DEV') {
            steps {
                script {
                    sh 'chmod +x scripts/apply-changes-dev.sh'
                    sh './scripts/apply-changes-dev.sh'
                }
            }
        }

        stage('Apply DB Changes to SIT') {
            steps {
                script {
                    sh 'chmod +x scripts/apply-changes-sit.sh'
                    sh './scripts/apply-changes-sit.sh'
                }
            }
        }

        stage('Apply DB Changes to PROD') {
            steps {
                script {
                    sh 'chmod +x scripts/apply-changes-prod.sh'
                    sh './scripts/apply-changes-prod.sh'
                }
            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
            // Add any cleanup steps here
        }
    }
}
