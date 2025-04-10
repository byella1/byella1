`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2025 09:58:37 AM
// Design Name: 
// Module Name: and_gate
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


module and_gate(y,a,b);

input a,b;
output y;
assign y = a & b;
endmodule
// test bench
module test_bench;
reg a,b;
wire y;
and_gate an(y,a,b);
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

