module Comparator(
  output F,
  input L,
  input e
  );
  
assign F=(e<L);

endmodule