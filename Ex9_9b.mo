model Ex9_9b
function Ex
input Integer N;
output Integer k;
external "C" k=third_order_permu(N)annotation(Include="#include\"gsl9_9b.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer N=3;
Integer k;
equation
k=Ex(N);
end Ex9_9b;