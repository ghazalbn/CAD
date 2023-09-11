
module PriorityQ_TestBench;

    reg enqueue_sig, dequeue_sig;
    reg [7:0] data_in;
    wire [7:0] data_out;
    PriorityQ PQ(
        data_out, data_in, 
        enqueue_sig, dequeue_sig
        );

    initial
    begin
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd50;

        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd20;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 1;

        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd14;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 1;

        #10;
        enqueue_sig = 1;
        dequeue_sig = 0;
        data_in = 8'd24;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 1;

        #10;
        enqueue_sig = 0;
        dequeue_sig = 0;
    end

endmodule