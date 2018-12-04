#include <stdio.h>
#include <gsl/gsl_vector.h>

int
ab (size_t j,double a[10])
{
  int i; 
  gsl_vector * v = gsl_vector_alloc (j);

  {  
     FILE * f = fopen ("test.dat", "r");
     gsl_vector_fscanf (f, v);
     fclose (f);
  }

  for (i = 0; i < 10; i++)
    {
      a[i]= gsl_vector_get(v, i);
/* printf ("%g\n", gsl_vector_get(v, i));*/
    }

  gsl_vector_free (v);
  return 0;
}

/*int main()
{ int j=10;
double a[10];
ab(j,a);
return 0;
}*/

