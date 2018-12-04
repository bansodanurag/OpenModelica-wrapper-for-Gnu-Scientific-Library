model Ex25_5
  function Ex
    output Integer k;
  
    external "C" k = monte_carlo_integ() annotation(
      Include = "#include\"gsl25_5.c\"",
      Library = "gsl",
      Library = "gslcblas");
  end Ex;

  Integer k;
equation
  k = Ex();
  end Ex25_5;