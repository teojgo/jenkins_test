#!/usr/bin/env groovy

node('master') {
    stage('Build') {
        node('node1') {
            checkout scm
            sh 'make'
        }
    }
    stage('Run') {
        node('node1') {
            sh '''./hello_jenkins > output.txt
                  grep Jenkins output.txt'''
    }
}
