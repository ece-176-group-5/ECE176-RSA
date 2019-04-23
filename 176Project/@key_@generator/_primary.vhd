library verilog;
use verilog.vl_types.all;
entity Key_Generator is
    port(
        n               : out    vl_logic_vector(555 downto 0);
        e               : out    vl_logic_vector(555 downto 0);
        d               : out    vl_logic_vector(555 downto 0);
        done            : out    vl_logic;
        st              : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end Key_Generator;
