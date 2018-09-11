module LatticeShow(
    input   clk_1000,
    input   [2:0] state,
    input lat_switch,
    output  reg [7:0]   row,
    output  reg [7:0]   line
);

reg [2:0]   cnt;

always @ (posedge clk_1000)begin
    cnt <= cnt+1;
end 

always @ (posedge clk_1000)begin
    if(lat_switch==0)
        begin
            line    <=  8'b0000_0000;
        end
    else
        begin
            case(cnt)
            3'b000: line <= 8'b0000_0001;
            3'b001: line <= 8'b0000_0010;
            3'b010: line <= 8'b0000_0100;
            3'b011: line <= 8'b0000_1000;
            
            3'b100: line <= 8'b0001_0000;
            3'b101: line <= 8'b0010_0000;
            3'b110: line <= 8'b0100_0000;
            3'b111: line <= 8'b1000_0000;
            endcase
        end
end
always @ (posedge clk_1000)begin
    if(lat_switch==0)
        begin
            row <=  7'b000_0000;
        end
    else
        begin
            case(state)      
            3'b111:
                begin
                    case(line)
                    8'b0000_0001:   row <= 8'b0000_0000;//全亮
                    8'b0000_0010:   row <= 8'b0000_0000;
                    8'b0000_0100:   row <= 8'b0000_0000;
                    8'b0000_1000:   row <= 8'b0000_0000;
            
                    8'b0001_0000:   row <= 8'b0000_0000;
                    8'b0010_0000:   row <= 8'b0000_0000;
                    8'b0100_0000:   row <= 8'b0000_0000;
                    8'b1000_0000:   row <= 8'b0000_0000;
                    endcase
                end
            3'b000:
                begin
                    case(line)
                    8'b0000_0001:   row <= 8'b1110_0111;//右
                    8'b0000_0010:   row <= 8'b1100_0011;
                    8'b0000_0100:   row <= 8'b1000_0001;
                    8'b0000_1000:   row <= 8'b0000_0000;

                    8'b0001_0000:   row <= 8'b1100_0011;
                    8'b0010_0000:   row <= 8'b1100_0011;
                    8'b0100_0000:   row <= 8'b1100_0011;
                    8'b1000_0000:   row <= 8'b1100_0011;
                    endcase
                end
            3'b001:
                begin
                    case(line)
                    8'b0000_0001:   row <= 8'b1111_0111;//前
                    8'b0000_0010:   row <= 8'b1111_0011;
                    8'b0000_0100:   row <= 8'b0000_0001;
                    8'b0000_1000:   row <= 8'b0000_0000;
            
                    8'b0001_0000:   row <= 8'b0000_0000;
                    8'b0010_0000:   row <= 8'b0000_0001;
                    8'b0100_0000:   row <= 8'b1111_0011;
                    8'b1000_0000:   row <= 8'b1111_0111;
                    endcase
                end
            3'b010:
                begin
                    case(line)
                    8'b0000_0001:   row <= 8'b1110_1111;//后
                    8'b0000_0010:   row <= 8'b1100_1111;
                    8'b0000_0100:   row <= 8'b1000_0000;
                    8'b0000_1000:   row <= 8'b0000_0000;
            
                    8'b0001_0000:   row <= 8'b0000_0000;
                    8'b0010_0000:   row <= 8'b1000_0000;
                    8'b0100_0000:   row <= 8'b1100_1111;
                    8'b1000_0000:   row <= 8'b1110_1111;
                    endcase
                end
            3'b011:
                begin
                    case(line)
                    8'b0000_0001:   row <= 8'b1100_0011;//左
                    8'b0000_0010:   row <= 8'b1100_0011;
                    8'b0000_0100:   row <= 8'b1100_0011;
                    8'b0000_1000:   row <= 8'b1100_0011;
            
                    8'b0001_0000:   row <= 8'b0000_0000;
                    8'b0010_0000:   row <= 8'b1000_0001;
                    8'b0100_0000:   row <= 8'b1100_0011;
                    8'b1000_0000:   row <= 8'b1110_0111;
                    endcase
                end     
            endcase
        end
end
endmodule