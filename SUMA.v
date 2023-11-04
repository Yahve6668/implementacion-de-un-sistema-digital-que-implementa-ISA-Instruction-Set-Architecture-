`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:13:00 02/04/2022
// Design Name:   sumador
// Module Name:   C:/Users/lalo1_000/Desktop/Arquitecturas/Proyectofinal/SUMA.v
// Project Name:  Proyectofinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sumador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SUMA;

	// Inputs
	reg [13:0] a;
	reg [13:0] b;
	reg [13:0] c;
	reg [1:0] oper;
	reg en;

	// Outputs
	wire [13:0] res;

	// Instantiate the Unit Under Test (UUT)
	sumador uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.oper(oper), 
		.en(en), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		oper = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
      a = 1;
		b = 2;
		c = 0;
		oper = 2;
		en = 0;
#100;
      		a = 2;
		b = 1;
		c = 0;
		oper = 0;
		en = 1;
#100;
      		a = 0;
		b = 0;
		c = 1;
		oper = 2;
		en = 1;
#100;
      		a = 1;
		b = 3;
		c = 3;
		oper = 2;
		en = 1;
#100;
      		a = 121;
		b = 12;
		c = 100;
		oper = 2;
		en = 1;
#100;
      a = 3;
		b = 2;
		c = 4;
		oper = 2;
		en = 1;		
		// Add stimulus here

	end
      
endmodule

