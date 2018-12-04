model Ex31_3
function Ex
input Integer N;
output Real a[6];
external "C" acc(a,N)annotation(Include="#include\"gsl31_3.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer N=20;
Real a[6];
equation
a=Ex(N);
end Ex31_3;