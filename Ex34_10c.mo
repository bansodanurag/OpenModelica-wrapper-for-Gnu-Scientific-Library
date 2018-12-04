model Ex34_10c
function Ex
output Real a[4,4];
external "C" roo(a)annotation(Include="#include\"gsl34_10c.c\"",Include="#include\"demo_fn.c\"",Include="#include\"demo_fn.h\"",Library="gsl",Library="gslcblas");
end Ex;
Real a[4,4];
equation
a=Ex();
end Ex34_10c;