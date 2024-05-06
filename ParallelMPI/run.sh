mpicc jacobi_parallel_mpi.c -lm && mpirun -n 8 ./a.out < input 
