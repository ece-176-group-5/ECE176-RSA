library verilog;
use verilog.vl_types.all;
entity Output_Comparator is
    generic(
        size            : integer := 4
    );
    port(
        done            : out    vl_logic;
        n               : out    vl_logic_vector;
        e               : out    vl_logic_vector;
        d               : out    vl_logic_vector;
        Load            : in     vl_logic;
        n_w             : in     vl_logic_vector;
        e_w             : in     vl_logic_vector;
        d_w             : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Output_Comparator;
