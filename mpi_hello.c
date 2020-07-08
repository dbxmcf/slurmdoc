#include <mpi.h>
#include <stdio.h>

#define HOST_NAME_LEN 255

int main(int argc, char** argv) {
    // Initialize the MPI environment
    MPI_Init(NULL, NULL);

    // Get the number of processes
    int world_size;
    MPI_Comm_size(MPI_COMM_WORLD, &world_size);

    // Get the rank of the process
    int world_rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);

    // Get the name of the processor
    char host_name[HOST_NAME_LEN];
    //int name_len;
    gethostname(host_name,HOST_NAME_LEN);
    // MPI_Get_processor_name(processor_name, &name_len);

    // Print off a hello world message
    printf("Hello world from host %s, rank %d out of %d processors\n",
           host_name, world_rank, world_size);

    // Finalize the MPI environment.
    MPI_Finalize();
}
