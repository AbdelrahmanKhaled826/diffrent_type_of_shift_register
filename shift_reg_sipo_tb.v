`timescale 1ns / 1ps


module shift_reg_sipo_tb;

wire [3:0] q;
	reg clk;
	reg reset;
	reg d;



	// Instantiate the Unit Under Test (UUT)
	shift_reg_sipo uut (
		.clk(clk), 
		.reset(reset), 
		.d(d), 
		.q(q)
	);

	initial begin
		clk=0;
		reset=0;
		d=0;
		#1.3
		reset=1;
	#1
	d=1;
	#1
	d=0;
	#1
	d=1;
	#1
	d=0;
	#1
	d=1;
	end
      
      
      
 always #0.5 clk=~clk;
initial #10 $stop;
      
endmodule

