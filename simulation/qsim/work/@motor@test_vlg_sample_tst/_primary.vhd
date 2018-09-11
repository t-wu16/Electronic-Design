library verilog;
use verilog.vl_types.all;
entity MotorTest_vlg_sample_tst is
    port(
        choose0         : in     vl_logic;
        choose1         : in     vl_logic;
        clk             : in     vl_logic;
        speed0          : in     vl_logic;
        speed1          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MotorTest_vlg_sample_tst;
