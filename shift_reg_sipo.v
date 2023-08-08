`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module shift_reg_sipo
#(parameter W=4)
( 
input clk,
input reset,
input  d,
output reg [W-1:0] q
    );

always @(posedge clk)
begin
	if(!reset)begin
		q<=0;
	end else begin
		q[3]<=d;
		q[2]<=q[3];
		q[1]<=q[2];
		q[0]<=q[1];
	end
end

endmodule
