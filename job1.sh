#!/bin/bash
#SBATCH --time 1:00:00
#SBATCH --nodes 2

sleep 10
echo $SLURM_JOBID > depfile

exit
