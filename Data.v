`include "Instructions.v"

module Data(
    output reg [55:0] data,
    output done,
    input [2:0] data_control,
    input [17:0] switches,
    input clk, reset
);

  wire [555:0] n, e, d;
  wire [555:0] encrypted, decrypted;

  Key_Generator KG(
    .n, .e, .d, .done,
    .st(data_control == `Generate),
    .clk, .reset
  );

  Fast_Modular_Exponentiator #(.base_N(18)) FME1(
    .out(encrypted),
    .modulus(n), .exponent(e), .base(switches),
    .st(data_control == `Encrypt),
    .clk, .reset
  );

  Fast_Modular_Exponentiator FME2(
    .out(decrypted),
    .modulus(n), .exponent(d), .base(encrypted),
    .st(data_control == `Decrypt),
    .clk, .reset
  );

  always @(*) begin
    if(reset) data = 0;
    else begin
      case(data_control)
        `Generate: data = e;
        `Store: data = switches;
        `Encrypt: data = encrypted;
        `Decrypt: data = decrypted;
      endcase
    end
  end
endmodule
