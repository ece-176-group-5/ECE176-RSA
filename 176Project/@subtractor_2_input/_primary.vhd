library verilog;
use verilog.vl_types.all;
entity Subtractor_2_input is
    generic(
        size            : integer := 4
    );
    port(
        p_sub           : out    vl_logic_vector;
        q_sub           : out    vl_logic_vector;
        p               : in     vl_logic_vector;
        q               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Subtractor_2_input;
