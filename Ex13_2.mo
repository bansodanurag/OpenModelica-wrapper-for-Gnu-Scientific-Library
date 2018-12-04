model Ex13_21
function Ex
input Real [:] a;
input Real [:] b;
output Real [4] c;
external "C"mat_mult(a,b,c)annotation(Include="#include <stdio.h>
#include <gsl/gsl_blas.h>

int
mat_mult (double a[],double b[],double c[])
{
  

  gsl_matrix_view A = gsl_matrix_view_array(a, 2, 3);
  gsl_matrix_view B = gsl_matrix_view_array(b, 3, 2);
  gsl_matrix_view C = gsl_matrix_view_array(c, 2, 2);

  /* Compute C = A B */

  gsl_blas_dgemm (CblasNoTrans, CblasNoTrans,
                  1.0, &A.matrix, &B.matrix,
                  0.0, &C.matrix);

  return 0;  
}",Library="gsl",Library="gslcblas");
end Ex;
parameter Real [:] a={ 0.11,0.12,0.13,0.21,0.22,0.23 }; 
parameter Real [:] b= { 1011,1012,1021,1022,1031,1032 };
Real [4] c;
equation
c=Ex(a,b);
end Ex13_21;