// Sample Jenkinsfile
node('daintvm1') {
    stage('Info') {
        println 'Hello from Jenkins'
        sh '''#/bin/bash -l
              sbatch --wait sbatch_test.sh
              cat test_output.out'''
    }
}
