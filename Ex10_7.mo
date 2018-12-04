model Ex10_7
function Ex
input Integer N;
output Integer k;
external "C" k=comb(N)annotation(Include="#include\"gsl10_7.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer N=4;
Integer k;
equation
k=Ex(N);
end Ex10_7;