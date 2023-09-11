module Array_AVG(Avg);

	reg [7:0] Arr [14:0];
    reg[7:0] S = 0;
	output[7:0] Avg;
    integer i;
    always @(*)
	begin
        for(i = 0; i < 15; i = i+1)
        begin
            S = S + Arr[i];
		end
	end

    assign Avg = S / 15;  

endmodule


module Array_Median(M);

	reg [7:0] Arr [14:0];
    reg[7:0] temp;
	output[7:0] M;
    integer i, j;
    always @(*)
	begin
        for (i = 0; i <= 15; i = i + 1) 
        begin
            for(j = i + 1; j <= 15; j = j + 1) 
            begin
                if (Arr[i] < Arr[j]) 
                begin
                    temp = Arr[i];
                    Arr[i] = Arr[j];
                    Arr[j] = temp;
                end
            end
        end
	end

    assign M = Arr[7];  

endmodule


module Array_Mod(M);

	reg [7:0] Arr [14:0];
    reg [3:0] count [255:0];
    reg[7:0] max;
	output[7:0] M;
    integer i, j;
    always @(*)
	begin
        for (i = 0; i <= 15; i = i + 1) 
        begin
            for(j = i + 1; j <= 15; j = j + 1) 
            begin
                count [Arr[i]] = count [Arr[i]] + 1;
            end
        end

        max = Arr[0];
        for (i = 0; i <= 15; i = i + 1) 
        begin
            if (count[Arr[i]] > max) 
            begin
                max = count[Arr[i]];
            end
        end
	end

    assign M = max;  

endmodule


