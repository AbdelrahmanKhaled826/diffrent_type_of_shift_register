`timescale 1ns / 1ps


module shift_reg_pipo_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

integer i;
	// Instantiate the Unit Under Test (UUT)
	shift_reg_pipo uut (
		.clk(clk), 
		.reset(reset), 
		.d(d), 
		.q(q)
	);

	initial begin
		clk=0;
		reset=0;
		d=0;
		#1
		reset=1;
		
for(i=0;i<=15;i=i+1)
begin
@(posedge clk);
d=$random;
end


	end
      
 always #0.5 clk=~clk;
initial #10 $stop;
 
endmodule

