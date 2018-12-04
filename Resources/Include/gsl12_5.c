#include <gsl/gsl_rng.h>
#include <gsl/gsl_sort_double.h>

int
sort_small (double a[5],size_t k,size_t N)
{
  const gsl_rng_type * T;
  gsl_rng * r;

  size_t i;

  double * x = malloc (N * sizeof(double));
  double * small = malloc (k * sizeof(double));

  gsl_rng_env_setup();

  T = gsl_rng_default;
  r = gsl_rng_alloc (T);

  for (i = 0; i < N; i++)
    {
      x[i] = gsl_rng_uniform(r);
    }

  gsl_sort_smallest (small, k, x, 1, N);

  

  for (i = 0; i < k; i++)
    {
      a[i]=small[i];
    }

  free (x);
  free (small);
  gsl_rng_free (r);
  return 0;
}
int main()
{ size_t k=5,N=100000;
double a[5];
sort_small(a,k,N);
return 0;
}
