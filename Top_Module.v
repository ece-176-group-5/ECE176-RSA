module Top_Module(
  output [31:0] HEX,
  input [3:0] KEY,
  input [17:0] SW,
  input clk, reset
);

  wire [2:0] data_control;
  wire [55:0] data;
  wire done;

  Controller CTR(.data_control, .keys(KEY), .clk, .reset);
  Data DAT(.data, .switches(SW), .data_control, .done, .clk, .reset);
  Seven_Segment_Decoder SSD(.out(HEX), .data);

endmodule
