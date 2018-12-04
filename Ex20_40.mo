model Ex20_40
function Ex
input Integer n;
input Integer mu;
output Integer k;
external "C" k=ran(n,mu)annotation(Include="#include\"gsl20_40.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer n=10;
parameter Integer mu=3;
Integer k;
equation
k=Ex(n,mu);
end Ex20_40;