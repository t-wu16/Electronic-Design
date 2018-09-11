// 分频器
module ClkDiv
#(parameter M=50) //参数定义，默认为50，即50分频
(input wire clk,
 output wire clk_div_M);
 
 localparam N=log2(M/2);	// M/2值所需位数
 reg clk_div_r = 0;
 assign clk_div_M =clk_div_r;
 reg[N-1:0] cnt = 0;	//分频计数器
 
always@ (posedge clk)
 begin
	if(cnt == (M/2-1))
		begin
			cnt <= 0;
			clk_div_r <= ~clk_div_r;
		end
	else
		cnt <= cnt+1'b1;
end

//log2 constant function
function integer log2(input integer n);
	integer i;
begin
	log2 = 1;
	for(i=0;2**i<n;i=i+1)
		log2 = i+1;
end
endfunction
endmodule
