model Ex29_2
function Ex
output Real a[4];
output Real b[4];
external "C" differn(a,b)annotation(Include ="#include\"gsl29_2.c\"",Library="gsl",Library="gslcblas");
end Ex;
Real a[4];
Real b[4];
equation
(a,b)=Ex();
end Ex29_2;