module Comparator(G, L, e_w);
  
  parameter size = 4;
  output G;
  input [((size*2)-1):0]L;
  input [(size-1):0]e_w;
 // wire [size-1:0] filler =0;
  //wire [(size*2)-1:0] holder ={filler,e_w};
  
  //assign filler=filler + e_w;
  
 // assign G=(holder<L);
 
 assign G=(e_w<L);

endmodule