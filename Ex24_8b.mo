model Ex24_8b
function Ex
output Integer k;
external "C" k=n_tup()annotation(Include="#include\"gsl24_8b.c\"",Library="gsl",Library="gslcblas");
end Ex;
Integer k;
equation
k=Ex();
end Ex24_8b;