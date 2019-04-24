`timescale 1ns/1ns

module RSA_TB;
  wire [63:0] HEX;
  reg [3:0] KEY;
  reg [17:0] SW;
  reg clk, reset;

  Top_Module M1 (
    .HEX,
    .KEY, .SW,
    .clk, .reset
  );

  initial begin
    {KEY, SW} = 0;
    clk = 0;
    reset = 1;
    #10
    reset = 0;
    #20
    KEY = 2;
    SW = 3;
    #10
    KEY = 4;
    #10
    KEY = 8;
  end

  always #5 clk = ~clk;

endmodule
