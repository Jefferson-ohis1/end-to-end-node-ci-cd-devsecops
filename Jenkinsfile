pipeline {

    agent any

    options {
        skipDefaultCheckout(true)
    }

    tools {
        jdk 'jdk21'
        nodejs 'node24'
    }

    environment {
        IMAGE_NAME = 'node-monitoring-app'
        IMAGE_TAG = "${BUILD_NUMBER}"
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
                        echo "======================================"
                        echo "Node.js version"
                        echo "======================================"
                        node --version

                        echo "======================================"
                        echo "npm version"
                        echo "======================================"
                        npm --version

                        echo "======================================"
                        echo "Dependency tree for tar"
                        echo "======================================"
                        npm ls tar || true

                        echo "======================================"
                        echo "Dependency tree for brace-expansion"
                        echo "======================================"
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
                    sh '''
                        docker build \
                            -t ${IMAGE_NAME}:${IMAGE_TAG} \
                            .
                    '''
                }
            }
        }

        stage('Verify Production Image') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Node.js version inside production image"
                    echo "======================================"

                    docker run --rm \
                        ${IMAGE_NAME}:${IMAGE_TAG} \
                        node --version

                    echo "======================================"
                    echo "Verify npm is removed"
                    echo "======================================"

                    docker run --rm \
                        ${IMAGE_NAME}:${IMAGE_TAG} \
                        sh -c "command -v npm || echo 'npm removed'"

                    echo "======================================"
                    echo "Verify npx is removed"
                    echo "======================================"

                    docker run --rm \
                        ${IMAGE_NAME}:${IMAGE_TAG} \
                        sh -c "command -v npx || echo 'npx removed'"
                '''
            }
        }

        stage('Trivy Container Security Gate') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Trivy HIGH/CRITICAL Security Gate"
                    echo "======================================"

                    trivy image \
                        --severity HIGH,CRITICAL \
                        --exit-code 1 \
                        ${IMAGE_NAME}:${IMAGE_TAG}

                    echo "======================================"
                    echo "Trivy Security Gate PASSED"
                    echo "======================================"
                    echo "No HIGH or CRITICAL vulnerabilities detected."
                '''
            }
        }

        stage('Application Health Check') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Starting production container"
                    echo "======================================"

                    CONTAINER_NAME="node-monitoring-app-test-${BUILD_NUMBER}"

                    # Remove any previous container with this name
                    docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

                    # Start production container
                    docker run -d \
                        --name "$CONTAINER_NAME" \
                        -p 3000:3000 \
                        node-monitoring-app:${BUILD_NUMBER}

                    echo "Waiting for application to start..."
                    sleep 5

                    echo "======================================"
                    echo "Application Health Check"
                    echo "======================================"

                    curl --fail http://localhost:3000/health

                    echo
                    echo "Application health check passed."
                '''
            }
        }
    }

    post {
        always {
            sh '''
                docker rm -f node-monitoring-app-test-${BUILD_NUMBER} 2>/dev/null || true
                docker rmi node-monitoring-app:${BUILD_NUMBER} 2>/dev/null || true
            '''

            echo 'Pipeline execution completed.'
        }
    }
}