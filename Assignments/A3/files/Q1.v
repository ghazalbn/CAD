`timescale 1ns / 1ps
module Park( 
            input clock,reset_n,
            input enter, exit, 
            input [1:0] code1, code2,
            output wire GREEN_LED,RED_LED,
            output reg [6:0] HEX_1, HEX_2
        );
    parameter idle = 3'b000, 
            waiting = 3'b001, 
            wrong_code = 3'b010, 
            right_code = 3'b011, 
            stop = 3'b100;

    reg[2:0] current_state, next_state;
    reg[31:0] counter_wait;
    reg red_tmp,green_tmp;
    always @(posedge clock or negedge reset_n)
    begin
        if(~reset_n) 
            current_state = idle;
        else
            current_state = next_state;
    end

    always @(posedge clock or negedge reset_n) 
    begin
        if(~reset_n) 
            counter_wait <= 0;
        else if(current_state==waiting)
            counter_wait <= counter_wait + 1;
        else 
            counter_wait <= 0;
    end

    always @(*)
    begin
        case(current_state)
        idle: 
        begin
            if(enter == 1)
                next_state = waiting;
            else
                next_state = idle;
        end

        waiting: 
        begin
            if(counter_wait <= 3)
                next_state = waiting;
            else 
            begin
                if((code1==2'b01)&&(code2==2'b10))
                    next_state = right_code;
                else
                    next_state = wrong_code;
            end
        end

        wrong_code: 
        begin
            if((code1==2'b01)&&(code2==2'b10))
                next_state = right_code;
            else
                next_state = wrong_code;
        end

        right_code: 
        begin
            if(enter==1 && exit == 1)
                next_state = stop;
            else if(exit == 1)
                next_state = idle;
            else
                next_state = right_code;
        end

        stop: 
        begin
            if((code1==2'b01)&&(code2==2'b10))
                next_state = right_code;
            else
                next_state = stop;
            end

            default: 
                next_state = idle;
        endcase
    end


    always @(posedge clock) 
    begin 
        case(current_state)
        idle: 
        begin
            green_tmp = 1'b0;
            red_tmp = 1'b0;
            HEX_1 = 7'b1111111; // off
            HEX_2 = 7'b1111111; // off
        end

    waiting: 
    begin
        green_tmp = 1'b0;
        red_tmp = 1'b1;
        HEX_1 = 7'b000_0110; // E
        HEX_2 = 7'b010_1011; // n 
    end

    wrong_code: 
    begin
        green_tmp = 1'b0;
        red_tmp = ~red_tmp;
        HEX_1 = 7'b000_0110; // E
        HEX_2 = 7'b000_0110; // E 
    end

    right_code: 
    begin
        green_tmp = ~green_tmp;
        red_tmp = 1'b0;
        HEX_1 = 7'b000_0010; // 6
        HEX_2 = 7'b100_0000; // 0 
    end

    stop: 
    begin
        green_tmp = 1'b0;
        red_tmp = ~red_tmp;
        HEX_1 = 7'b001_0010; // 5
        HEX_2 = 7'b000_1100; // P 
    end

    endcase
    end

    assign RED_LED = red_tmp  ;
    assign GREEN_LED = green_tmp;

endmodule
