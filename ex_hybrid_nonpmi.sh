#!/bin/bash
#SBATCH --job-name=hybrid_job_test      # Job name
#SBATCH --partition=workq            # Need to submit workq for multiple node jobs
#SBATCH --nodes=2                    # Maximum number of nodes to be allocated
#SBATCH --ntasks=4                   # Number of MPI tasks (i.e. processes)
#SBATCH --cpus-per-task=24           # Number of cores per MPI task 
#SBATCH --time=00:05:00              # Wall time limit (hh:mm:ss)
#SBATCH --output=hybrid_test_%j.log  # Standard output and error file 

echo "Date              = $(date)"
echo "Hostname          = $(hostname -s)"
echo "Working Directory = $(pwd)"
echo ""
echo "Number of Nodes Allocated      = $SLURM_JOB_NUM_NODES"
echo "Number of Tasks Allocated      = $SLURM_NTASKS"
echo "Number of Cores/Task Allocated = $SLURM_CPUS_PER_TASK"

module load mvapich2/2.3.3/intel-19.0.5-hydra
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
mpirun -n $SLURM_NTASKS ./a.out

