// 超声波避障控制模块
// distance_flag; input; 接收四个超声波距离数据;
// [3]左,[2]右,[1]前左 ,[0]前右
// dir; output; 输出方向信息到舵机
// speed; output; 输出速度信息到电机
// choose; output; 输出正反转信息到电机
module escape(
	input	clk_100,
	input	switch,
	input rst,
	input[3:0] distance_flag,
	output reg[2:0] dir,
	output reg[1:0] speed,
	output reg[1:0] choose
);


parameter	s0		=	4'b0000;//检测状态

parameter	s11	=	4'b0001;//左转
parameter	s12	=	4'b0010;//直
parameter	s13	=	4'b0011;//右
parameter	s14	=	4'b0100;//直0.5s

parameter	s21	=	4'b0101;//右转
parameter	s22	=	4'b0110;//直
parameter	s23	=	4'b0111;//左
parameter	s24	=	4'b1000;//直0.5s

reg	[3:0]		current_state,next_state;
reg	[10:0]	count_l,count_r,count_q;

always @ (posedge clk_100,negedge rst)begin//状态方程
	if(rst==0)
		current_state<=s0;
	else
	current_state <= next_state;
end

always @ (current_state,rst)begin
	if(rst==0)
		next_state<=s0;
	else
	case (current_state)
		s0:
			if(distance_flag[1]==0&&count_q>=200)
				next_state	<=	s21;
			else if(distance_flag[1]==1&&distance_flag[0]==0&&count_q>=200)
				next_state	<=	s11;
			else
				next_state	<=	s0;
		s11:
			if(distance_flag[0]==1)
				next_state	<=	s12;
			else
				next_state	<=	s11;
		s12:
			if(distance_flag[2]==0)
				next_state	<=	s13;
			else
				next_state	<=	s12;
		s13:
			if(distance_flag[2]==1)
				next_state	<=	s14;
			else
				next_state	<=	s13;
		s14:
			if(count_l==50)
				next_state	<=	s0;
			else
				next_state	<=	s14;
				
		s21:
			if(distance_flag[1]==1)
				next_state	<=	s22;
			else
				next_state	<=	s21;
		s22:
			if(distance_flag[3]==0)
				next_state	<=	s23;
			else
				next_state	<=	s22;
		s23:
			if(distance_flag[3]==1)
				next_state	<=	s24;
			else
				next_state	<=	s23;
		s24:
			if(count_r==50)
				next_state	<=	s0;
			else
				next_state	<=	s24;
	endcase
end

always @ (posedge	clk_100,negedge rst)begin		
	if(rst==0)
	begin
		count_q<=0;
		dir <= 3'b011;
		speed <= 2'b01;
		choose <= 2'b01;
	end
	else	
	case(current_state)
		s0:
			begin
				dir <= 3'b011;
				speed <= 2'b01;
				choose <= 2'b01;
				count_l<=0;
				count_r<=0;
				if(count_q<200)
				count_q<=count_q+1;
			end
		s11:
			begin				
				dir <= 3'b110;//左
				speed <= 2'b01;
				choose <= 2'b01;
			end
		s12:
			begin				
				dir <= 3'b011;
				speed <= 2'b01;
				choose <= 2'b01;
			end
		s13:
			begin				
				dir <= 3'b001;
				speed <= 2'b01;
				choose <= 2'b01;
			end
		s14:
			begin				
				dir <= 3'b011;
				speed <= 2'b01;
				choose <= 2'b01;
				count_l<=count_l+1;
			end
		s21:
			begin				
				dir <= 3'b001;
				speed <= 2'b01;
				choose <= 2'b01;
			end
		s22:
			begin				
				dir <= 3'b011;
				speed <= 2'b01;
				choose <= 2'b01;
			end
		s23:
			begin				
				dir <= 3'b110;
				speed <= 2'b01;
				choose <= 2'b01;
			end
		s24:
			begin				
				dir <= 3'b011;
				speed <= 2'b01;
				choose <= 2'b01;
				count_r<=count_r+1;
			end
	endcase
end
endmodule