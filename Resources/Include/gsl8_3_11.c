#include <stdio.h>
#include <gsl/gsl_vector.h>

int
vector1 (int j,double a[3])
{
  int i;
  gsl_vector * v = gsl_vector_alloc (j);
  
  for (i = 0; i < j; i++)
    {
      gsl_vector_set (v, i, 1.23 + i);
    }
  
  for (i = 0; i < 100; i++) /* OUT OF RANGE ERROR */
    {
if(i<3) 
      a[i]= gsl_vector_get (v, i);
else 
gsl_vector_get(v,i);
    }

  gsl_vector_free (v);
  return 0;
}
/*
int main()
{int j=3;
double a[3];
vector1(j,a);
return 0;
}*/
