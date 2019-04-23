library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        data_control    : out    vl_logic_vector(2 downto 0);
        keys            : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end Controller;
