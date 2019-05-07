// Sample Jenkinsfile
node('node1') {
    stage('Initialization') {
        checkout scm
        echo sh(returnStdout: true, script: 'env')
    }
}
