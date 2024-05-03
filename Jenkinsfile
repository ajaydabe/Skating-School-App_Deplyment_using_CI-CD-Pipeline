pipeline {
    agent any
    environment {
        KUBECONFIG = '/home/ubuntu/.kube/config'
    }
    stages {
        stage('Deploy') {
            steps {
                sh 'kubectl apply -f deploy.yaml'
            }
        }
        stage('Service') {
            steps {
                sh 'kubectl apply -f svc.yaml'
            }
        }
        stage('Ingress') {
            steps {
                sh 'kubectl apply -f ingress.yaml'
            }
        }
    }
}
