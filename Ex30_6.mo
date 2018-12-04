model Ex30_6
function Ex
output Real a[10000,4];
external "C" cheb(a)annotation(Include="#include \"gsl30_6.c\"",Library ="gsl",Library="gslcblas");
end Ex;
Real a[10000,4];
equation
a=Ex();
end Ex30_6;