model Ex18_13
function Ex
input Integer n;
output Integer k;
external "C"k=ranuge(n)annotation(Include="#include\"gsl18_13.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer n=10;
Integer k;
equation
k=Ex(n);
end Ex18_13;