// Ended up not needing "n" based off of the block diagram
module d_Divider(
  output d,
  input e,
  input L
  );
  
  parameter k=2;  //Can assign k as any integer so long as its smaller than L
  
  assign d=((k*L)+1)/e;
  
endmodule