function poly_eval
input  Real [:] a;
output Real [size(a,1)*2-2] z;
external "C" poly_fn( a,size(a,1),z)annotation(
      Include = "#include\"Ex6_61.c\"" ,Library = "gsl",
      Library = "gslcblas");
      end poly_eval;