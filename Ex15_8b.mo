model Ex15_8b
function Ex
input Real [16] data;
input Integer n;
output Integer k;
external "C" k=non_symm_e(data,n)annotation(Include="#include\"gsl15_8b.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Real [16] data={ -1.0, 1.0, -1.0, 1.0,
                    -8.0, 4.0, -2.0, 1.0,
                    27.0, 9.0, 3.0, 1.0,
                    64.0, 16.0, 4.0, 1.0 };
parameter Integer n=4;
Integer k;
equation
k=Ex(data,n);

end Ex15_8b;