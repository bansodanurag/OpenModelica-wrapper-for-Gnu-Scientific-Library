model Ex34_10
function Ex
output Real a[6,6];
external "C" roo(a)annotation(Include="#include\"gsl34_10.c\"",Include="#include\"demo_fn.c\"",Include="#include\"demo_fn.h\"",Library="gsl",Library="gslcblas");
end Ex;
Real a[6,6];
equation
a=Ex();
end Ex34_10;