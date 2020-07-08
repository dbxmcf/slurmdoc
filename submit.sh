#!/bin/bash
# Do NOT submit this script using sbatch!
# use the below comand to get the job-id of the first job
# the sbatch will output a line containing the job-id just submitted
# we use the cut command to get the job-id (last field)
JOBID1=$( sbatch job1.sh | cut -d' ' -f4 )
echo "Submitted batch job $JOBID1"
JOBID2=$( sbatch job2.sh | cut -d' ' -f4 )
echo "Submitted batch job $JOBID2"
# job3.sh depends on the completion of job1.sh and job2.sh
sbatch --dependency=afterok:$JOBID1:$JOBID2 job3.sh
