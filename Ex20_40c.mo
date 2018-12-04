model Ex20_40c
function Ex
input Real n;
output Integer k;
external "C" k=cum_dis_fn(n)annotation(Include="#include\"gsl20_40c.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Real n=2.0;
Integer k;
equation
k=Ex(n);
end Ex20_40c;