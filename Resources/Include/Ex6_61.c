#include <stdio.h>
#include <gsl/gsl_poly.h>

void poly_fn(double *a,size_t size,double *z)
{

  gsl_poly_complex_workspace * w 
      = gsl_poly_complex_workspace_alloc (size);
  
  gsl_poly_complex_solve (a, size, w, z);

  gsl_poly_complex_workspace_free (w);

    

 

}

/* int main()
{ double a[6]={-1,0,0,0,0,1};
  double z[10];
int i;
poly_fn(a,z);
for (i = 0; i < 5; i++)
    {
      printf ("z%d = %+.18f %+.18f\n", 
              i, z[2*i], z[2*i+1]);
    }
return 0;
}
*/
