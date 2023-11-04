`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:35:21 02/03/2022
// Design Name:   memoria
// Module Name:   C:/Users/lalo1_000/Desktop/Arquitecturas/Proyectofinal/prueba1.v
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

module prueba1;

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
    	add = 23;
		en = 1;
		clk = 1;
		data_in = 20;
     #100;
    		add = 23;
		en = 1;
		clk = 1;
		data_in = 20;	  
		// Add stimulus here

	end
      
endmodule

