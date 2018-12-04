model Ex2_1
function bessel
input  Real x;
output Real y;
external "C" y=gsl_sf_bessel_J0(x) annotation(
      Library = "gsl",
      Library = "gslcblas");
  end bessel;
  parameter Real x=5;
  Real y;
  parameter Real expected=-0.17759677131433830434739701;
  equation
  y=bessel(x);
  
end Ex2_1;