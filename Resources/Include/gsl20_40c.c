#include <stdio.h>
#include <gsl/gsl_cdf.h>

int
cum_dis_fn (double x)
{
  double P, Q;

  P = gsl_cdf_ugaussian_P (x);
  printf ("prob(x < %f) = %f\n", x, P);

  Q = gsl_cdf_ugaussian_Q (x);
  printf ("prob(x > %f) = %f\n", x, Q);

  x = gsl_cdf_ugaussian_Pinv (P);
  printf ("Pinv(%f) = %f\n", P, x);

  x = gsl_cdf_ugaussian_Qinv (Q);
  printf ("Qinv(%f) = %f\n", Q, x);

  return 0;
}
/*int main()
{double x=2.0;
cum_dis_fn(x);
return 0;
}*/
