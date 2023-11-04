`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:19:05 02/02/2022
// Design Name:   memoria
// Module Name:   C:/Users/lalo1_000/Desktop/Arquitecturas/Proyectofinal/memoriacase.v
// Project Name:  Proyectofinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memoria
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memoriacase;

	// Inputs
	reg [4:0] add;
	reg en;
	reg clk;
	reg [13:0] data_in;

	// Outputs
	wire [13:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	memoria uut (
		.add(add), 
		.en(en), 
		.clk(clk), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		add = 0;
		en = 0;
		clk = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
     	add = 0;
		en = 1;
		clk = 1;
		data_in = 0;
		#100;
		
     	add = 0;
		en = 1;
		clk = 1;
		data_in = 0;

	end
      
endmodule

