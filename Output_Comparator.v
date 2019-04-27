// System needs to be sure that the outputs are non-zero
// Once requirements are met, send done signal to state machine to stop further outputs
module Output_Comparator(done, n, e, d, Load, n_w, e_w, d_w);
parameter size=4;
 output reg done;
 output reg [(size-1):0]e;
 output reg [(2*size-1):0]n, d;
 input Load;
 input [(size-1):0]e_w;
 input [(2*size-1):0]n_w, d_w;
 
 always @* begin
  if(n_w&e_w&d_w !=0 & Load ==1 & ~(done))begin
    done =1;
    n=n_w;
    e=e_w;
    d=d_w;
    $display("n=%d, e=%d, d=%d", n, e, d);
  end
 else if(Load==0) begin
    n=0;
    e=0;
    d=0;
    done=0;
  end
  
  else
    done=0;
  end
  
endmodule