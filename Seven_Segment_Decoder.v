module Seven_Segment_Decoder(
  output [31:0] out,
  input [55:0] data
);

  assign out = data[31:0];

endmodule
