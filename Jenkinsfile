pipeline {
    agent any
    options {
        buildDiscarder(logRotator(numToKeepStr: '10'))
        skipDefaultCheckout()
        ansiColor('xterm')
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'docker build --tag destrostudios/phpmyadmin --file common/phpmyadmin.Dockerfile .'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}