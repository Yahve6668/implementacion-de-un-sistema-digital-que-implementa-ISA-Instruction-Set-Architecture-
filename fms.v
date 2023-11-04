`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:17 02/02/2022 
// Design Name: 
// Module Name:    fms 
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
module fms(
    input [1:0] x,
	 input clk,
    output reg enPC,
    output reg enIR,
    output reg enROP1,
    output reg enROP2,
    output reg enROP3, 
    output reg enRIO,
    output reg enMEN,
	 output reg enOPE,
    output reg[1:0] sel,
    output reg [1:0]oper
    );
     parameter A=0,B=1,C=2,D=3,E=4,F=5,G=6,H=7,I=8,J=9;
	  reg [3:0] actual,futuro;
	  initial actual=A;
	  initial futuro=B;
	  always @(posedge clk)
	  begin 
 		actual=futuro;
		end
		
  	 always @(posedge clk)
	  begin 
	  case (actual)
	    A:futuro=B;
		 B:futuro=C;
		 C:
		 begin
		   if(x==1||x==0)
		     futuro=D;
			 else if(x==2)
			  futuro=J;
			  else 
			  futuro=I;
		 end
		 D:futuro=E;
		 E:futuro=F;
		 F:futuro=G;
		 G:futuro=H;
		 H:futuro=A;
		 I:futuro=H;
		 J:futuro=F;
			default:futuro=A;
		endcase
	  end
	  
	  always @(actual)
	  begin
	    case(actual)
		 A:
		 begin
		 enPC=0;
		 enIR=1;
       enROP1=0;
       enROP2=0;
       enROP3=0;
       enRIO=0;
       enMEN=0;
	    enOPE=0;
       sel=0;
       oper=0;
		 end
		 B:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=0;
       enROP2=0;
       enROP3=0;
       enRIO=0;
       enMEN=0;
	    enOPE=0;
       sel=0;
       oper=0;
		 end
		 C:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=0;
       enROP2=0;
       enROP3=0;
       enRIO=0;
       enMEN=0;
	    enOPE=0;
       sel=0;
       oper=0;
		 end
		 D:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=1;
       enROP2=0;
       enROP3=0;
       enRIO=0;
       enMEN=0;
	    enOPE=0;
       sel=1;
       oper=0;
		 end
		 E:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=0;
       enROP2=1;
       enROP3=0;
       enRIO=0;
       enMEN=0;
	    enOPE=0;
       sel=2;
       oper=0;
		 end
		 F:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=0;
       enROP2=0;
       enROP3=0;
       enRIO=0;
       enMEN=0;
	    enOPE=1;		 
       sel=0;
       oper=x;
		 end
		 G:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=0;
       enROP2=0;
       enROP3=0;
       enRIO=0;
       enMEN=1;
	    enOPE=0;
		 oper=0;
		 if(x==1||x==0)
       sel=3;
		 else if(x==2)
		 sel=2;
		 end
		 H:
		 begin
		 enPC=1;
		 enIR=0;
       enROP1=0;
       enROP2=0;
       enROP3=0;
       enRIO=0;
       enMEN=0;
	    enOPE=0;
       sel=0;
       oper=0;
		 end
		 I:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=0;
       enROP2=0;
       enROP3=0;
       enRIO=1;
       enMEN=0;
	    enOPE=0;
       sel=1;
       oper=0;
		 end
		 J:
		 begin
		 enPC=0;
		 enIR=0;
       enROP1=0;
       enROP2=0;
       enROP3=1;
       enRIO=0;
       enMEN=0;
	    enOPE=0;
       sel=1;
       oper=0;
		 end
	    default:futuro=A;
		 endcase
	  end
	  
	  
endmodule
