library verilog;
use verilog.vl_types.all;
entity State_Machine_Key_Generator is
    port(
        Load            : out    vl_logic;
        st              : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        done            : in     vl_logic
    );
end State_Machine_Key_Generator;
