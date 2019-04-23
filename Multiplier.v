module Multiplier( 
  output reg F,
  input q,
  input p,
  input Load
  );
  
  always @(posedge Load)
    F=q*p;
    
  endmodule
