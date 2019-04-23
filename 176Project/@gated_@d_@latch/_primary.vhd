library verilog;
use verilog.vl_types.all;
entity Gated_D_Latch is
    generic(
        size            : integer := 4
    );
    port(
        e_o             : out    vl_logic_vector;
        e_i             : in     vl_logic_vector;
        en              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Gated_D_Latch;
