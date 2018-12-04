model Ex26_3_1
function Ex
output Integer k;
external "C" k=annealing_funct()annotation(Include="#include\"gsl26_3_1.c\"",Library="gsl",Library="gslcblas");
end Ex;
Integer k;
equation
k=Ex();
end Ex26_3_1;