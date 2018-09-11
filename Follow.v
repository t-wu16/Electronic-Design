// 寻迹模块
// road_flag; input; 接收两个红外对管数据;1表示黑线0表示没有黑线;
// [1]左[0]右
// dir; output; 输出方向信息到舵机
// speed; output; 输出速度信息到电机
// choose; output; 输出正反转信息到电机
module Follow(
	input	clk_100,
	input	switch,
	input rst,
	input[1:0] road_flag,
	output reg[2:0] dir,
	output reg[1:0] speed,
	output reg[1:0] choose
);

always @ (posedge clk_100,negedge rst)begin
	if(rst==0)
	begin
		dir <= 3'b011;//直	
		speed <= 2'b01;
		choose <= 2'b01;
	end
	else
	begin
		case(road_flag)
		2'b00:
			begin							
				dir <= 3'b011;//直
				speed <= 2'b01;
				choose <= 2'b01;
			end
		2'b01:
			begin			
				dir <= 3'b110;//右
				speed <= 2'b01;
				choose <= 2'b01;
			end
		2'b10:
			begin			
				dir <= 3'b000;//左
				speed <= 2'b01;
				choose <= 2'b01;
			end
		endcase
	end
end
endmodule
