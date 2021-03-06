// Subtracts 1 from 2 inputted prime numbers
module Subtractor_2_input(p_sub, q_sub, p, q);
  
  parameter size=4;
  output [(size-1):0]p_sub;
  output [(size-1):0]q_sub;
  input [(size-1):0]p;
  input [(size-1):0]q;
  
  assign p_sub=p-1;
  assign q_sub=q-1;
endmodule
