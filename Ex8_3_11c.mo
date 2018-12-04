model Ex8_3_11c
function Ex
input Integer j;
output Real [10] a;
external "C" ab(j,a)annotation(Include="#include \"gsl8_3_11c.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer j=10;
Real [10] a;
equation
a=Ex(j);
end Ex8_3_11c;