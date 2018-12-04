model Ex14_20
function Ex
input Real [:] a_data;
input Real [:] b_data;
input Integer n;
output Integer k;
external "C" k=sol_ax_b(a_data,b_data,n)annotation(Include="#include\"gsl14_20.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Real [:] a_data = { 0.18, 0.60, 0.57, 0.96,
                      0.41, 0.24, 0.99, 0.58,
                      0.14, 0.30, 0.97, 0.66,
                      0.51, 0.13, 0.19, 0.85 };

 parameter Real [4] b_data = { 1.0, 2.0, 3.0, 4.0 };
 Integer n=4;
 Real k;
 equation
 k=Ex( a_data,b_data,n);

end Ex14_20;