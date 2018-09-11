// FPGA接收端
// 接收蓝牙发回来的8位数据，内部提供error接口，接收数据发生错误时触发。
module UART_RX (
    input clk,
    input rst,
    input pin,
    output reg error,
    output reg finish,
    output reg[7:0] data
);

localparam IDLE = 1'b0, BUSY = 1'b1;
reg[1:0] state = IDLE;
reg[3:0] bits_remaining = 4'd0;
always @(posedge clk or negedge rst)
if (!rst) 
begin
	error <= 1'b0;
	finish <= 1'b0;
	state <= IDLE;
	bits_remaining <= 4'd0;
end

else
	case (state)
        IDLE:begin
				 error <= 1'b0;
             finish <= 1'b0;
             if (!pin) 
					begin 	// start bit
					state <= BUSY;
               bits_remaining <= 4'd9; // 8 data bits + 1 stop bit
					end
				 end
        BUSY:begin
             if(bits_remaining == 1'd1) 
					begin 	// stop bit
						if (pin) finish <= 1'b1;
						else error <= 1'b1;
						state <= IDLE;
					end
				 else data <= {pin, data[7:1]};
				 bits_remaining <= bits_remaining - 1'b1;
				 end
	endcase

endmodule
