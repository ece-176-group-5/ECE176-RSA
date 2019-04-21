module Fast_Modular_Exponentiator(out, base, modulus, exponent, st, clk, reset);
  parameter base_N = 556;
  parameter modulus_N = 556;
  parameter exponent_N = 556;

  output [modulus_N-1:0] out;
  input [base_N-1:0] base;
  input [modulus_N-1:0] modulus;
  input [exponent_N-1:0] exponent;
  input st, clk, reset;

  assign out = (base ** exponent) % modulus;

endmodule
