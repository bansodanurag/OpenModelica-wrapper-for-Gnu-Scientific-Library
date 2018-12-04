model Ex9_9a
function Ex
input Integer N;
output Integer k;
external "C" k= inv_permu(N)annotation(Include="#include\"gsl9_9a.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer N=10;
Integer k;
equation
k=Ex(N);
end Ex9_9a;