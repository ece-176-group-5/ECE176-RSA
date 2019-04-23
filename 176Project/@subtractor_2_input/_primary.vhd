library verilog;
use verilog.vl_types.all;
entity Subtractor_2_input is
    port(
        p_sub           : out    vl_logic;
        q_sub           : out    vl_logic;
        p               : in     vl_logic;
        q               : in     vl_logic
    );
end Subtractor_2_input;
