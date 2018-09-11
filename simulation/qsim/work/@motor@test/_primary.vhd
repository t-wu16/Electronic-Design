library verilog;
use verilog.vl_types.all;
entity MotorTest is
    port(
        pin1            : out    vl_logic;
        clk             : in     vl_logic;
        choose1         : in     vl_logic;
        choose0         : in     vl_logic;
        speed1          : in     vl_logic;
        speed0          : in     vl_logic;
        pin2            : out    vl_logic;
        pin_name1       : out    vl_logic;
        pin_name2       : out    vl_logic
    );
end MotorTest;
