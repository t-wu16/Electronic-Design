// 电机驱动模块
// 控制电机正反转及转速

// clk_10000; input; 输入时钟信号;
// rst; input; 复位信号
// choose; input; 输入方向控制信号; 00:制动, 01:正转, 10:反转, 11:制动
// speed; input; 输入速度控制信号（4档）; 00:0档, 01:1档, 10:2档, 11:3档
// pwm_out; output; 输出PWM波形: 接正反PWM信号输入端
module MotorDriver
#(parameter sd=5)(clk, choose, speed, speed_out, pwm_out1,,pwm_out2);
input clk;
input[1:0] choose;
input[1:0] speed;
output[1:0] speed_out;
output pwm_out1, pwm_out2;

reg PWM_R,PWM_L;
reg[15:0] counter=0;

assign pwm_out1=PWM_L;
assign pwm_out2=PWM_R;
assign speed_out=speed;
 
always@ (posedge clk)
begin
if(choose == 2'b01)
	begin
		PWM_R <= 0;
		counter <= counter + 1;
		if (counter <= speed * sd)	//设置PWM为高电平的时间间隔
			PWM_L <= 1;
		else 
			PWM_L <= 0;
		if (counter >= 50)
			counter <= 16'd0;			//PWM周期为1ms，一旦计数到50000自动清零
	end

else if(choose == 2'b10)
	begin
		PWM_L <= 0; 
		counter <= counter + 1;
		if (counter <= speed * sd)	//设置PWM为高电平的时间间隔
			PWM_R <= 1;
		else 
			PWM_R <= 0;
		if (counter >= 50)
			counter <= 16'd0;			//PWM周期为1ms，一旦计数到50000自动清零
	end

else
	begin
		PWM_L <= 0;
		PWM_R <= 0;
	end
end

endmodule
