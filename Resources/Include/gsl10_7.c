#include <stdio.h>
#include <gsl/gsl_combination.h>

int 
comb (int N) 
{
  gsl_combination * c;
  size_t i;

  printf ("All subsets of {0,1,2,3} by size:\n") ;
  for (i = 0; i <= N; i++)
    {
      c = gsl_combination_calloc (N, i);
      do
        {
          printf ("{");
          gsl_combination_fprintf (stdout, c, " %u");
          printf (" }\n");
        }
      while (gsl_combination_next (c) == GSL_SUCCESS);
      gsl_combination_free (c);

    }

  return 0;
}
/*int main()
{ int N=4;
comb(N);
}*/
