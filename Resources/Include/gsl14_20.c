#include <stdio.h>
#include <gsl/gsl_linalg.h>

int
sol_ax_b (double a_data[],double b_data[], int n)
{
 /* double a_data[] = { 0.18, 0.60, 0.57, 0.96,
                      0.41, 0.24, 0.99, 0.58,
                      0.14, 0.30, 0.97, 0.66,
                      0.51, 0.13, 0.19, 0.85 };

  double b_data[] = { 1.0, 2.0, 3.0, 4.0 }; */

  gsl_matrix_view m 
    = gsl_matrix_view_array (a_data, n, n);

  gsl_vector_view b
    = gsl_vector_view_array (b_data, n);

  gsl_vector *x = gsl_vector_alloc (n);
  
  int s;

  gsl_permutation * p = gsl_permutation_alloc (n);

  gsl_linalg_LU_decomp (&m.matrix, p, &s);

  gsl_linalg_LU_solve (&m.matrix, p, &b.vector, x);

  printf ("x = \n");
  gsl_vector_fprintf (stdout, x, "%g");

  gsl_permutation_free (p);
  gsl_vector_free (x);
  return 0;
}

/*int main()
{double a_data[] = { 0.18, 0.60, 0.57, 0.96,
                      0.41, 0.24, 0.99, 0.58,
                      0.14, 0.30, 0.97, 0.66,
                      0.51, 0.13, 0.19, 0.85 };

  double b_data[] = { 1.0, 2.0, 3.0, 4.0 };
int n=4;
sol_ax_b(a_data,b_data,n);
}*/
