model Ex19_6
function Ex
input Integer n;
output Integer k;
external "C" k=q_rng(n)annotation(Include="#include\"gsl19_6.c\"",Library="gsl",Library="gslcblas");
end Ex;
Integer n=1024;
Integer k;
equation
k=Ex(n);
end Ex19_6;