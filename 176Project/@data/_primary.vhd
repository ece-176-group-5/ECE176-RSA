library verilog;
use verilog.vl_types.all;
entity Data is
    port(
        data            : out    vl_logic_vector(31 downto 0);
        done            : out    vl_logic;
        data_control    : in     vl_logic_vector(2 downto 0);
        switches        : in     vl_logic_vector(17 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end Data;
