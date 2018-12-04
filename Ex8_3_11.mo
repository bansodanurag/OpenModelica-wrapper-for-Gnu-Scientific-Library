model Ex8_3_11
function Ex
input Integer j;
output Real a[3];
external "C" vector1(j,a)annotation(Include="#include <stdio.h>
#include <gsl/gsl_vector.h>

void
vector1 (int j,double a[100])
{
  int i;
  gsl_vector * v = gsl_vector_alloc (j);
  
  for (i = 0; i < j; i++)
    {
      gsl_vector_set (v, i, 1.23 + i);
    }
  
  for (i = 0; i < 100; i++) /* OUT OF RANGE ERROR */
    { if (i<3)
    a[i]=gsl_vector_get(v,i);
    else
    gsl_vector_get(v,i);

    }

  gsl_vector_free (v);
}",Library="gsl",Library="gslcblas");
end Ex;

parameter Integer j=3;
Real [3] a;
equation
a=Ex(j);
end Ex8_3_11;
