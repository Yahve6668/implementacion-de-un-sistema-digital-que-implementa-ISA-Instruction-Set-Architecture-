`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:54:31 02/03/2022
// Design Name:   fms
// Module Name:   C:/Users/lalo1_000/Desktop/Arquitecturas/Proyectofinal/prueba2.v
// Project Name:  Proyectofinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fms
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prueba2;

	// Inputs
	reg [1:0] x;
	reg clk;

	// Outputs
	wire enPC;
	wire enIR;
	wire enROP1;
	wire enROP2;
	wire enROP3;
	wire enROP4;
	wire enRIO;
	wire enMEN;
	wire [1:0] sel;
	wire oper;

	// Instantiate the Unit Under Test (UUT)
	fms uut (
		.x(x), 
		.clk(clk), 
		.enPC(enPC), 
		.enIR(enIR), 
		.enROP1(enROP1), 
		.enROP2(enROP2), 
		.enROP3(enROP3), 
		.enROP4(enROP4), 
		.enRIO(enRIO), 
		.enMEN(enMEN), 
		.sel(sel), 
		.oper(oper)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
        forever begin
		  x = 3;
		  clk =~clk;
		  #50;
		  end
		// Add stimulus here

	end
      
endmodule

