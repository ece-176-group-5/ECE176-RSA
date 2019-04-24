module Comparator(G, L, e);
  
  parameter size = 4;
  output G;
  input [((size*2)-1):0]L;
  input [(size-1):0]e;
  
assign G=(e<L);

endmodule