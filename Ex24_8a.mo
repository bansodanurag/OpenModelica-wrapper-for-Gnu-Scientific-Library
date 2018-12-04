model Ex24_8a
function Ex
output Integer k;
external "C" k=n_tup()annotation(Include="#include\"gsl24_8a.c\"",Library="gsl",Library="gslcblas");
end Ex;
Integer k;
equation
k=Ex();
end Ex24_8a;