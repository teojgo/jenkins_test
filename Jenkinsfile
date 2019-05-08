#!/usr/bin/env groovy

stage('Build') {
    parallel(
        'build1': {
             node('node1') {
                 checkout scm
                 sh 'make'
             }
        },
        'build2': {
             node('node2') {
                 checkout scm
                 sh 'make'
             }
        }
    )
}

stage('Run') {
    parallel(
        'run1': {
             node('node1') {
                 sh '''./hello_jenkins node1 > output.txt
                       grep Jenkins output.txt'''
             }
        },
        'run2': {
             node('node2') {
                 sh '''./hello_jenkins node2 > output.txt
                       grep Jenkins output.txt'''
             }
        }
    )
}
