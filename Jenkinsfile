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

        stage('Dependency Inspection') {
            steps {
                dir('app') {
                    sh '''
                        echo "Node.js version:"
                        node --version

                        echo "npm version:"
                        npm --version

                        echo "Dependency tree for tar:"
                        npm ls tar || true

                        echo "Dependency tree for brace-expansion:"
                        npm ls brace-expansion || true
                    '''
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

        stage('Snyk SCA') {
            steps {
                dir('app') {
                    snykSecurity(
                        snykInstallation: 'Snyk',
                        snykTokenId: 'snyk-token',
                        severity: 'high',
                        failOnIssues: false,
                        failOnError: true,
                        targetFile: 'package.json'
                    )
                }
            }
        }

        stage('Docker Build') {
            steps {
                dir('app') {
                    sh 'docker build -t node-monitoring-app:${BUILD_NUMBER} .'
                }
            }
        }

        stage('Trivy Container Scan') {
            steps {
                sh 'trivy image node-monitoring-app:${BUILD_NUMBER}'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}