#include <Eigen/Sparse>
#include <iostream>
#include "writer.hpp"
#include <cmath>
#include <Eigen/SparseCholesky>
#include <stdexcept>
#include <iostream>

//! Sparse Matrix type. Makes using this type easier.
typedef Eigen::SparseMatrix<double> SparseMatrix;

//! Used for filling the sparse matrix.
typedef Eigen::Triplet<double> Triplet;

//! Vector type
typedef Eigen::VectorXd Vector;

//! Our function pointer, typedef'd to make it easier to use
typedef double(*FunctionPointer)(double, double);

//----------------poissonBegin----------------
//! Create the Poisson matrix for 2D finite difference.
//! @param[out] A will be the Poisson matrix (as in the exercise)
//! @param[in] N number of elements in the x-direction
void createPorousMediaMatrix2D(SparseMatrix& A, FunctionPointer sigma, int N, double dx) {
    std::vector<Triplet> triplets;
    A.resize(N*N, N*N);
    triplets.reserve(5*N*N-4*N);
    // Fill up triples
// (write your solution here)
    int k=0;
    for (int i=1;i<=N;++i){
        for (int j=1;j<=N;++j){

            k=(i-1)*N+j-1;

            double x=i*dx;
            double y=j*dx;
            double sig1=sigma(x+dx,y)+2*sigma(x,y)+sigma(x,y+dx);
            triplets.push_back(Triplet(k,k,sig1));

            if (k % N!=0)
            {
              triplets.push_back(Triplet(k,k-1,-sigma(x,y)));
            }
            if (k% N!=N-1){
                triplets.push_back(Triplet(k,k+1,-sigma(x,y+dx)));
            }
            if (k>=N){
                triplets.push_back(Triplet(k,k-N,-sigma(x,y)));
            }
            if (k<N*N-N){
                triplets.push_back(Triplet(k,k+N,-sigma(x+dx,y)));
            }
        }
    }
/*
    for (int k =0;k<N*N;++i){

        triplets.push_back(Triplet(k,k,4));
        if(k % N !=0){
            triplets.push_back(Triplet(k,k-1,-1));
        }

        if (k% N!=N-1){
            triplets.push_back(Triplet(k,k+1,-1));
        }
        if (k<N*N-N){
            triplets.push_back(Triplet(k,k+N,-1));
        }
        if (k>=N){
            triplets.push_back(Triplet(k,k-N,-1));
        }

        }
*/
    A.setFromTriplets(triplets.begin(), triplets.end());
}
//----------------poissonEnd----------------

//----------------RHSBegin----------------
//! Create the Right hand side for the 2D finite difference
//! @param[out] rhs will at the end contain the right hand side
//! @param[in] f the right hand side function f
//! @param[in] N the number of points in the x direction
//! @param[in] dx the cell width
void createRHS(Vector& rhs, FunctionPointer f, int N, double dx) {
    rhs.resize(N * N);

   for (int i=1;i<=N;++i){
       for (int j=1;j<=N;j++){
        double x=i*dx;
        double y=j*dx;

        rhs((i-1)*N+j-1)=dx*dx*f(x,y);
   }
   }
}
//----------------RHSEnd----------------


//----------------solveBegin----------------
//! Solve the Poisson equation in 2D
//! @param[in] f the function pointer to f
//! @param[in] N the number of points to use (in x direction)
//!
//! @returns the approximate solution u
Vector poissonSolve(FunctionPointer f, FunctionPointer sigma, int N) {
    Vector u;
    double dx = 1.0 / (N + 1);

    // Compute A, rhs and u
// (write your solution here)

    SparseMatrix A;
    createPorousMediaMatrix2D(A,sigma,N,dx);

    Vector rhs;
    createRHS(rhs,f,N,dx);

    Eigen::SparseLU<SparseMatrix> solver;

    solver.compute(A);
    if ( solver.info() !=  Eigen::Success) {
        throw std::runtime_error("Could not decompose the matrix");
    }

    u.resize((N+2)*(N+2));
    u.setZero();

    Vector innerU=solver.solve(rhs);

    for (int i=1;i<=N;++i){

        for (int j=1;j<=N;++j){

            u[i*(N+2)+j]=innerU[(i-1)*N+j-1];
        }
    }

    return u;
}
//----------------solveEnd----------------


//! Gives the Right hand side F at the point x, y
double F(double x, double y) {
  return 4*M_PI*M_PI*sin(2*M_PI*x)*sin(2*M_PI*y)*(4*cos(2*M_PI*x)*cos(2*M_PI*y)+M_PI);
}

//----------------convergenceBegin----------------
//! Gives the exact solution at the point x,y
double exactSolution(double x, double y) {

    
// (write your solution here)

    double sol=sin(2*M_PI*x)*sin(2*M_PI*y);
return sol; //remove when implemented
}

void convergeStudy(FunctionPointer F, FunctionPointer sigma) {
    const int startK = 3;
    const int endK = 9;


    Vector errors(endK - startK);
    Vector resolutions(errors.size());
    for (int k = startK; k < endK; ++k) {
        const int N = 1<<k; // 2^k
// (write your solution here)

        Vector disolution;
        disolution=poissonSolve(F,sigma,N);

        Vector exactsolution;
        exactsolution.resize((N+2)*(N+2));

        for (int i=0;i<=N+1;++i){
            for(int j=0;j<=N+1;j++){
                double x=i*(1.0/(N+1));
                double y=j*(1.0/(N+1));
                exactsolution[i*(N+2)+j]=exactSolution(x,y);
            }
        }
        Vector P((N+2)*(N+2));

        P=disolution-exactsolution;
        P=P.cwiseAbs();
        errors[k-startK]=P.maxCoeff();
        resolutions[k-startK]=N;
    }

    writeToFile("errors.txt", errors);
    writeToFile("resolutions.txt", resolutions);
}
//----------------convergenceEnd----------------

int main(int, char**) {
    auto sigmaCos = [](double x, double y) {
      return M_PI/2.+cos(2*M_PI*x)*cos(2*M_PI*y);
    };

    auto sigmaConstant = [](double x, double y) {
        return 1.0;
    };
    auto u = poissonSolve(F, sigmaCos, 500);
    writeToFile("u_fd.txt", u);

   convergeStudy(F, sigmaCos);
}