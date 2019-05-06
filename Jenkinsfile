// Sample Jenkinsfile
node('scs_daintvm1') {
    stage('Initialization') {
        checkout scm
        echo sh(returnStdout: true, script: 'env')
        sh '''#/bin/bash -l
              sbatch --wait sbatch_test.sh
              cat test_output.out'''
        archiveArtifacts 'reframe.log'
    }
}
