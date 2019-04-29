module Key_Generator(n, e, d, done, st, clk, reset);
  
  output done;
  input st;
  input clk, reset;

  parameter size = 8;

  output [(size-1):0] e;
  output [((size*2)-1):0] n, d;
  wire Load, G;
  wire [size-1:0] p, q, p_sub, q_sub, e_w, e_possible;
  wire [((size*2)-1):0] L, n_w, d_w, d_possible; // removed F
  
State_Machine_Key_Generator b1(.Load, .st, .clk, .reset, .done);

Prime_Number_Generator #(.m(size)) b2(.p, .q, .e_w, .clk);

Subtractor_2_input #(.size(size)) b3(.p_sub, .q_sub, .p, .q);

Multiplier #(.size(size)) b4(.F(n_w), .q, .p, .Load); //outputs n_w, possible n value 

Multiplier #(.size(size)) b5(.F(L), .q(q_sub), .p(p_sub), .Load);

Comparator #(.size(size)) b6(.G, .L, .e_w);

Gated_D_Latch #(.size(size)) b7(.e_o(e_possible), .e_i(e_w), .en(G)); //outputs e_w, possible e value

Prime_Number_Generator_Single #(.m(size)) b8(.d_possible, .clk);

d_Divider #(.size(size)) b9(.d_w, .e(e_w), .L, .d_possible); // outputs d_w, possible d value

Output_Comparator#(.size(size)) b10(.done, .n, .e, .d, .Load, .n_w, .e_w(e_possible), .d_w);

/*always @* begin
  if(n&e&d !=0 & Load ==1)begin
    done =1;
    $display("n=%d, e=%d, d=%d", n, e, d);
  end
  else
    done=0;
  end
  
*/

/*
initial begin
  n = 143;
  e = 7;
  d = 103;
  done = 1;
end
*/

endmodule
