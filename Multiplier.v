module Multiplier(F, q, p, Load);
  
  parameter size =4;
  output reg [((size*2)-1):0]F;
  input [(size-1):0]q;
  input [(size-1):0]p;
  input Load;
  
  always @(*) begin
    F=q*p;
//    $display("p=%d, q=%d", p, q); // Used for Testing
  end
    
  endmodule
