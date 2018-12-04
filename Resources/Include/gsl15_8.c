

#include <stdio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_eigen.h>

int
e_val_e_vec (double data[],int n)
{
  

  gsl_matrix_view m 
    = gsl_matrix_view_array (data, n, n);

  gsl_vector *eval = gsl_vector_alloc (n);
  gsl_matrix *evec = gsl_matrix_alloc (n, n);

  gsl_eigen_symmv_workspace * w = 
    gsl_eigen_symmv_alloc (n);
  
  gsl_eigen_symmv (&m.matrix, eval, evec, w);

  gsl_eigen_symmv_free (w);

  gsl_eigen_symmv_sort (eval, evec, 
                        GSL_EIGEN_SORT_ABS_ASC);
  
  {
    int i;

    for (i = 0; i < n; i++)
      {
        double eval_i 
           = gsl_vector_get (eval, i);
        gsl_vector_view evec_i 
           = gsl_matrix_column (evec, i);

        printf ("eigenvalue = %g\n", eval_i);
        printf ("eigenvector = \n");
        gsl_vector_fprintf (stdout, 
                            &evec_i.vector, "%g");
      }
  }

  gsl_vector_free (eval);
  gsl_matrix_free (evec);

  return 0;
}
/*int main()
{double data[] = { 1.0  , 1/2.0, 1/3.0, 1/4.0,
                    1/2.0, 1/3.0, 1/4.0, 1/5.0,
                    1/3.0, 1/4.0, 1/5.0, 1/6.0,
                    1/4.0, 1/5.0, 1/6.0, 1/7.0 };
int n=4;
e_val_e_vec(data,n);
}*/
