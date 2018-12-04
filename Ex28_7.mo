model Ex28_7
function Ex
output Real ya[920];
external "C"oneD_interpol_spline(ya)annotation(Include="#include\"gsl28_7.c\"",Library="gsl",Library="gslcblas");
end Ex;
Real ya[920];
Real x[10],y[10],xa[920];
//Integer k(start=0);
equation
ya=Ex();
 for i in 1:10 loop
    
      x[i] = i + 0.5 * sin (i);
      y[i] = i + cos (i * i);
end for;
for i in 1:920 loop
xa[i]=i*.01;
end for;
end Ex28_7;