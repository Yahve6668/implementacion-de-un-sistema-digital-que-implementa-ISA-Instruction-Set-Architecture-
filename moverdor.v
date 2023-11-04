`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:09 02/02/2022 
// Design Name: 
// Module Name:    moverdor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module moverdor(
    input [13:0] a,
    output reg[13:0] res
    ); 
   always @(a,b)
	begin 
	res=b;
	end

endmodule
