model Ex8_4_13b
function Ex
input Integer c[2];
output Integer z[1];
external "C"  matr_1(c,z)annotation( Include = "#include \"E1.c\""
,Library="gsl",Library="gslcblas");
end Ex;
parameter Integer [2] c={100,100};
Integer z[1];
equation
z=Ex(c);


end Ex8_4_13b;