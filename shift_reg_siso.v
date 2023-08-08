`timescale 1ns / 1ps

module shift_reg_siso
#(parameter W=4)
(input clk,
input reset,
input d,
output  reg q
);

reg [W-2:0] temp; 
always @(posedge clk)begin
if(!reset )begin
		q<=0;
	end
else begin
	temp[0]<=d;
	temp[1]<=temp[0];
	temp[2]<=temp[1];
	q<=temp[2];
end
end

endmodule
