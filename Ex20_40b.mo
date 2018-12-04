model Ex20_40b
function Ex
input Integer n;
output Integer k;
external "C" k=rand_walk_in_2D(n)annotation(Include="#include\"gsl20_40b.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer n=10;
Integer k;
equation
k=Ex(n);
end Ex20_40b;