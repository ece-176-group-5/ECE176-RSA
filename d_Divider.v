module d_Divider(d_w, d_possible, e, L);
  
  parameter size =4;
  output reg [((size*2)-1):0]d_w;
  input [((2*size)-1):0]d_possible;
  input [((size*2)-1):0]L;
  input [(size-1):0]e;
    
  parameter k=4;  //Can assign k as any integer so long as its smaller than L
  
  always @(*) begin
    if((d_possible*e) % L == 1)
      d_w = d_possible;
    else
      d_w=0;
    end
      
endmodule