#include <stdio.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>

int
rand_walk_in_2D (int n)
{
  int i;
  double x = 0, y = 0, dx, dy;

  const gsl_rng_type * T;
  gsl_rng * r;

  gsl_rng_env_setup();
  T = gsl_rng_default;
  r = gsl_rng_alloc (T);

  printf ("%g %g\n", x, y);

  for (i = 0; i < n; i++)
    {
      gsl_ran_dir_2d (r, &dx, &dy);
      x += dx; y += dy; 
      printf ("%g %g\n", x, y);
    }

  gsl_rng_free (r);
  return 0;
}
/*int main()
{int n=10;
rand_walk_in_2D( n);}*/
