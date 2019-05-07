#!/usr/bin/env groovy

pipeline {
  agent any
  stages {
    stage('Serial Stage') {
      agent {label 'node1'}
      steps {
        sh 'pwd'
      }
    }
  }
}
