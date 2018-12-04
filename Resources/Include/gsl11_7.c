#include <stdio.h>
#include <gsl/gsl_multiset.h>

int
multi_set (int N)
{
  gsl_multiset * c;
  size_t i;

  printf ("All multisets of {0,1,2,3} by size:\n") ;
  for (i = 0; i <= N; i++)
    {
      c = gsl_multiset_calloc (N, i);
      do
        {
          printf ("{");
          gsl_multiset_fprintf (stdout, c, " %u");
          printf (" }\n");
        }
      while (gsl_multiset_next (c) == GSL_SUCCESS);
      gsl_multiset_free (c);
    }

  return 0;
}
/*int main()
{ int N=4;
multi_set(N);
return 0;
}*/
