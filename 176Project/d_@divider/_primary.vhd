library verilog;
use verilog.vl_types.all;
entity d_Divider is
    generic(
        k               : integer := 2
    );
    port(
        d               : out    vl_logic;
        e               : in     vl_logic;
        L               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of k : constant is 1;
end d_Divider;
