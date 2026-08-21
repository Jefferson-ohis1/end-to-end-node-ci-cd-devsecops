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

        AWS_REGION = 'us-east-1'
        ECR_REGISTRY = '615300991839.dkr.ecr.us-east-1.amazonaws.com'
        ECR_REPOSITORY = 'node-devsecops-repository'
        ECR_IMAGE = "${ECR_REGISTRY}/${ECR_REPOSITORY}:${IMAGE_TAG}"
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

        stage('Amazon ECR Container Image Push') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Amazon ECR Container Image Push"
                    echo "======================================"

                    echo "AWS Region:"
                    echo "${AWS_REGION}"

                    echo "ECR Repository:"
                    echo "${ECR_REPOSITORY}"

                    echo "ECR Image:"
                    echo "${ECR_IMAGE}"

                    echo "======================================"
                    echo "Authenticating Docker to Amazon ECR"
                    echo "======================================"

                    aws ecr get-login-password \
                        --region "${AWS_REGION}" | \
                    docker login \
                        --username AWS \
                        --password-stdin \
                        "${ECR_REGISTRY}"

                    echo "Docker authentication to Amazon ECR succeeded."

                    echo "======================================"
                    echo "Tagging Docker Image"
                    echo "======================================"

                    docker tag \
                        "${IMAGE_NAME}:${IMAGE_TAG}" \
                        "${ECR_IMAGE}"

                    echo "Docker image tagged successfully."

                    echo "======================================"
                    echo "Pushing Docker Image to Amazon ECR"
                    echo "======================================"

                    docker push "${ECR_IMAGE}"

                    echo "======================================"
                    echo "Amazon ECR Container Image Push PASSED"
                    echo "======================================"
                    echo "Image successfully pushed:"
                    echo "${ECR_IMAGE}"
                '''
            }
        }

        stage('Verify ECR Image') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Verify Amazon ECR Image"
                    echo "======================================"

                    echo "Checking ECR repository for image tag:"
                    echo "${IMAGE_TAG}"

                    aws ecr describe-images \
                        --repository-name "${ECR_REPOSITORY}" \
                        --image-ids imageTag="${IMAGE_TAG}" \
                        --region "${AWS_REGION}"

                    echo "======================================"
                    echo "Amazon ECR Image Verification PASSED"
                    echo "======================================"
                    echo "Verified image:"
                    echo "${ECR_IMAGE}"
                '''
            }
        }

        stage('Configure Amazon EKS Access') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Configure Amazon EKS Access"
                    echo "======================================"

                    aws eks update-kubeconfig \
                        --region "${AWS_REGION}" \
                        --name node-devsecops-cluster

                    echo "Verifying EKS cluster access..."

                    kubectl get nodes

                    echo "Amazon EKS access verification PASSED"
                '''
            }
        }

        stage('Amazon EKS Deployment') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Amazon EKS Deployment"
                    echo "======================================"

                    echo "Deploying image:"
                    echo "${ECR_IMAGE}"

                    echo "Replacing Kubernetes image placeholder..."

                    sed -i "s|IMAGE_PLACEHOLDER|${ECR_IMAGE}|g" \
                        k8s/deployment.yaml

                    echo "Applying Kubernetes Deployment..."

                    kubectl apply -f k8s/deployment.yaml

                    echo "Applying Kubernetes Service..."

                    kubectl apply -f k8s/service.yaml

                    echo "Kubernetes manifests applied successfully."
                '''
            }
        }

        stage('Kubernetes Rollout Verification') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Kubernetes Rollout Verification"
                    echo "======================================"

                    kubectl rollout status \
                        deployment/node-monitoring-app \
                        --timeout=180s

                    echo "======================================"
                    echo "Deployment Status"
                    echo "======================================"

                    kubectl get deployment node-monitoring-app

                    echo "======================================"
                    echo "Pod Status"
                    echo "======================================"

                    kubectl get pods -o wide

                    echo "Kubernetes rollout verification PASSED"
                '''
            }
        }

        stage('Kubernetes Service Verification') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Kubernetes Service Verification"
                    echo "======================================"

                    kubectl get service node-monitoring-app

                    echo "Kubernetes Service verification PASSED"
                '''
            }
        }

        stage('EKS Application Health Check') {
            steps {
                sh '''
                    echo "======================================"
                    echo "EKS Application Health Check"
                    echo "======================================"

                    echo "Waiting for LoadBalancer endpoint..."

                    for i in {1..30}; do

                        LOAD_BALANCER_HOST=$(kubectl get service node-monitoring-app \
                            -o jsonpath='{.status.loadBalancer.ingress[0].hostname}' 2>/dev/null || true)

                        if [ -n "$LOAD_BALANCER_HOST" ]; then
                            break
                        fi

                        echo "LoadBalancer endpoint not available yet..."
                        sleep 10

                    done

                    if [ -z "$LOAD_BALANCER_HOST" ]; then
                        echo "ERROR: LoadBalancer endpoint was not assigned."
                        exit 1
                    fi

                    echo "LoadBalancer Host:"
                    echo "$LOAD_BALANCER_HOST"

                    echo "======================================"
                    echo "Testing /health endpoint"
                    echo "======================================"

                    curl --fail \
                        --retry 10 \
                        --retry-delay 5 \
                        "http://${LOAD_BALANCER_HOST}/health"

                    echo
                    echo "EKS application health check PASSED."
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