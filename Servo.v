// 舵机控制模块
module Servo
#(parameter sd=111)(
	input clk_10m,
	input [2:0] dir,
	output wire pwm_out
);

reg[10:0] duty_cycle;
reg PWM_R;
reg[15:0] counter=0;
assign pwm_out=PWM_R;
 
always@ (posedge clk_10m)
begin
	counter <= counter + 1;
		if (counter <= duty_cycle * sd)	//设置PWM为1的时间间隔
			PWM_R <= 1;
		else
			PWM_R <= 0;
		if (counter >= 50000)
			counter <= 16'd0;		//PWM周期为5ms，一旦计数到50000自动清零
end
	
always@ (posedge clk_10m)
begin
	case(dir)
	3'b000:duty_cycle <= 65;
	3'b001:duty_cycle <= 80;
	3'b010:duty_cycle <= 105;
	3'b011:duty_cycle <= 125;
	3'b100:duty_cycle <= 135;
	3'b101:duty_cycle <= 150;
	3'b110:duty_cycle <= 175;
	endcase
end
endmodule
