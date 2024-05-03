pipeline {
    agent any
    environment {
        KUBECONFIG = '/home/ubuntu/.kube/config'
    }
    stages {
        stage('Deploy') {
            steps {
                sh 'sudo -S kubectl apply -f deploy.yaml'
            }
        }
        stage('Service') {
            steps {
                sh 'sudo -S kubectl apply -f svc.yaml'
            }
        }
        stage('Ingress') {
            steps {
                sh 'sudo -S kubectl apply -f ingress.yaml'
            }
        }
    }
}
