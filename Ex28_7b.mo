model Ex28_7b
function Ex
input Integer N;
input Real x[4];
input Real y[4];

output Real z[101,2];
external "C" periodic_cubic_spline(N,x,y,z)annotation(Include="#include\"gsl28_7b.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer N=4;
parameter Real x[4]={0.00, 0.10,  0.27,  0.30};
parameter Real y[4]={0.15, 0.70, -0.10,  0.15}; 
Real z[101,2];
equation
z=Ex(N,x,y);


end Ex28_7b;