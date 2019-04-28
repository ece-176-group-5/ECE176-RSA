library verilog;
use verilog.vl_types.all;
entity Fast_Modular_Exponentiator_tb is
    generic(
        base_N          : integer := 556;
        modulus_N       : integer := 556;
        exponent_N      : integer := 556
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of base_N : constant is 1;
    attribute mti_svvh_generic_type of modulus_N : constant is 1;
    attribute mti_svvh_generic_type of exponent_N : constant is 1;
end Fast_Modular_Exponentiator_tb;
