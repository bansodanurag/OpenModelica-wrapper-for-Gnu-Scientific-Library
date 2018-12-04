model Ex7_33
function Ex
input Real x;
input Real expected;
input String [1] status1;
output Real res_plus_err[2];
external "C" besse_l(x,expected,status1,res_plus_err)annotation(
      Include = "#include <stdio.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_bessel.h>
#include<string.h>
void besse_l( double x,double expected,char status1[],double *res_plus_err)
{
  gsl_sf_result result;
  
  int status = gsl_sf_bessel_J0_e (x, &result);
strcpy(status1,gsl_strerror(status));
res_plus_err[0]=result.val;
res_plus_err[1]=result.err;
}" ,Library = "gsl",
      Library = "gslcblas");
      end Ex;
      parameter Real x=5.0;
      parameter Real expected =-0.17759677131433830434739701;
      parameter String [1] status1;
      Real [2] res_plus_err;
      equation
      res_plus_err=Ex(x,expected,status1);
end Ex7_33;