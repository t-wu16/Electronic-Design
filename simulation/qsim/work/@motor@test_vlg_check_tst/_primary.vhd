library verilog;
use verilog.vl_types.all;
entity MotorTest_vlg_check_tst is
    port(
        pin1            : in     vl_logic;
        pin2            : in     vl_logic;
        pin_name1       : in     vl_logic;
        pin_name2       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MotorTest_vlg_check_tst;
