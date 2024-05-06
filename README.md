# Poisson Equation Parallel Solver
A parallel algorithm to solve [Poisson Equation](https://en.wikipedia.org/wiki/Poisson%27s_equation) using Jacobi with Successive Over-Relaxation(S.O.R) algorithm.

The goal of this project was to develop a parallel program that numerically solves Poisson's equation:

![equation](https://latex.codecogs.com/png.latex?%5Cbg_white%20%28%7B%5Cnabla%7D%5E2%20-%20a%29u%3D%5Cfrac%7Bd%5E2%7D%7Bdx%5E2%7Du%20&plus;%20%5Cfrac%7Bd%5E2%7D%7Bdy%5E2%7Du%20-%20au%20%3D%20f)

in range [-1,1]x[-1,1].

The program calculates the values of the matrix `u` in the range above and also outputs the error between the numerical and the analytical solution which is:

![equation](https://latex.codecogs.com/png.latex?%5Cbg_white%20u%28x%2Cy%29%20%3D%20%281-x%5E2%29%281-y%5E2%29)

The libraries we used to parallelize the algorithm are:
  - MPI
  - CUDA
  

## Installation Steps
1. Please ensure that your system has a gcc compiler.
2. Please ensure that you have a multi-core CPU and you have MPI installed in you system.
3. Please esnure you have a CUDA enabled GPU and you have CUDA library installed in the system.

## Demo Scripts
You can run the program from the directory, just run the `run.sh` program in each directory, i.e, `Sequential`, `ParallelMPI`, and `CUDA`.
You can change the data size by changing the input file, first line, which indicates the grid size, i.e, m * n.
You can modify the number of processes used in ``run.sh` file while running Parallel MPI code to the number of logical cores in your system.
