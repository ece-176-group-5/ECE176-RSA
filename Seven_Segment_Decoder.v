module Seven_Segment_Decoder(
  output reg [7:0] out,
  input [3:0] data
);

  always @(*) begin
    case(data)
      0: out = 8'b00111111;
      1: out = 8'b00000110;
      2: out = 8'b01011011;
      3: out = 8'b01001111;
      4: out = 8'b01100110;
      5: out = 8'b01101101;
      6: out = 8'b01111101;
      7: out = 8'b00000111;
      8: out = 8'b01111111;
      9: out = 8'b01101111;
      10: out = 8'b01110111;
      11: out = 8'b01111100;
      12: out = 8'b00111001;
      13: out = 8'b01011110;
      14: out = 8'b01111001;
      15: out = 8'b01110001;
      default: out = 8'b00000000;
    endcase
  end

endmodule
