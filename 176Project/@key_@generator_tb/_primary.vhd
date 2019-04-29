library verilog;
use verilog.vl_types.all;
entity Key_Generator_tb is
    generic(
        size            : integer := 55
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Key_Generator_tb;
