model aplusrootb
function aplusb
    input Real a,b;
    
    output Real  c;
    
  
    external "C"  annotation(Library = "aplusb");
  end aplusb;
  
  function sq_root
    input Real b;
    
    output Real  d;
    
  
    external "C"  annotation(Library = "sq_root");
  end sq_root;
  
  parameter Real a=5.0,b=4.0;
  Real  c,d;
  
equation
d=sq_root(b);
 c  = aplusb(a,d);
end aplusrootb;