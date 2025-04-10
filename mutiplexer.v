
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2025 06:24:50 PM
// Design Name: 
// Module Name: mutiplexer
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


module multiplexer(s2,s1,s0,x,y);
input s2,s1,s0;
input [7:0]y;
output x;
assign x=y[0]&(~s2&~s1&~s0)|y[1]&(~s2&~s1&s0)|y[2]&(~s2&s1&~s0)|y[3]&(~s2&s1&s0)|y[4]&(s2&~s1&~s0)|y[5]&(s2&~s1&s0)|y[6]&(s2&s1&~s0)|y[7]&(s2&s1&s0);
endmodule

//test bench
module test_bench;
reg s2,s1,s0;
reg [7:0]y;
wire x;
multiplexer mu(s2,s1,s0,x,y);
initial
begin
y=8'b1010101010;
s2=1'b0;
s1=1'b0;
s0=1'b0;
#10;
y=8'b1010101010;s2=1'b0;s1=1'b0;s0=1'b1;
#10;
y=8'b1010101010;s2=1'b0;s1=1'b1;s0=1'b0;
#10;
y=8'b1010101010;s2=1'b0;s1=1'b1;s0=1'b1;
#10;
y=8'b1010101010;s2=1'b1;s1=1'b0;s0=1'b0;
#10;
y=8'b1010101010;s2=1'b1;s1=1'b0;s0=1'b1;
#10;
y=8'b1010101010;s2=1'b1;s1=1'b1;s0=1'b0;
#10;
y=8'b1010101010;s2=1'b1;s1=1'b1;s0=1'b1;
#10;
end
endmodule

