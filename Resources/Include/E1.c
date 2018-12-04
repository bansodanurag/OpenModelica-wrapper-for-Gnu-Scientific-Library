#include <stdio.h>
#include <gsl/gsl_matrix.h>

int
matr_1 (int c[2],int z[1])
{
  int i, j,k=0;
k=0; 
  gsl_matrix * m = gsl_matrix_alloc (c[0], c[1]);
  gsl_matrix * a = gsl_matrix_alloc (c[0], c[1]);
  
  for (i = 0; i < c[0]; i++)
    for (j = 0; j < c[1]; j++)
      gsl_matrix_set (m, i, j, 0.23 + i + j);

  {  
     FILE * f = fopen ("test.dat", "wb");
     gsl_matrix_fwrite (f, m);
     fclose (f);
  }

  {  
     FILE * f = fopen ("test.dat", "rb");
     gsl_matrix_fread (f, a);
     fclose (f);
  }

  for (i = 0; i < c[0]; i++)
    for (j = 0; j < c[1]; j++)
      {
        double mij = gsl_matrix_get (m, i, j);
        double aij = gsl_matrix_get (a, i, j);
        if (mij != aij) k++;
      }

  gsl_matrix_free (m);
  gsl_matrix_free (a);
z[0]=k;

  printf ("differences = %d (should be zero)\n", k);
  return (0);
}

/*int main()
{int c[2]={100,100};
int z[1]={0};
matr_1( c,z);
return 0;
}*/

