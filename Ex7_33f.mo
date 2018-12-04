function Ex7_33f
input Real x;
output String [:] status1;
output Real [:] res_plus_err;
external "C" besse_l(x,status1,size(status1,1),res_plus_err,size(res_plus_err,1))annotation(
      Include = "#include\"Ex7_331.c\"" ,Library = "gsl",
      Library = "gslcblas");
      end Ex7_33f;