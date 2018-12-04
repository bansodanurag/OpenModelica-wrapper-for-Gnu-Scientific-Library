model Ex11_7
function Ex
input Integer N;
output Integer k;
external "C"k=multi_set(N)annotation(Include="#include\"gsl11_7.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer N=4;
Integer k;
equation
k=Ex(N);
end Ex11_7;