model Ex21_10b
function Ex
input Real [5] data;
output Integer k;
external "C" k=stat_m(data)annotation(Include ="#include\"gsl21_10b.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Real data[5]={17.2, 18.1, 16.5, 18.3, 12.6};
Integer k;
equation
k=Ex(data);
end Ex21_10b;