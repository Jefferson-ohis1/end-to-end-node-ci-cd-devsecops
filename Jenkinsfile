pipeline {

    agent any

    options {
        skipDefaultCheckout(true)
    }

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

        stage('Install Dependencies') {
            steps {
                dir('app') {
                    sh 'npm ci'
                }
            }
        }

        stage('Unit Testing') {
            steps {
                dir('app') {
                    sh 'npm test'
                }
            }
        }

        stage('SonarCloud Analysis') {
            steps {
                script {
                    def scannerHome = tool 'sonar-scanner'

                    dir('app') {
                        withSonarQubeEnv('SonarCloud') {
                            sh """
                                ${scannerHome}/bin/sonar-scanner \
                                 -Dsonar.projectKey=Jefferson-ohis1_end-to-end-node-ci-cd-devsecops \
                                 -Dsonar.organization=jefferson-ohis1 \
                                 -Dsonar.sources=. \
                                 -Dsonar.host.url=https://sonarcloud.io \
                                 -Dsonar.qualitygate.wait=true
                            """
                        }
                    }
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}