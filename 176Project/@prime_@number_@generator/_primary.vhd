library verilog;
use verilog.vl_types.all;
entity Prime_Number_Generator is
    generic(
        n               : vl_notype
    );
    port(
        p               : out    vl_logic;
        q               : out    vl_logic;
        e               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 5;
end Prime_Number_Generator;
