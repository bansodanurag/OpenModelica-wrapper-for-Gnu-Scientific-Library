model Ex15_8
function Ex
input Real [:] data;
input Integer n;
output Integer k;
external "C" k=e_val_e_vec(data,n)annotation(Include="#include\"gsl15_8.c\"",Library="gsl",Library="gslcblas");
end Ex;
parameter Real [:] data={ 1.0  , 1/2.0, 1/3.0, 1/4.0,
                    1/2.0, 1/3.0, 1/4.0, 1/5.0,
                    1/3.0, 1/4.0, 1/5.0, 1/6.0,
                    1/4.0, 1/5.0, 1/6.0, 1/7.0 };
                    
parameter Integer n=4;
Integer k;
equation
k=Ex(data,n);

end Ex15_8;