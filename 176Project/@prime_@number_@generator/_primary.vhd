library verilog;
use verilog.vl_types.all;
entity Prime_Number_Generator is
    generic(
        n               : integer := 20;
        m               : integer := 5
    );
    port(
        p               : out    vl_logic_vector;
        q               : out    vl_logic_vector;
        e_w             : out    vl_logic_vector;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of m : constant is 1;
end Prime_Number_Generator;
