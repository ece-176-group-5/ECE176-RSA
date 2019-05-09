module Comparator(G, L, e_w);
  
  parameter size = 4;
  output G;
  input [((size*2)-1):0]L;
  input [(size-1):0]e_w;
 
 assign G=(e_w<L);

endmodule