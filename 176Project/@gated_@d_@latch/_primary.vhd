library verilog;
use verilog.vl_types.all;
entity Gated_D_Latch is
    port(
        e_o             : out    vl_logic;
        e_i             : in     vl_logic;
        en              : in     vl_logic
    );
end Gated_D_Latch;
