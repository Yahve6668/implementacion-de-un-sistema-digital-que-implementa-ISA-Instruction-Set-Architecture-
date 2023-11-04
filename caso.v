`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:24:00 02/02/2022
// Design Name:   main
// Module Name:   C:/Users/lalo1_000/Desktop/Arquitecturas/Proyectofinal/caso.v
// Project Name:  Proyectofinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module caso;

	// Inputs
	reg clk;

	// Outputs
	wire [13:0] resultado;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.resultado(resultado)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
        forever begin
		   clk=~clk;
			#15;
		  end
		// Add stimulus here

	end
      
endmodule

