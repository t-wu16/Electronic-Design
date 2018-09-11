//数码管显示模块
module Display(
	input	[9:0]	in_num,
	input	clk_500,
	input	dig_show,
	output	reg	[3:0]	digtal_show,
	output	reg	[3:0]	out_num
);

reg [1:0]	cnt;

always @ (posedge clk_500)begin
	cnt<=cnt+1;
end

always @ (posedge clk_500)begin
	if(dig_show==0)
		begin
			digtal_show	<=	4'b0;
		end
	else
		begin
			case(cnt)
			2'b00:	digtal_show<=4'b0001;//最左边数码管即DIG3/PIN_39
			2'b01:	digtal_show<=4'b0010;
			2'b10:	digtal_show<=4'b0100;
			2'b11:	digtal_show<=4'b1000;
			endcase
		end
end

always @ (posedge clk_500)begin
		if(dig_show==0)
		begin
			out_num<=4'b0;
		end
	else
		begin
			case(cnt)
			2'b00:	out_num<=in_num/1000;
			2'b01:	out_num<=(in_num%1000)/100;
			2'b10:	out_num<=((in_num%1000)%100)/10;
			2'b11:	out_num<=((in_num%1000)%100)%10;
			endcase
		end
end
endmodule
