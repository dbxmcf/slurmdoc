#!/bin/bash
#SBATCH --time 1:00:00
#SBATCH --nodes 1

sleep 10
echo "JOB1ID="$SLURM_JOBID >> depfile

exit
