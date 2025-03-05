`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2025 06:10:42 PM
// Design Name: 
// Module Name: gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gates(a,b,y1,y2,y3,y4,y5,y6,y7);
input a,b;
output y1,y2,y3,y4,y5,y6,y7;
assign y1=a&b;
assign y2=a|b;
assign y3=~a;
assign y4=~(a&b);
assign y5=~(a|b);
assign y6=a^b;
assign y7=~(a^b);
endmodule

//test bench
module test_bench;
reg a,b;
wire y1,y2,y3,y4,y5,y6,y7;
gates ga(a,b,y1,y2,y3,y4,y5,y6,y7);
initial
begin
a=1'b0;
b=1'b0;
#10;
a=1'b0;
b=1'b1;
#10;
a=1'b1;
b=1'b0;
#10;
a=1'b1;
b=1'b1;
#10;
end
endmodule


