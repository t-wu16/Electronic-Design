// FPGA发送端
// 触发start信号后，将data数据发送给上位机，发送完成后得到一个finish信号
module UART_TX (
    input clk,
    input rst,
    input start, // level trigger
    input [7:0] data,
	 output reg finish,
	 output reg pin
);

localparam IDLE = 1'b0, BUSY = 1'b1;
reg[1:0] state = IDLE;
reg[3:0] bits_remaining = 4'd0;
reg[7:0] data_reg;

always @(posedge clk or negedge rst)
if (!rst) 
begin
	pin <= 1'b1;
   finish <= 1'b0;
   state <= IDLE;
   bits_remaining <= 4'd0;
end 

else 
	case (state)
		IDLE: begin
            pin <= 1'b1;
            finish <= 1'b1;
            if (start) 
					begin
               pin <= 1'b0; // start bit
               finish <= 1'b0;
               state <= BUSY;
               bits_remaining <= 4'd9; // 8 data bits + 1 stop bit
               data_reg <= data;
					end
				end
		BUSY: begin
            if (bits_remaining == 1'd1) 
					begin
               pin <= 1'b1; // stop bit
               finish <= 1'b1;
               state <= IDLE;
					end 
				else {data_reg, pin} <= {1'b0, data_reg};
            bits_remaining <= bits_remaining - 1'd1;
				end
	endcase

endmodule
