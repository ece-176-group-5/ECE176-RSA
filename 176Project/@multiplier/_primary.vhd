library verilog;
use verilog.vl_types.all;
entity Multiplier is
    port(
        F               : out    vl_logic;
        q               : in     vl_logic;
        p               : in     vl_logic;
        Load            : in     vl_logic
    );
end Multiplier;
