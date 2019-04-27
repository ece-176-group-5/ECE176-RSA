library verilog;
use verilog.vl_types.all;
entity Top_Module is
    port(
        HEX             : out    vl_logic_vector(63 downto 0);
        KEY             : in     vl_logic_vector(3 downto 0);
        SW              : in     vl_logic_vector(17 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end Top_Module;
