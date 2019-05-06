// Sample Jenkinsfile
node('scs_daintvm1') {
    stage('Info') {
        checkout scm
        echo sh(returnStdout: true, script: 'env')
        println "Body: "
        println pullRequest.body
        println 'ls'
        sh '''#/bin/bash -l
              sbatch --wait sbatch_test.sh
              cat test_output.out'''
    }
}
