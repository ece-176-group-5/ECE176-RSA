library verilog;
use verilog.vl_types.all;
entity Fast_Modular_Exponentiator is
    generic(
        base_N          : integer := 556;
        modulus_N       : integer := 556;
        exponent_N      : integer := 556
    );
    port(
        \out\           : out    vl_logic_vector;
        base            : in     vl_logic_vector;
        modulus         : in     vl_logic_vector;
        exponent        : in     vl_logic_vector;
        st              : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of base_N : constant is 1;
    attribute mti_svvh_generic_type of modulus_N : constant is 1;
    attribute mti_svvh_generic_type of exponent_N : constant is 1;
end Fast_Modular_Exponentiator;
