model Ex22_5a
function Ex
input Real data[5];
output Integer k;
external "C" k=stat_m(data)annotation(Include="#include\"gsl22_5a.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Real data[5] = {17.2, 18.1, 16.5, 18.3, 12.6};
Integer k;
equation
k=Ex(data);
end Ex22_5a;