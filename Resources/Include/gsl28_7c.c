#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include <gsl/gsl_math.h>
#include <gsl/gsl_spline.h>

int
comparision_interpol(double z[101][4],double x[9],double y[9],size_t N)
{
  size_t i;

  

  gsl_interp_accel *acc = gsl_interp_accel_alloc();
  gsl_spline *spline_cubic = gsl_spline_alloc(gsl_interp_cspline, N);
  gsl_spline *spline_akima = gsl_spline_alloc(gsl_interp_akima, N);
  gsl_spline *spline_steffen = gsl_spline_alloc(gsl_interp_steffen, N);

  gsl_spline_init(spline_cubic, x, y, N);
  gsl_spline_init(spline_akima, x, y, N);
  gsl_spline_init(spline_steffen, x, y, N);

  for (i = 0; i < N; ++i)
    printf("%g %g\n", x[i], y[i]);

  printf("\n\n");

  for (i = 0; i <= 100; ++i)
    {
      double xi = (1 - i / 100.0) * x[0] + (i / 100.0) * x[N-1];
      double yi_cubic = gsl_spline_eval(spline_cubic, xi, acc);
      double yi_akima = gsl_spline_eval(spline_akima, xi, acc);
      double yi_steffen = gsl_spline_eval(spline_steffen, xi, acc);

      printf("%g %g %g %g\n", xi, yi_cubic, yi_akima, yi_steffen);
z[i][0]=xi;
z[i][1]=yi_cubic;
z[i][2]=yi_akima;
z[i][3]=yi_steffen;
    }

  gsl_spline_free(spline_cubic);
  gsl_spline_free(spline_akima);
  gsl_spline_free(spline_steffen);
  gsl_interp_accel_free(acc);

  return 0;
}
/*int main()
{double z[101][4];

   double x[] = { 7.99, 8.09, 8.19, 8.7, 9.2,
                       10.0, 12.0, 15.0, 20.0 };
   double y[] = { 0.0, 2.76429e-5, 4.37498e-2,
                       0.169183, 0.469428, 0.943740,
                       0.998636, 0.999919, 0.999994 };
 size_t N = 9;
comparision_interpol(z,x,y,N);
}*/
