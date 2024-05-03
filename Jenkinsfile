pipeline {
    agent any
    environment {
        KUBECONFIG = '/home/ubuntu/.kube/config'
    }
    stages {
        stage('Deploy') {
            steps {
                sh 'sudo kubectl apply -f deploy.yaml'
            }
        }
        stage('Service') {
            steps {
                sh 'sudo kubectl apply -f svc.yaml'
            }
        }
        stage('Ingress') {
            steps {
                sh 'sudo kubectl apply -f ingress.yaml'
            }
        }
    }
}
