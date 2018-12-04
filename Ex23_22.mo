model Ex23_22
function Ex
output Integer k;
external "C" k=Two_D_histo()annotation(Include="#include\"gsl23_22.c\"",Library="gsl",Library="gslcblas");
end Ex;
Integer k;
equation
k=Ex();
end Ex23_22;