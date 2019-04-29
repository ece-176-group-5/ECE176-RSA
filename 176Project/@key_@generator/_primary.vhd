library verilog;
use verilog.vl_types.all;
entity Key_Generator is
    generic(
        size            : integer := 8
    );
    port(
        n               : out    vl_logic_vector;
        e               : out    vl_logic_vector;
        d               : out    vl_logic_vector;
        done            : out    vl_logic;
        st              : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Key_Generator;
