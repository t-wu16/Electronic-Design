module sonic(
	input clk,
	output reg trigger=0,
	input echo,
	output reg [3:0]num0,
   output reg [3:0]num1,
	output reg near
);
reg [31:0]count=32'b0;
reg [31:0]num=32'b0;
reg flag=0;
reg [31:0]distance;
always@(posedge clk)
	begin
		if(count<1000)begin trigger<=1;count<=count+1; end	//20us脉冲
		else if(count<5000000)begin trigger<=0;count<=count+1; end	//间隔100ms
		else count<=0;
	end
always@(posedge clk)
	begin
		if(echo==1)begin num<=num+1;flag<=1; end
		else 
		begin 
			if(flag==1)
				begin
					near<=0;
					distance=num/2500;							//需要调参
					if(distance<100)
					begin
						if(distance<40) near<=1;
					num1=distance/10;	
					num0=distance-num1*10;
					end
					else begin num0=4'd12;num1=4'd12;end
					flag=0;
				end
			num<=0;
		end
	end
endmodule