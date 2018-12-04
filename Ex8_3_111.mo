model Ex8_3_111
function Ex
input Integer j;
output Real a[3];
external "C" vector1(j,a)annotation(Include="#include \"gsl8_3_11.c\"",Library="gsl",Library="gslcblas");
end Ex;

parameter Integer j=3;
Real [3] a;
equation
a=Ex(j);
end Ex8_3_111;
