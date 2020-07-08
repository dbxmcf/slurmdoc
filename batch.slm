#!/bin/bash
#-t 1:00:00 # walltime, abbreviated by -t
#SBATCH --time 1:00:00
#SBATCH --nodes 2      # number of cluster nodes, abbreviated by -N
#-o slurm-%j.out-%N # name of the stdout, using the job number (%j) and the first node (%N)
#-e slurm-%j.err-%N # name of the stderr, using job and first node values
#-e slb-out-%j.err
#SBATCH -o slb-out-%j.err
#SBATCH --ntasks=9    # number of MPI tasks, abbreviated by -n
# additional information for allocated clusters
#-A hpc_hpcadmin6     # account - abbreviated by -A
#SBATCH -A loni_train_2020     # account - abbreviated by -A
#SBATCH -p checkpt  # partition, abbreviated by -p
#SBATCH --mail-user fchen14@lsu.edu
#SBATCH --mail-type BEGIN,END

pwd

echo $SLURM_NTASKS
echo $PBS_NODEFILE
mpirun -np $SLURM_NTASKS hostname
echo "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo "SLURM_NNODES"=$SLURM_NNODES
echo "SLURM_SUBMIT_DIR="$SLURM_SUBMIT_DIR
# https://slurm-dev.schedmd.narkive.com/XH92mTbl/how-to-get-specific-node-name-from-the-variable-slurm-job-nodelist
scontrol show hostnames $SLURM_JOB_NODELIST > slurm_nodefile
./slurm_var.sh
#./pbsnodes.pl
export PBS_NODEFILE=`generate_pbs_nodefile`
cat $PBS_NODEFILE

sleep 1800
#
# set data and working directories
#setenv WORKDIR $HOME/mydata
#setenv SCRDIR /scratch/kingspeak/serial/UNID/myscratch
#mkdir -p $SCRDIR
#cp -r $WORKDIR/* $SCRDIR
#cd $SCRDIR
##
## load appropriate modules, in this case Intel compilers, MPICH2
#module load intel mpich2
## for MPICH2 over Ethernet, set communication method to TCP
## see below for network interface selection options for different MPI distributions
#setenv MPICH_NEMESIS_NETMOD tcp
## run the program
## see below for ways to do this for different MPI distributions
#mpirun -np $SLURM_NTASKS my_mpi_program > my_program.out

