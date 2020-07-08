#!/bin/bash
#SBATCH --time 1:00:00
#SBATCH --nodes 1

sleep 5
echo "JOB2ID="$SLURM_JOBID >> depfile

exit
