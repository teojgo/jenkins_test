#!/bin/bash -l
#SBATCH --job-name="jenkins_test"
#SBATCH --output=test_output.out
#SBATCH --partition="cscsci"
#SBATCH --constraint=gpu

hostname
