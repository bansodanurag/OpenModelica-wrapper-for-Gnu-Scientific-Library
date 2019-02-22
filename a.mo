package gsl
  package data_types
    model gsl_permutation
      extends ExternalObject;

      function constructor
        input Integer N;
        output gsl_permutation p;
      
        external "C" p = gsl_permutation_alloc(N) annotation(
          Include = "#include <gsl/gsl_permutation.h>",
          Library = "gsl",
          Library = "gslcblas");
      end constructor;

      function destructor "Release storage of p"
        input gsl_permutation p;
      
        external "C" gsl_permutation_free(p) annotation(
          Include = "#include <gsl/gsl_permutation.h>",
          Library = "gsl",
          Library = "gslcblas");
      end destructor;
    end gsl_permutation;

    model gsl_rng_type
      extends ExternalObject;

      function constructor
        output gsl_rng_type T;
      
        external "C"  annotation(
          Include = "#include<gsl/gsl_rng.h>",
          Include = "#include<gsl/gsl_randist.h>",
          Library = "gsl",
          Library = "gslcblas");
      end constructor;

      function destructor
        input gsl_rng_type T;
      
        external "C"  annotation(
          Include = "#include <gsl/gsl_rng.h>",
          Include = "#include <gsl/gsl_randist.h>",
          Library = "gsl",
          Library = "gslcblas");
      end destructor;
    end gsl_rng_type;

    model gsl_rng
      extends ExternalObject;

      function constructor
        input gsl_rng_type gsl_rng_default;
        output gsl_rng r;
      
        external "C" r = gsl_rng_alloc(gsl_rng_default) annotation(
          Include = "#include <gsl/gsl_rng.h>",
          Include = "#include <gsl/gsl_randist.h>",
          Library = "gsl",
          Library = "gslcblas");
      end constructor;

      function destructor "Release storage of p"
        input gsl_rng r;
      
        external "C" gsl_rng_free(r) annotation(
          Include = "#include <gsl/gsl_rng.h>",
          Include = "#include <gsl/gsl_randist.h>",
          Library = "gsl",
          Library = "gslcblas");
      end destructor;
    end gsl_rng;
  end data_types;

  package mathematical
    function gsl_log1p
      //This function computes the value of log(1 + x) in a way that is accurate for small x
      input Real x;
      output Real y;
    
      external "C" y = log1p(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_log1p;

    function gsl_expm1
      //this function computes the value of exp(x)-1
      input Real x;
      output Real y;
    
      external "C" y = gsl_expm1(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_expm1;

    function gsl_hypot
      //this function computes the value of sqrt(x^2+y^2) in a way which avoids overflow
      input Real x;
      input Real y;
      output Real z;
    
      external "C" z = gsl_hypot(x, y) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_hypot;

    function gsl_hypot3
      //This function calculates the value of sqrt(x^2+y^2+z^2)
      input Real x;
      input Real y;
      input Real z;
      output Real o;
    
      external "C" o = gsl_hypot3(x, y, z) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_hypot3;

    function gsl_acosh
      // this function calculates the value of arccosh(x)
      input Real x;
      output Real y;
    
      external "C" y = acosh(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_acosh;

    function gsl_asinh
      // this function calculates the value of arcsinh(x)
      input Real x;
      output Real y;
    
      external "C" y = asinh(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_asinh;

    function gsl_atanh
      // this function calculates the value of arctanh(x)
      input Real x;
      output Real y;
    
      external "C" y = atanh(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_atanh;

    function gsl_ldexp
      //this function computes the value of x*2^e
      input Real x;
      // y should be given the value e
      output Real z;
    protected
      constant Real y = Modelica.Constants.e;
    
      external "C" z = gsl_ldexp(x, y) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end gsl_ldexp;

    function gsl_frexp
      //This function splits the number x into its normalized fraction f and exponent e, such that x = f ∗ 2^e
      //   and 0.5 <= f < 1. The function returns f and stores the exponent in e.
      input Real x;
      output Integer e;
      // it stores the exponent in y
      output Real z;
    
      external "C" z = gsl_frexp(x, e) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_frexp;

    function gsl_pow_int
      //this function computes x^n
      input Real x;
      input Integer n;
      output Real y;
    
      external "C" y = gsl_pow_int(x, n) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_int;

    function gsl_pow_2
      //This function calculates square fo the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_2(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_2;

    function gsl_pow_3
      //This function calculates cube of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_3(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_3;

    function gsl_pow_4
      //This function calculates number to the power of 4 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_4(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_4;

    function gsl_pow_5
      //This function calculates number to the power of 5 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_5(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_5;

    function gsl_pow_6
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_6(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_6;

    function gsl_pow_7
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_7(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_7;

    function gsl_pow_8
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_8(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_8;

    function gsl_pow_9
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_9(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_9;

    function GSL_SIGN
      //This function outputs -1 for negative number and +1 if the number is positive
      input Real x;
      output Integer y;
    
      external "C" y = GSL_SIGN(x) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_SIGN;

    function GSL_IS_ODD
      //This function outputs 1 if number is odd else if number is even it returns zero
      input Integer x;
      output Integer y;
    
      external "C" y = GSL_IS_ODD(x) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_IS_ODD;

    function GSL_IS_EVEN
      //This function outputs 0 if number is odd else if number is even it returns 1
      input Integer x;
      output Integer y;
    
      external "C" y = GSL_IS_EVEN(x) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_IS_EVEN;

    function GSL_MAX
      //  This function calculates the maximum of two numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX(a, b) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX;

    function GSL_MAX_DBL
      //  This function calculates the maximum of the given two floating point numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX_DBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX_DBL;

    function GSL_MIN_DBL
      //This function calculates the minimum of two given floating point numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MIN_DBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MIN_DBL;

    function GSL_MAX_INT
      //  This function calculates the maximum of two given integers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX_INT(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX_INT;

    function GSL_MIN_INT
      //  This function calculates the minimum of the two numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MIN_INT(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MIN_INT;

    function GSL_MAX_LDBL
      //  This function calculates the maximum of two long double numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX_LDBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX_LDBL;

    function GSL_MIN_LDBL
      //  This function calculates the minimum of two long double numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MIN_LDBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MIN_LDBL;

    function gsl_fcmp
      //This function determines whether x and y are approximately equal if they are equal within the range of epsilon it returns zero,if a>b it returns -1 and if b<a it returns 1
      input Real a;
      input Real b;
      output Real c;
    protected
      constant Real z = Modelica.Constants.eps;
    
      external "C" c = gsl_fcmp(a, b, z) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end gsl_fcmp;

    /**/
  end mathematical;

  package Permutation
    function gsl_permutation_init
      input gsl.data_types.gsl_permutation p;
    
      external "C" gsl_permutation_init(p) annotation(
        Include = "#include <gsl/gsl_permutation.h>",
        Library = "gsl",
        Library = "gslcblas");
    end gsl_permutation_init;

    function gsl_permutation_get
      input gsl.data_types.gsl_permutation p;
      input Integer i;
      output Integer y;
    
      external "C" y = gsl_permutation_get(p, i) annotation(
        Include = "#include <gsl/gsl_permutation.h>",
        Library = "gsl",
        Library = "gslcblas");
    end gsl_permutation_get;

    function gsl_ran_shuffle
      input gsl.data_types.gsl_rng r;
      input gsl.data_types.gsl_permutation p;
      input Integer N;
    
      external "C" gsl_ran_shuffle(r, p, N, 8) annotation(
        Include = "#include <gsl/gsl_permutation.h>",
        Include = "#include <gsl/gsl_rng.h>",
        Include = "#include <gsl/gsl_randist.h>",
        Library = "gsl",
        Library = "gslcblas");
    end gsl_ran_shuffle;

    /*gsl_ran_shuffle(r, p.data, N, sizeof(size_t))*/
  end Permutation;

  package Examples
    package Mathematical
      model gsl_log1p
        //This model computes the value of log(1 + x) in a way that is accurate for small x by calling the function gsl_log1p(x)
        parameter Real x = 0.01;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_log1p(x);
      end gsl_log1p;

      model gsl_expm1
        //This model computes the value of exp(x)-1 in a way that is accurate for small x by calling the function gsl_expm1
        parameter Real x = 0.01;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_expm1(x);
      end gsl_expm1;

      model gsl_hypot
        //it calculates the value of sqrt(x^2+y^2)
        parameter Real x = 2;
        parameter Real y = 2.1;
        Real z;
      algorithm
        z := gsl.mathematical.gsl_hypot(x, y);
      end gsl_hypot;

      model gsl_hypot3
        //this example calculates the value of sqrt(x^2+y^2+z^2) by calling the function gsl_hypot3
        parameter Real x = 2.0;
        parameter Real y = 2.1;
        parameter Real z = 2.2;
        Real o;
      algorithm
        o := gsl.mathematical.gsl_hypot3(x, y, z);
      end gsl_hypot3;

      model gsl_acosh
        //this example calls gsl_acosh to calculate the inverse of cosh
        parameter Real x = 2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_acosh(x);
      end gsl_acosh;

      model gsl_asinh
        //this example calls gsl_asinh to calculate the inverse of sinh
        parameter Real x = 2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_asinh(x);
      end gsl_asinh;

      model gsl_atanh
        //this example calls gsl_atanh to calculate the inverse of tanh
        parameter Real x = 0.5;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_atanh(x);
      end gsl_atanh;

      model gsl_ldexp
        //this function computes the value of x*2^e by calling the function gsl_ldexp
        parameter Real x = 2.0;
        //  constant Real y = Modelica.Constants.e;
        // y should be given the value e
        Real z;
      algorithm
        z := gsl.mathematical.gsl_ldexp(x);
      end gsl_ldexp;

      model gsl_frexp
        //This model calls the function gsl_frexp and splits the number x into its normalized fraction f and exponent e, such that x = f ∗ 2^e
        //   and 0.5 <= f < 1. The function returns f and stores the exponent in e.
        parameter Real x = 2;
        Integer e;
        // it stores the exponent in y
        output Real z;
      algorithm
        (e, z) := gsl.mathematical.gsl_frexp(x);
      end gsl_frexp;

      model gsl_pow_int
        //this function computes x^n
        parameter Real x = 2.0;
        parameter Integer n = 2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_int(x, n);
      end gsl_pow_int;

      model gsl_pow_2
        //This function calculates square fo the given number
        parameter Real x = 2.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_2(x);
      end gsl_pow_2;

      model gsl_pow_3
        //This function calculates cube of the given number
        parameter Real x = 2.02;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_3(x);
      end gsl_pow_3;

      model gsl_pow_4
        //This function calculates number to the power of 4 of the given number
        parameter Real x = 0.02;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_4(x);
      end gsl_pow_4;

      model gsl_pow_5
        //This model calculates number to the power of 5 of the given number by calling the function gsl_pow_5(x)
        parameter Real x = 0.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_5(x);
      end gsl_pow_5;

      model gsl_pow_6
        //This model calculates number to the power of 6 of the given number by calling the the function gsl_pow_6(x)
        parameter Real x = 2.0;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_6(x);
      end gsl_pow_6;

      model gsl_pow_7
        //This function calculates number to the power of 7 by calling the function gsl_pow_7(x)
        parameter Real x = 2.0;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_7(x);
      end gsl_pow_7;

      model gsl_pow_8
        //This model calculates number to the power of 8 by calling the function gsl_pow_8
        parameter Real x = 2.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_8(x);
      end gsl_pow_8;

      model gsl_pow_9
        //This function calculates number to the power of 9 of the given number
        parameter Real x = 2.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_9(x);
      end gsl_pow_9;

      model GSL_SIGN
        //This model calculates the sign of the number by calling the function GSL_SIGN(x)
        parameter Real x = -4;
        Integer y;
      algorithm
        y := gsl.mathematical.GSL_SIGN(x);
      end GSL_SIGN;

      model GSL_IS_ODD
        //This model outputs 1 for odd number and 0 if the number is even by calling the function GSL_IS_ODD(x)
        parameter Integer x = 2;
        Real y(start = 0);
      algorithm
        y := gsl.mathematical.GSL_IS_ODD(x);
      end GSL_IS_ODD;

      model GSL_IS_EVEN
        //This model outputs 1 for odd number and 0 if the number is even by calling the function GSL_IS_EVEN(x)
        parameter Integer x = 2;
        Real y;
      algorithm
        y := gsl.mathematical.GSL_IS_EVEN(x);
      end GSL_IS_EVEN;

      model GSL_MAX
        //This model calls the function GSL_MAX(a,b) which return the maximum of a and b
        parameter Real a = 1.0;
        parameter Real b = 2.0;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX(a, b);
      end GSL_MAX;

      model GSL_MAX_DBL
        //  This model gives the maximum of two double numbers by calling the function GSL_MAX_DBL
        parameter Real a = 2.0;
        parameter Real b = 3.0;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX_DBL(a, b);
      end GSL_MAX_DBL;

      model GSL_MIN_DBL
        //  This model gives the minimum of two double numbers by calling the function GSL_MIN_DBL
        parameter Real a = 2.0;
        parameter Real b = 3.0;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MIN_DBL(a, b);
      end GSL_MIN_DBL;

      model GSL_MAX_INT
        //  This model gives the maximum of two integers by calling the function GSL_MAX_INT
        parameter Real a = 2;
        parameter Real b = 3;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX_INT(a, b);
      end GSL_MAX_INT;

      model GSL_MIN_INT
        //  This model gives the minimum of two integers by calling the function GSL_MIN_INT
        parameter Real a = 2;
        parameter Real b = 3;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MIN_INT(a, b);
      end GSL_MIN_INT;

      model GSL_MAX_LDBL
        //  This model gives the maximum of two Real numbers by calling the function GSL_MAX_LDBL
        parameter Real a = 2.00001;
        parameter Real b = 3.00001;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX_LDBL(a, b);
      end GSL_MAX_LDBL;

      model GSL_MIN_LDBL
        //  This model gives the minimum of two Real by calling the function GSL_MAX_DBL
        parameter Real a = 2.00001;
        parameter Real b = 3.00001;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MIN_LDBL(a, b);
      end GSL_MIN_LDBL;

      model gsl_fcmp
        //This model calls the function gsl_fcmp(a,b) and returns zero if they are equal in given range and -1 if a<b and +1 if a>b
        parameter Real a = 4.0;
        parameter Real b = 2.2;
        Real c;
      algorithm
        c := gsl.mathematical.gsl_fcmp(a, b);
      end gsl_fcmp;

      /**/
    end Mathematical;

    package Permutation
      /*this model initialise the permutation with 10 elements to {0,1,2,3,4,5,6,7,8,9}*/
      //this model calls the function gsl_permutation_init(p) to initialize the permutation to {0,1,2,3,4,5,6,7,8,9}
      //this model calls the function gsl_permutation_init(p) to initialize the permutation to {0,1,2,3,4,5,6,7,8,9}
      //this model calls the function gsl_permutation_init(p) to initialize the permutation to {0,1,2,3,4,,

      model gsl_per_init
        /*this model initializes the  permutation p to{0,1,2,3,4,5,6,7,8,9}*/
        parameter Integer N = 10;
        gsl.data_types.gsl_permutation p = gsl.data_types.gsl_permutation(N);
        Integer y[10];
      algorithm
        gsl.Permutation.gsl_permutation_init(p);
        for i in 1:10 loop
          y[i] := gsl.Permutation.gsl_permutation_get(p, i - 1);
        end for;
      end gsl_per_init;
    end Permutation;
  end Examples;
end gsl;