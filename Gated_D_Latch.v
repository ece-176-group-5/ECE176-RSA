module Gated_D_Latch(
  output e_o,
  input e_i,
  input en
  );
  
  assign e_o = en? e_i:1'bZ;
  
endmodule