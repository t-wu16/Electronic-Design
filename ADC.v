module ADC(
	input clk_50m,
	input[7:0] data_in,
	output [3:0] data_out_1,
	output [3:0] data_out_2,
	output [3:0] data_out_3
);

p' 
wire[11:0] data_out;
assign data_out = 500 - data_in *1000 /488;
assign data_out_3 = data_out % 10;
assign data_out_2 = data_out/10 % 10;
assign data_out_1 = data_out/100;
endmodule
