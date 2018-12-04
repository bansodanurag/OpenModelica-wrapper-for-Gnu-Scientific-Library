model complex_poly


function poly_root

input Real[:] a;
output Real [size(a,1)*2-2] y;

 external poly_roots(a,size(a,1),y,size(y,1) ) annotation( Include = "#include\"p3.c\"", Library={"gsl","gslcblas"});

end poly_root;
parameter Real a[6] = { -1, 0, 0, 0, 0, 1 };
parameter Integer size_y = size(a,1)-1;
Real y[size_y*2];//Every other element of y indlicates a new variable. Complex data type can be used to make records here.
Complex y_final[size_y];
equation
y =poly_root(a);
algorithm
for i in 1:size_y loop
  y_final[i].re :=y[2*i - 1];
  y_final[i].im :=y[2*i];
end for;


end complex_poly;