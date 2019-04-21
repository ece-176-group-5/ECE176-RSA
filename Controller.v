`include "Instructions.v"

module Controller(
    output reg [2:0] data_control,
    input [3:0] keys,
    input clk, reset
);

  always @(posedge clk) begin
    if(reset == 1) begin
      data_control = `Idle;
    end
    else begin
      case(keys)
        0: data_control = `Idle;
        1: data_control = `Generate;
        2: data_control = `Store;
        4: data_control = `Encrypt;
        8: data_control = `Decrypt;
      endcase
    end
  end

endmodule
