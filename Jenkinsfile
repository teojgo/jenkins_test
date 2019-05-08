pipeline {
    agent any
    stages {
        stage('Build') {
            parallel {
                stage('build1') {
                    agent {label 'node1'}
                    steps {
                        sh 'make'
                    }
                }
                stage('build2') {
                    agent {label 'node2'}
                    steps {
                        sh 'make'
                    }
                }
            }
        }

        stage('Run') {
            parallel {
                stage('run1') {
                    agent {label 'node1'}
                    steps {
                        sh '''./hello_jenkins node1 > output.txt
                              grep Jenkins output.txt'''
                    }
                }
                stage('run2') {
                    agent {label 'node2'}
                    steps {
                        sh '''./hello_jenkins node1 > output.txt
                              grep Jenkins output.txt'''
                    }
                }
            }
        }
    }
}
