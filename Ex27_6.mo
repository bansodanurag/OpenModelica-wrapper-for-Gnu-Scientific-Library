model Ex27_6

function Ex
output Real ya[100,3];


external "C" ordinary_diff_eq( ya)annotation(Include="#include\"gsl27_6.c\"",Library="gsl",Library="gslcblas");
end Ex;
Real ya[100,3];
equation
ya=Ex();
end Ex27_6;