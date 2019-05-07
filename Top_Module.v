module Top_Module(
  output [63:0] HEX,
  output [31:0] data,
  input [3:0] KEY,
  input [17:0] SW,
  input clk, reset
);

  wire [2:0] data_control;
  wire done;

  Controller CTR(.data_control, .keys(KEY), .clk, .reset);
  Data DAT(.data, .switches(SW), .data_control, .done, .clk, .reset);

  genvar i;
  generate
    for(i = 1; i <= 8; i=i+1)
      Seven_Segment_Decoder SSD(.out(HEX[(i*8-1):(8*(i-1))]), .data(data[(i*4-1):4*(i-1)])); //.out(HEX[7:0]), .out(HEX[15:8]), .out(HEX[23:16]), .out(HEX[31:24])...
  endgenerate

endmodule
