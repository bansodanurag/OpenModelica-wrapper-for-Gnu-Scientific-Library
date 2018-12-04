model Ex16_3
function Ex
output Integer k;
external "C" k=FFT_OF_SHORT_PULSE()annotation(Include="#include\"gsl16_3.c\"",Library="gsl",Library="gslcblas");
end Ex;
Integer k;
equation
k=Ex();
end Ex16_3;