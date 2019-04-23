library verilog;
use verilog.vl_types.all;
entity Comparator is
    generic(
        size            : integer := 4
    );
    port(
        G               : out    vl_logic;
        L               : in     vl_logic_vector;
        e               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Comparator;
