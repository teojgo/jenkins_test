// Sample Jenkinsfile
node('scs_daintvm1') {
    stage('Info') {
        println 'Hello from Jenkins'
        println 'ls'
        sh '''#/bin/bash -l
              sbatch --wait sbatch_test.sh
              cat test_output.out'''
    }
}
