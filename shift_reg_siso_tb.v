`timescale 1ns / 1ps


module shift_reg_siso_tb;

	// Inputs
	reg clk;
	reg reset;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	shift_reg_siso uut (
		.clk(clk), 
		.reset(reset), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		d = 0;
              #0.7 
	    d=1;
	    reset=1;
	    #1
	    d=0;
	    #1
	    d=1;
	    #1
	    d=0;
	    #1
	    d=1;
	    #4
	    $stop;
	    
		

	end
      always #0.5 clk=~clk;
endmodule

