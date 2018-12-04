model aplb
function aplusb
    input Real a,b;
    
    output Real  c;
    
  
    external "C"  annotation(Library = "aplusb");
  end aplusb;

  parameter Real a=5.0,b=4.0;
  Real  c;
  
equation
 c  = aplusb(a,b);
end aplb;