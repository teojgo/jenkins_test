#!/usr/bin/env groovy

pipeline {
  agent any
  stages {
    stage('Serial Stage') {
      agent {label 'node1'}
      steps {

        sh '''gcc -o hello_jenkins hello_jenkins.c
              ./hello_jenkins > output.dat
              grep Jenkins output.dat'''
      }
    }
  }
}
