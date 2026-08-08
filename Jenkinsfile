pipeline {

    agent any

    tools {
        jdk 'jdk21'
        nodejs 'node18'
    }

    stages {

        stage('Checkout Source Code') {
            steps {
                checkout scm
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}