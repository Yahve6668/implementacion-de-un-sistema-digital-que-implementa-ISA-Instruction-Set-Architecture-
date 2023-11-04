`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:01 01/21/2022 
// Design Name: 
// Module Name:    registro 
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
module registro(
    input clk,
    input en,
	 input [13:0] d,	 
    output reg[13:0] q
    );
	 
  initial q=0;
  always@(posedge clk)
  begin
      if(en==1)
		    q=d;
  end

endmodule
