model Ex16_4
function Ex
input Integer n;
output Real  data[2*n];
external "C"FFT_mixed__radix_algo(n,data)annotation(Include="#include\"gsl16_4.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer n=630;
Real data[2*n];
equation
data=Ex(n);
end Ex16_4;