#include <stdio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_sum.h>



int
acc(double a[6],int N)
{
  double t[N];
  double sum_accel, err;
  double sum = 0;
  int n;
  
  gsl_sum_levin_u_workspace * w 
    = gsl_sum_levin_u_alloc (N);

  const double zeta_2 = M_PI * M_PI / 6.0;
  
  /* terms for zeta(2) = \sum_{n=1}^{\infty} 1/n^2 */

  for (n = 0; n < N; n++)
    {
      double np1 = n + 1.0;
      t[n] = 1.0 / (np1 * np1);
      sum += t[n];
    }
  
  gsl_sum_levin_u_accel (t, N, w, &sum_accel, &err);

  printf ("term-by-term sum = % .16f using %d terms\n", 
          sum, N);
a[0]=sum;


  printf ("term-by-term sum = % .16f using %zu terms\n", 
          w->sum_plain, w->terms_used);
a[1]=w->sum_plain;
  printf ("exact value      = % .16f\n", zeta_2);
a[2]=zeta_2;
  printf ("accelerated sum  = % .16f using %zu terms\n", 
          sum_accel, w->terms_used);
a[3]=sum_accel;
  printf ("estimated error  = % .16f\n", err);
a[4]=err;
  printf ("actual error     = % .16f\n", 
          sum_accel - zeta_2);
a[5]=sum_accel-zeta_2;
  gsl_sum_levin_u_free (w);
  return 0;
}

/*int main()
{ int N=20;
double  a[6];
acc(a,N);
}*/
