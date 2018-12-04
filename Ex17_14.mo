model Ex17_14
function Ex
input Real expected;
input Real alpha;
output Integer k;
external "C" k=NU_IN(expected,alpha)annotation(Include="#include\"gsl17_14.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Real expected=-4.0;
parameter Real alpha=1.0;
Integer k;
equation
k=Ex(expected,alpha);
end Ex17_14;