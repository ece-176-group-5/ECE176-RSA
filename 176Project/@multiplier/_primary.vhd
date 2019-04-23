library verilog;
use verilog.vl_types.all;
entity Multiplier is
    generic(
        size            : integer := 4
    );
    port(
        F               : out    vl_logic_vector;
        q               : in     vl_logic_vector;
        p               : in     vl_logic_vector;
        Load            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Multiplier;
