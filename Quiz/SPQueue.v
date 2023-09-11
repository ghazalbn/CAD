

module SPQueue(data_out, data_in, enqueue_sig, dequeue_sig);

	reg [7:0] queue [15:0]; reg done; 
	reg [7:0] min; reg [7:0] min_count;
	reg[15:0] empty = 15'b111111111111111; //khali budan har khane queue
	reg[10:0] count = 10'b0000000000; //tedade har adad dar queue
	output reg [7:0] data_out; //data khoruji
	input [7:0] data_in; input enqueue_sig, dequeue_sig;
	integer i, size = 0;

	always @(*)
	begin
		if(enqueue_sig && size < 16) //enqueue kardan
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

		else if(dequeue_sig && size > 0) //dequeue kardan
		begin
			min = 8'd0;
			for(i = 0; i < 16; i = i+1)
			begin
				if((count[queue[min_count]] > count[queue[i]]) || 
				(count[queue[min_count]] == count[queue[i]] && queue[min_count] > queue[i]))
				begin
					min_count = i;
				end
			end
			data_out = queue[min];
			queue[min] = 8'd0;
			empty[min] = 1'b1;
			size = size - 1;
		end
	end

endmodule