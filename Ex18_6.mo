model Ex18_6
function Ex
output Integer k;
external "C" k=ranuge()annotation(Include="#include\"gsl18_6.c\"",Library="gsl",Library="gslcblas");
end Ex;
Integer k;
equation
k=Ex();
end Ex18_6;