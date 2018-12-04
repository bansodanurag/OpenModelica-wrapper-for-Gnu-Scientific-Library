#include <stdio.h>
#include <gsl/gsl_poly.h>

void poly_fn(double *a,double *z)
{

  gsl_poly_complex_workspace * w 
      = gsl_poly_complex_workspace_alloc (6);
  
  gsl_poly_complex_solve (a, 6, w, z);

  gsl_poly_complex_workspace_free (w);

    

 

}
