#!/bin/bash

JOBID=$( sbatch job1.sh | cut -d' ' -f4 )
echo "Submitted batch job $JOBID"
sbatch --dependency=afterok:$JOBID job2.sh
