model Ex28_7c
function Ex
input Real x[9];
input Real y[9];
input Integer N;
output Real z[101,4];
external "C"comparision_interpol(z,x,y,N)annotation(Include="#include\"gsl28_7c.c\"",Library="gsl",Library="gslcblas");
end Ex;
Real z[101,4];

   parameter Real x[9] = { 7.99, 8.09, 8.19, 8.7, 9.2,
                       10.0, 12.0, 15.0, 20.0 };
   parameter Real y[9] = { 0.0, 2.76429e-5, 4.37498e-2,
                       0.169183, 0.469428, 0.943740,
                       0.998636, 0.999919, 0.999994 };
 parameter Integer N = 9;
 equation
z=Ex(x,y,N);

end Ex28_7c;