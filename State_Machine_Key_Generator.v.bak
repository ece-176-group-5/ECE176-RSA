module State_Machine_Key_Generator(
  output reg Load,
  input st,
  input clk,
  input reset,
  input done
  );
  
  reg start;
  
  always @(posedge st, negedge reset)
    start=st;
  
  always @(posedge clk)begin
    if(reset||done)begin
      Load=0;
      start=0;
    end
    else if (start)
      Load=1;
    end
    
  endmodule