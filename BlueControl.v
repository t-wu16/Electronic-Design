//蓝牙控制模块
module BlueControl(
	input clk_100,
	input[7:0] data,
	output [1:0] choose,
	output [1:0] speed,
	output [2:0] dir
);

reg[1:0] choose_r = 2'b00;
reg[1:0] speed_r = 2'b00;
reg[2:0] dir_r = 3'b011; 

assign choose = choose_r;
assign speed = speed_r;
assign dir = dir_r;

always@ (posedge clk_100)
begin
	case(data)
		8'hA1:begin	//右转1
			dir_r <= 3'b010;
			end
		8'hA2:begin	//正转启动
			choose_r <= 2'b01;
			speed_r <= 2'b01;
			dir_r <= 3'b011;
			end
		8'hA3:begin	//左转1
			dir_r <= 3'b101;
			end
		8'hA4:begin	//右转2
			dir_r <= 3'b001;
			end
		8'hA5:begin	//停止
			choose_r <= 2'b00;
			speed_r <= 2'b00;
			end
		8'hA6:begin	//左转2
			dir_r <= 3'b110;
			end
		8'hA7:begin	//反转启动
			choose_r <= 2'b10;
			speed_r <= 2'b01;
			dir_r <= 3'b011;
			end
		8'hA8:begin
			speed_r <= 2'b10;
			end
	endcase
end

endmodule

