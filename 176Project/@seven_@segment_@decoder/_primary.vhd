library verilog;
use verilog.vl_types.all;
entity Seven_Segment_Decoder is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        data            : in     vl_logic_vector(3 downto 0)
    );
end Seven_Segment_Decoder;
