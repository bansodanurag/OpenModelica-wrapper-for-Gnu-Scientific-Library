package gsl
	package polynomial
  function gsl_poly_eval
  input Real c[:];
  input Integer len;
  input Real x;
  output Real r;
  external "C" r = gsl_poly_eval(c,len,x)annotation(Library = "gsl", Library = "gslcblas");
  end gsl_poly_eval;

		
		function gsl_poly_complex_eval
		input Real c[:];
		input Integer len;
		input Complex z;
		output Real r;
		external "C" r = gsl_poly_complex_eval(c,len,z)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_complex_eval;
		
		function gsl_complex_poly_complex_eval
		input Complex c[:];
		input Integer len;
		input Complex z;
		output Real r;
		external "C" r = gsl_complex_poly_complex_eval(c,len,z)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_complex_poly_complex_eval;
		
		function gsl_poly_eval_derivs
		input Real c[:];
		input Integer lenc;
		input Real x;
		input Real res[:];
		input Integer lenres;
		output Real r;
		external "C" r = gsl_poly_eval_derivs(c,lenc,x,res,lenres)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_eval_derivs;
		
		function gsl_poly_dd_init
		input Real dd[:];
		input Real xa[:];
		input Real ya[:];
		input Integer size;
		output Real r;
		external "C" r = gsl_poly_dd_init(dd,xa,ya,size)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_dd_init;
		
		function gsl_poly_dd_eval
		input Real dd[:];
		input Real xa[:];
		input Integer size;
		input Real x;
		output Real r;
		external "C" r = gsl_poly_dd_eval(dd,xa,size,x)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_dd_eval;
		
		function gsl_poly_dd_taylor
		input Real c[:];
		input Real xp;
		input Real dd[:];
		input Real xa[:];
		input Integer size;
		input Real w[:];
		output Real r;
		external "C" r = gsl_poly_dd_taylor(c,xp,dd,xa,size,w)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_dd_taylor;
		
		function gsl_poly_dd_hermite_init
		input Real dd[:];
		input Real za[:];
		input Real xa[:];
		input Real ya[:];
		input Real dya[:];
		input Integer size;
		output Real r;
		external "C" r = gsl_poly_dd_hermite_init(dd,za,xa,ya,dya,size)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_dd_hermite_init;
		
		function gsl_poly_solve_quadratic
		input Real a;
		input Real b;
		input Real c;
		input Real x0[:];
		input Real x1[:];
		output Real r;
		external "C" r = gsl_poly_solve_quadratic(a,b,c,x0,x1)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_solve_quadratic;
		
		function gsl_poly_complex_solve_quadratic
		input Real a;
		input Real b;
		input Real c;
		input Complex z0[:];
		input Complex z1[:];
		output Real r;
		external "C" r = gsl_poly_complex_solve_quadratic(a,b,c,z0,z1)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_complex_solve_quadratic;
		
		function gsl_poly_solve_cubic
		input Real a;
		input Real b;
		input Real c;
		input Real x0[:];
		input Real x1[:];
		input Real x2[:];
		output Real r;
		external "C" r = gsl_poly_solve_cubic(a,b,c,x0,x1,x2)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_solve_cubic;
		
		function gsl_poly_complex_solve_cubic
		input Real a;
		input Real b;
		input Real c;
		input Complex z0[:];
		input Complex z1[:];
		input Complex z2[:];
		output Real r;
		external "C" r = gsl_poly_complex_solve_cubic(a,b,c,z0,z1,z2)annotation(Library = "gsl", Library = "gslcblas");
		end gsl_poly_complex_solve_cubic;
		
	end polynomial;
	package examples
		package polynomial
			model poly_eval
			parameter input Real c[:];
			parameter input Integer len;
			parameter input Real x;
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_eval(c,len,x);
			end poly_eval;
			
			model poly_complex_eval
			parameter input Real c[:];
			parameter input Integer len;
			parameter input Complex z;
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_complex_eval(c,len,z);
			end poly_complex_eval;
			
			model complex_poly_complex_eval
			parameter input Complex c[:];
			parameter input Integer len;
			parameter input Complex z;
			Real r;
			equation
			r = gsl.polynomial.gsl_complex_poly_complex_eval(c,len,z);
			end complex_poly_complex_eval;
			
			model poly_eval_derivs
			parameter input Real c[:];
			parameter input Integer lenc;
			parameter input Real x;
			parameter input Real res[:];
			parameter input Integer lenres;
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_eval_derivs(c,lenc,x,res,lenres);
			end poly_eval_derivs;
			
			model poly_dd_init
			parameter input Real dd[:];
			parameter input Real xa[:];
			parameter input Real ya[:];
			parameter input Integer size;
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_dd_init(dd,xa,ya,size);
			end poly_dd_init;
			
			model poly_dd_eval
			parameter input Real dd[:];
			parameter input Real xa[:];
			parameter input Integer size;
			parameter input Real x;
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_dd_eval(dd,xa,size,x);
			end poly_dd_eval;
			
			model poly_dd_taylor
			parameter input Real c[:];
			parameter input Real xp;
			parameter input Real dd[:];
			parameter input Real xa[:];
			parameter input Integer size;
			parameter input Real w[:];
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_dd_taylor(c,xp,dd,xa,size,w);
			end poly_dd_taylor;
			
			model poly_dd_hermite_init
			parameter input Real dd[:];
			parameter input Real za[:];
			parameter input Real xa[:];
			parameter input Real ya[:];
			parameter input Real dya[:];
			parameter input Integer size;
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_dd_hermite_init(dd,za,xa,ya,dya,size);
			end poly_dd_hermite_init;
			
			model poly_solve_quadratic
			parameter input Real a;
			parameter input Real b;
			parameter input Real c;
			parameter input Real x0[:];
			parameter input Real x1[:];
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_solve_quadratic(a,b,c,x0,x1);
			end poly_solve_quadratic;
			
			model poly_complex_solve_quadratic
			parameter input Real a;
			parameter input Real b;
			parameter input Real c;
			parameter input Complex z0[:];
			parameter input Complex z1[:];
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_complex_solve_quadratic(a,b,c,z0,z1);
			end poly_complex_solve_quadratic;
			
			model poly_solve_cubic
			parameter input Real a;
			parameter input Real b;
			parameter input Real c;
			parameter input Real x0[:];
			parameter input Real x1[:];
			parameter input Real x2[:];
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_solve_cubic(a,b,c,x0,x1,x2);
			end poly_solve_cubic;
			
			model poly_complex_solve_cubic
			parameter input Real a;
			parameter input Real b;
			parameter input Real c;
			parameter input Complex z0[:];
			parameter input Complex z1[:];
			parameter input Complex z2[:];
			Real r;
			equation
			r = gsl.polynomial.gsl_poly_complex_solve_cubic(a,b,c,z0,z1,z2);
			end poly_complex_solve_cubic;
			
		end polynomial;
	end examples;
end gsl;
