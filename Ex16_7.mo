model Ex16_7
function Ex
input Integer n=100;
output Real data[n];
external "C" fft_filtered_version_square_pulse(n,data)annotation(Include="#include\"gsl16_7.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Integer n=100;
Real data[n];
equation
data=Ex(n);
end Ex16_7;