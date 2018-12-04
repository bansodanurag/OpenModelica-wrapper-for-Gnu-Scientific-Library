#include <math.h>
#include <stdio.h>
#include <gsl/gsl_matrix.h>
#include <gsl/gsl_blas.h>

int
column_norm (double a[10],int b,int c )
{
  size_t i,j;

  gsl_matrix *m = gsl_matrix_alloc (b, c);

  for (i = 0; i < b; i++)
    for (j = 0; j < c; j++)
      gsl_matrix_set (m, i, j, sin (i) + cos (j));

  for (j = 0; j < c; j++)
    {
      gsl_vector_view column = gsl_matrix_column (m, j);
      double d;

      d = gsl_blas_dnrm2 (&column.vector);

      printf ("matrix column %zu, norm = %g\n", j, d);
a[j]=d;
    }

  gsl_matrix_free (m);

  return 0;
}

/*int main()
{double a[10];
int b=10;
int c=10;
column_norm(a,b,c);
return 0;
}*/
