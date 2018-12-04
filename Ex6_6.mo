 // this model finds the roots of polynomial 
model Ex6_6
      parameter Real a[:]={-1,0,0,0,0,1};//coeff of polynomial x^5-1
      Real z[size(a,1)*2-2];
      Complex y_final[size(a,1)-1];//roots of polynomial
      parameter Integer d=size(a,1)-1;//number of roots
      
      equation
      
      z=Ex6_6f( a);//calling the function poly_eval to calculate the roots which in turn calls gsl function
      
      algorithm
      for i in 1:d loop
      y_final[i].re:=z[2*i-1];// real part of the root
      y_final[i].im:=z[2*i];//imaginary part of the root
      end for;
      
end Ex6_6;