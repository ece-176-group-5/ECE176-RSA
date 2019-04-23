library verilog;
use verilog.vl_types.all;
entity Comparator is
    port(
        F               : out    vl_logic;
        L               : in     vl_logic;
        e               : in     vl_logic
    );
end Comparator;
