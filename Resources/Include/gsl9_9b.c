#include <stdio.h>
#include <gsl/gsl_permutation.h>

int
third_order_permu (size_t N) 
{
  gsl_permutation * p = gsl_permutation_alloc (N);

  gsl_permutation_init (p);

  do 
   {
      gsl_permutation_fprintf (stdout, p, " %u");
      printf ("\n");
   }
  while (gsl_permutation_next(p) == GSL_SUCCESS);

  gsl_permutation_free (p);

  return 0;
}
/*int
main()
{ size_t N=3;
third_order_permu(N);
return 0;
}*/
