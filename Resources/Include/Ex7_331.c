#include <stdio.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_bessel.h>
#include<string.h>
void besse_l( double x,double expected,char status1[],double *res_plus_err)
{
  gsl_sf_result result;

  /*double expected = -0.17759677131433830434739701;*/
  
  int status = gsl_sf_bessel_J0_e (x, &result);
strcpy(status1,gsl_strerror(status));
res_plus_err[0]=result.val;
res_plus_err[1]=result.err;

  //printf ("status  = %s\n", gsl_strerror(status));
  /*printf ("J0(5.0) = %.18f\n"
        "      +/- % .18f\n", 
          result.val, result.err);*/
  //printf ("exact   = %.18f\n", expected);
 // return status;
}
/*int main()
{double x=5.0;
char status1[10];
double  res_plus_err[2];

double expected=-0.17759677131433830434739701;
 besse_l(x,expected,status1,res_plus_err);

return 0;

}*/
