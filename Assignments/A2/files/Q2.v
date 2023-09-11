module Cache_Controller(data_out, hit_sig, address, data, read_sig, write_sig);

    reg [144:0] cache[4095:0]; reg[144:0] block;
    reg [11:0] index; reg [15:0] tag; reg [1:0] block_offset;
    output reg [31:0] data_out; output reg hit_sig;
    input read_sig, write_sig;
    input [31:0] data, address;

    always @(*)
    begin
		index = address[15:4];		
		tag = address[31:16];
		block_offset = address[3:2];
        block = 145'd0;

        if(write_sig)
        begin
            block[143:128] = tag;
            case(block_offset)
                2'b00 : block[31:0] = data;        
                2'b01 : block[63:32] = data;        
                2'b10 : block[95:64] = data;        
                2'b11 : block[127:96] = data; 
            endcase
            
            block[144] = 1'd1;
            cache[index] = block;
        end

        else if(read_sig)
        begin
            block = cache[index];
            if(block[143:128] == tag)
            begin
                hit_sig = block[144];
                case(block_offset)
                    2'b00 : data_out = block[31:0];        
                    2'b01 : data_out = block[63:32];        
                    2'b10 : data_out = block[95:64];        
                    2'b11 : data_out = block[127:96]; 
                endcase
            end
            else
                hit_sig = 0;
        end
    end

endmodule