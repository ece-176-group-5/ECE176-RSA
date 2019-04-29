library verilog;
use verilog.vl_types.all;
entity d_Divider is
    generic(
        size            : integer := 4;
        k               : integer := 4
    );
    port(
        d_w             : out    vl_logic_vector;
        d_possible      : in     vl_logic_vector;
        e               : in     vl_logic_vector;
        L               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
    attribute mti_svvh_generic_type of k : constant is 1;
end d_Divider;
