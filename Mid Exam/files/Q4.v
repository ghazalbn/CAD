
module aclock (reset, clk, H_in1, H_in0, M_in1, 
            M_in0, set_time, set_alarm, stop_alarm, 
            m_alarm_on, پreg alarm_on, H_out1, H_out0, 
            M_out1, M_out0,
 );

input reset, 
input clk,  
input [1:0] H_in1, 
input [3:0] H_in0, /
input [3:0] M_in1, 
input [3:0] M_in0,
input set_time,   
input  set_alarm, 
input   stop_alarm,  
input   m_alarm_on, 
output reg alarm_on,  
output [1:0]  H_out1, 
output [3:0]  H_out0, 
output [3:0]  M_out1, 
output [3:0]  M_out0,
 reg clk_1s; 
 reg [3:0] tmp_1s;
 reg [5:0] tmp_hour, tmp_minute; 
 reg [1:0] c_hour1,a_hour1; 
 reg [3:0] c_hour0,a_hour0;
 reg [3:0] c_min1,a_min1;
 reg [3:0] c_min0,a_min0;


 function [3:0] mod_10;
 input [5:0] number;
 begin
 mod_10 = (number >=50) ? 5 : ((number >= 40)? 4 :((number >= 30)? 3 :((number >= 20)? 2 :((number >= 10)? 1 :0))));
 end
 endfunction
 

 always @(posedge clk_1s or posedge reset )
 begin
 if(reset) begin 
 a_hour1 <= 0;
 a_hour0 <= 0;
 a_min1 <= 0;
 a_min0 <= 0;
 tmp_hour <= H_in1*10 + H_in0;
 tmp_minute <= M_in1*10 + M_in0;
 end 
 else begin
//  set alarm clock 
 if(set_alarm) begin
 a_hour1 <= H_in1;
 a_hour0 <= H_in0;
 a_min1 <= M_in1;
 a_min0 <= M_in0;
 end 
 //set clock time
 if(set_time) begin 
 tmp_hour <= H_in1*10 + H_in0;
 tmp_minute <= M_in1*10 + M_in0;
 end 
 else begin  
 if(tmp_minute >=59) begin 
 tmp_minute <= 0;
 tmp_hour <= tmp_hour + 1;
 if(tmp_hour >= 24) begin 
 tmp_hour <= 0;
 end 
 end 
 end

 always @(posedge clk or posedge reset)
 begin
 if(reset) 
 begin
 tmp_1s <= 0;
 clk_1s <= 0;
 end
 else begin
 tmp_1s <= tmp_1s + 1;
 if(tmp_1s <= 5) 
 clk_1s <= 0;
 else if (tmp_1s >= 10) begin
 clk_1s <= 1;
 tmp_1s <= 1;
 end
 else
 clk_1s <= 1;
 end
 end
 

 always @(*) begin

 if(tmp_hour>=20) begin
 c_hour1 = 2;
 end
 else begin
 if(tmp_hour >=10) 
 c_hour1  = 1;
 else
 c_hour1 = 0;
 end
 c_hour0 = tmp_hour - c_hour1*10; 
 c_min1 = mod_10(tmp_minute); 
 c_min0 = tmp_minute - c_min1*10;
 end

 assign H_out1 = c_hour1; 
 assign H_out0 = c_hour0; 
 assign M_out1 = c_min1; 
 assign M_out0 = c_min0; 


 always @(posedge clk_1s or posedge reset) begin
 if(reset) 
 alarm_on <=0; 
 else begin
 if({a_hour1,a_hour0,a_min1,a_min0}=={c_hour1,c_hour0,c_min1,c_min0})
 begin 
 if(m_alarm_on) alarm_on <= 1; 
 end
 if(stop_alarm) alarm_on <=0; 
 end
 end
 
endmodule
