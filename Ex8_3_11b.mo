model Ex8_3_11b
function Ex
input Integer j;
output Integer k;
external "C" k=vector1(j)annotation( Include="#include \"gsl8_3_11b.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer j=100;
Integer k;
equation
k=Ex(j);
end Ex8_3_11b;