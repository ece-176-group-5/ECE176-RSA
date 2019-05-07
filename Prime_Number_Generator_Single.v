module Prime_Number_Generator_Single(d_possible, clk);

parameter n = 512;  // Limit for a prime number
parameter m = 5;    // How many bits the value needs

output reg [(2*m)-1:0] d_possible;

input clk;            // Added clk
//input [((m*2)-1):0]L;
integer k=0;          // Holder variable

reg [255:0] primes [31:0];

integer file_data;
integer file;
integer scanner;
integer i;

initial begin
  file = $fopen("C:/Users/Daniel/Documents/GitHub/ECE176-RSA/100_primes.txt", "r");
  for(i = 0; i < 256; i = i + 1) begin
    scanner = $fscanf(file, "%d\n", file_data);
    if (!$feof(file)) begin
      primes[i] = file_data;
    end
  end
  $fclose(file);
end

// Output random prime numbers
always @(posedge clk) begin
  if(primes[k]>0)
    d_possible=primes[k];

    k=k+1;
    if(k==(255+1))  k=0;

end // always block

endmodule
