`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:05:20 02/02/2022 
// Design Name: 
// Module Name:    main 
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
module main(
    input clk,
	 output [13:0] resultado
    );
	 //registros
	 wire [13:0] data_out,reg_op,reg_op2,reg_op3;
	 wire [13:0] odco;
	 wire [13:0] res;
	 //en
	 wire enPC,enIR,enROP1,enROP2,enROP3,enRIO,enMEN,enOPER;
	 wire [1:0] sel,oper;
	 
	 wire [4:0]con,sal;
    reg offsetc=1'b1;
	 wire [1:0]s=odco[13:12];
	 fms Control(s , clk ,enPC , enIR, enROP1, enROP2, enROP3, enRIO, enMEN,enOPER, sel,oper);
  
	  registro IR(clk,enIR,data_out,odco);
 	 
	 registro OP1(clk , enROP1 ,data_out,reg_op);
	 registro OP2(clk,enROP2,data_out,reg_op2);
	 registro OP3(clk,enROP3,data_out,reg_op3);
	
	  registro RIO(clk,enRIO,data_out,resultado);
	  contador PC(enPC,clk,con);
	  muxp MUX(sel,con, {1'b1,odco[11:8]} ,{ offsetc, odco[7:4] },{offsetc,odco[3:0]},sal);
    
	  sumador OPE(reg_op , reg_op2 ,reg_op3 ,oper ,enOPER , res);
    
     memoria MEN(sal,enMEN,clk,res,data_out);
	
endmodule
