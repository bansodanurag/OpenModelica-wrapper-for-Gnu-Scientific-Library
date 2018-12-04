model Ex22_5b
function Ex
input Integer N;
output Integer k;
external "C" k=low_quart_up_quart_median( N)annotation(Include="#include\"gsl22_5b.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer N=10000;
Integer k;
equation
k=Ex(N);
end Ex22_5b;