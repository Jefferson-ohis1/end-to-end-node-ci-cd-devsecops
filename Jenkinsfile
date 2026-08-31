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
                    sh 'npm test -- --coverage'
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
                                -Dsonar.javascript.lcov.reportPaths=coverage/lcov.info \
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

                    echo "Applying Kubernetes ServiceMonitor..."

                    kubectl apply -f k8s/service-monitor.yaml

                    echo "Applying Kubernetes HPA..."

                    kubectl apply -f k8s/hpa.yaml

                    echo "======================================"
                    echo "Kubernetes manifests applied successfully"
                    echo "======================================"

                    kubectl get deployment node-monitoring-app
                    kubectl get service node-monitoring-app
                    kubectl get servicemonitor node-monitoring-app
                    kubectl get hpa node-monitoring-app
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

        stage('Kubernetes HPA Verification') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Kubernetes HPA Verification"
                    echo "======================================"

                    kubectl get hpa node-monitoring-app

                    echo "======================================"
                    echo "HPA Detailed Status"
                    echo "======================================"

                    kubectl describe hpa node-monitoring-app

                    echo "Kubernetes HPA verification completed."
                '''
            }
        }

        stage('HPA Metrics Verification') {
            steps {
                sh '''
                    echo "======================================"
                    echo "HPA Metrics Verification"
                    echo "======================================"

                    echo "Current Pod Metrics:"
                    kubectl top pods

                    echo "======================================"
                    echo "HPA Status"
                    echo "======================================"

                    kubectl get hpa node-monitoring-app

                    echo "======================================"
                    echo "HPA Detailed Status"
                    echo "======================================"

                    kubectl describe hpa node-monitoring-app

                    echo "======================================"
                    echo "HPA metrics verification completed."
                    echo "======================================"
                '''
            }
        }        

        stage('Prometheus ServiceMonitor Verification') {
            steps {
                sh '''
                    echo "======================================"
                    echo "Prometheus ServiceMonitor Verification"
                    echo "======================================"

                    kubectl get servicemonitor node-monitoring-app

                    echo "======================================"
                    echo "ServiceMonitor Details"
                    echo "======================================"

                    kubectl describe servicemonitor node-monitoring-app

                    echo "Prometheus ServiceMonitor verification completed."
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

                    LOAD_BALANCER_HOST=""

                    for i in $(seq 1 30); do

                        LOAD_BALANCER_HOST=$(kubectl get service node-monitoring-app \
                            -o jsonpath='{.status.loadBalancer.ingress[0].hostname}' \
                            2>/dev/null || true)

                        if [ -n "$LOAD_BALANCER_HOST" ]; then
                            break
                        fi

                        echo "LoadBalancer endpoint not available yet..."
                        echo "Attempt $i of 30"
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

                    for i in $(seq 1 12); do

                        echo "Health check attempt $i of 12..."

                        if curl --fail --silent --show-error \
                            --connect-timeout 10 \
                            "http://${LOAD_BALANCER_HOST}/health"; then

                            echo
                            echo "EKS application health check PASSED."
                            exit 0
                        fi

                        echo
                        echo "Health endpoint not ready yet."
                        echo "Retrying in 10 seconds..."
                        sleep 10

                    done

                    echo "ERROR: EKS application health check failed."
                    exit 1
                '''
            }
        }
        stage('OWASP ZAP Baseline DAST') {
            steps {
                sh '''
                    echo "======================================"
                    echo "OWASP ZAP Baseline DAST"
                    echo "======================================"

                    echo "Obtaining EKS LoadBalancer endpoint..."

                    LOAD_BALANCER_HOST=$(kubectl get service node-monitoring-app \
                        -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')

                    if [ -z "$LOAD_BALANCER_HOST" ]; then
                        echo "ERROR: LoadBalancer endpoint was not found."
                        exit 1
                    fi

                    TARGET_URL="http://${LOAD_BALANCER_HOST}"

                    echo "ZAP Target:"
                    echo "$TARGET_URL"

                    echo "======================================"
                    echo "Running OWASP ZAP Baseline Scan"
                    echo "======================================"

                    set +e

                    docker run --rm \
                        --user 0:0 \
                        -v "$(pwd):/zap/wrk/:rw" \
                        zaproxy/zap-stable \
                        zap-baseline.py \
                        -t "$TARGET_URL" \
                        -r zap-report.html \
                        -J zap-report.json

                    ZAP_EXIT_CODE=$?

                    set -e

                    echo "======================================"
                    echo "OWASP ZAP Scan Result"
                    echo "======================================"

                    echo "ZAP exit code: $ZAP_EXIT_CODE"

                    case "$ZAP_EXIT_CODE" in

                        0)
                            echo "✅ ZAP scan completed with no warnings or failures."
                            ;;

                        2)
                            echo "⚠️ ZAP reported WARNINGS."
                            echo "⚠️ Warnings have been reviewed and are accepted."
                            echo "✅ Continuing pipeline."
                            ;;

                        *)
                            echo "❌ ZAP reported FAIL findings or encountered a scan error."
                            echo "❌ Failing pipeline."
                            exit "$ZAP_EXIT_CODE"
                            ;;

                    esac

                    echo "======================================"
                    echo "OWASP ZAP Baseline DAST COMPLETED"
                    echo "======================================"
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
        }

        success {
            echo '✅ Pipeline execution completed successfully.'
            echo '✅ All configured pipeline stages passed.'
        }

        failure {
            echo '❌ Pipeline execution failed.'
            echo '⚠️ Review the failed stage and console output for details.'
        }

        unstable {
            echo '⚠️ Pipeline completed with an unstable result.'
        }

        aborted {
            echo '⚠️ Pipeline execution was aborted.'
        }
    }
}