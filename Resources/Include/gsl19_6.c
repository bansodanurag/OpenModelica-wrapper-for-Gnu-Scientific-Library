#include <stdio.h>
#include <gsl/gsl_qrng.h>

int
q_rng (int n)
{
  int i;
  gsl_qrng * q = gsl_qrng_alloc (gsl_qrng_sobol, 2);

  for (i = 0; i < n; i++)
    {
      double v[2];
      gsl_qrng_get (q, v);
      printf ("%.5f %.5f\n", v[0], v[1]);
    }

  gsl_qrng_free (q);
  return 0;
}
/*int main()
{q_rng();
return 0;
}*/
