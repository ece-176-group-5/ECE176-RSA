module Key_Generator(n, e, d, done, st, clk, reset);
  
  output reg done;
  input st;
  input clk, reset;

  parameter size = 4;

  output [(size-1):0] e;
  output [((size*2)-1):0] n, d;
  wire Load, G;
  wire [size-1:0] p, q, e_w, p_sub, q_sub, n_w;
  wire [((size*2)-1):0] F, L;
  
State_Machine_Key_Generator b1(.Load, .st, .clk, .reset);

Prime_Number_Generator #(.m(size)) b2(.p, .q, .e(e_w), .clk);

Subtractor_2_input #(.size(size)) b3(.p_sub, .q_sub, .p, .q);

Multiplier #(.size(size)) b4(.F(n), .q, .p, .Load); //outputs n 

Multiplier #(.size(size)) b5(.F(L), .q(q_sub), .p(p_sub), .Load);

Comparator #(.size(size)) b6(.G, .e(e_w), .L);

Gated_D_Latch #(.size(size)) b7(.e_o(e), .e_i(e_w), .en(G)); //outputs e

d_Divider #(.size(size)) b8(.d, .e, .L); // outputs d

always @* begin
  if(n&e&d !=0)
    done =1;
  end
  


/*
initial begin
  n = 143;
  e = 7;
  d = 103;
  done = 1;
end
*/

endmodule
