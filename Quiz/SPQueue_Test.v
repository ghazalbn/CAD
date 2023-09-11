

module SPQueue_TestBench;

    reg enqueue_sig, dequeue_sig;
    reg [7:0] data_in;
    wire [7:0] data_out;
    SPQueue SQ(
        data_out, data_in, 
        enqueue_sig, dequeue_sig
        );

    initial
    begin
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd2;

        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd2;

        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd10;
        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd8;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 1;

        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd6;

        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 1;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 1;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 0;
    end

endmodule