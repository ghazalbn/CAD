
module PriorityQ(data_out, data_in, enqueue_sig, dequeue_sig);

	reg [7:0] queue [15:0]; reg done; reg [7:0] max;
	reg[15:0] empty = 15'b111111111111111;
	output reg [7:0] data_out;
	input [7:0] data_in; input enqueue_sig, dequeue_sig;
	integer size = 0, i;

	always @(*)
	begin
		if(enqueue_sig && size < 16)
		begin
			done = 1'b0;
			for(i = 0; !done && i < 16; i = i+1)
			begin
				if(empty[i])
				begin
					empty[i] = 1'b0;
					queue[i] = data_in;
					done = 1'b1;
					size = size + 1;
				end
			end
		end

		else if(dequeue_sig && size > 0)
		begin
			max = 8'd0;
			for(i = 0; i < 16; i = i+1)
			begin
				if(queue[max] < queue[i])
				begin
					max = i;
				end
			end
			data_out = queue[max];
			queue[max] = 8'd0;
			empty[max] = 1'b1;
			size = size - 1;
		end
	end

endmodule