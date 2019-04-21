module Key_Generator(
  output reg [555:0] n, e, d,
  output reg done,
  input st,
  input clk, reset
);

initial begin
  n = 143;
  e = 7;
  d = 103;
  done = 1;
end

endmodule
