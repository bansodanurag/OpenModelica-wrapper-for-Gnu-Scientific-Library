model Ex38_5
function Ex
output Real a[7,6];
external "C" mimm(a)annotation(Include="#include\"gsl38_5.c\"",Library="gsl",Library="gslcblas");
end Ex;
Real a[7,6];
equation
a=Ex();
end Ex38_5;