#!/usr/bin/env groovy

pipeline {
  agent any
  stages {
    stage('Serial Stage') {
      steps {
        agent {label 'node1'}
        pwd
      }
    }
  }
}
