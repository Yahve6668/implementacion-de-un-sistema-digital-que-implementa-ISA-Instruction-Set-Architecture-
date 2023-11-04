`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:15 02/02/2022 
// Design Name: 
// Module Name:    muxp 
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
module muxp(
    input [1:0] sel,
    input [4:0] a,
    input [4:0] b,
    input [4:0] c,
    input [4:0] d,
    output reg [4:0] sal
    );
  always@(sel,a,b,c,d)
   begin
	  case (sel)
	  0:sal=a;
	  1:sal=b;
	  2:sal=c;
	  3:sal=d;
	  endcase
	end

endmodule
