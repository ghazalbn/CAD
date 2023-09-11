module CACHE_TestBench;
    reg [31:0] data, address;
    reg read_sig, write_sig;
    wire hit_sig; wire [31:0] data_out; 
    Cache_Controller CC(
        data_out, hit_sig, address, 
        data, read_sig, write_sig);

    initial
    begin
        write_sig = 1'd1; read_sig = 1'd0;
        address = 32'b0000000000001000_000000000110_01_00;
        data = 32'd506;

        #10
        write_sig = 1'd1; read_sig = 1'd0;
        address = 32'b0000000000001000_000000001111_11_00;
        data = 32'd6785;

        #10
        write_sig = 1'd1; read_sig = 1'd0;
        address = 32'b0000000000001000_000000001111_00_00;
        data = 32'd25;

        #10
        write_sig = 1'd0; read_sig = 1'd1;
        address = 32'b0000000000001000_000000000110_01_00;

        #10
        write_sig = 1'd0; read_sig = 1'd1;
        address = 32'b0000000000001000_000000001111_11_00;

        #10
        write_sig = 1'd0; read_sig = 1'd1;
        address = 32'b0000000000001000_000010000111_10_00;

        #10
        write_sig = 1'd1; read_sig = 1'd0;
        address = 32'b0000000000001000_000010000111_10_00;
        data = 32'd25;

        #10
        write_sig = 1'd0; read_sig = 1'd1;
        address = 32'b0000000000001000_000010000111_10_00;
    end

endmodule

