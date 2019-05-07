#!/usr/bin/env groovy

node('master') {
    stage('Serial Stage') {
        node('node1') {
            println 'Hello from node1'
        }
        node('node2') {
            println 'Hello from node2'
        }
    }
    stage('Custom Dir Stage') {
        node('node1') {
            dir('custom_dir') {
                checkout scm
                sh '''gcc -o hello_jenkins hello_world.c
                      ./hello_jenkins'''
            }
        }
    }

}
