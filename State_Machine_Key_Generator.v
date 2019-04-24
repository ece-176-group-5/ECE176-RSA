module State_Machine_Key_Generator(
  output reg Load,
  input st,
  input clk,
  input reset
  );
  
  always @(posedge clk)begin
    if(reset)
      Load=0;
    else if (st)
      Load=1;
    end
    
  endmodule