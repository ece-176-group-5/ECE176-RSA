// Dont think we need clock for this one
module Fast_Modular_Exponentiator(out, base, modulus, exponent, st, clk, reset);
  parameter base_N = 556;
  parameter modulus_N = 556;
  parameter exponent_N = 556;

  output reg[modulus_N-1:0] out;
  input [base_N-1:0] base;
  input [modulus_N-1:0] modulus;
  input [exponent_N-1:0] exponent;
  input st, clk, reset;
  
  
  
  reg [base_N-1:0]base_r;
  reg [exponent_N-1:0]exponent_r; 

always @(posedge st, negedge reset) begin
  if(st) begin
    
    out=1;
    base_r=base;
    exponent_r=exponent;
    
while(exponent_r>0) begin    
    if(exponent_r&1)
      out=(out*base_r)%modulus;
      
    exponent_r=exponent_r/2;
    base_r=(base_r*base_r)% modulus;
  end // end while loop
end // end if statement
else
  out=0;
end // end always block  
endmodule
