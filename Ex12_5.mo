model Ex12_5
function Ex
input Integer N;
input Integer k;
output Real [5] a;
external "C" sort_small(N,k,a)annotation(Include="#include <gsl/gsl_rng.h>
#include <gsl/gsl_sort_double.h>

int
sort_small (size_t N,size_t k,double a[5])
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
}",Library="gsl",Library="gslcblas");
end Ex;
Real [5] a;
parameter Integer N=100000;
parameter Integer k=5;
equation
a=Ex(N,k);

end Ex12_5;