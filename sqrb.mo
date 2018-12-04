model sqrb
function sq_root
    input Real a;
    
    output Real  c;
    
  
    external "C"  annotation(Library = "sq_root");
  end sq_root;

  parameter Real a=5.0;
  Real  c;
  
equation
 c  = sq_root(a);

end sqrb;