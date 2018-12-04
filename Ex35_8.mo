model Ex35_8
function Ex
output Real ab[7,6];
external "C" mimm(ab)annotation(Include="#include\"gsl35_8.c\"",Library="gsl",Library="gslcblas");
end Ex;
Real ab[7,6];
equation
ab=Ex();
end Ex35_8;