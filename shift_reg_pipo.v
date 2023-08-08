`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:26:51 08/08/2023 
// Design Name: 
// Module Name:    shift_reg_pipo 
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
module shift_reg_pipo
#(parameter W=4
)
(
input clk,
input reset,
input [W-1:0] d,
output reg [W-1:0] q
    );

always @(posedge clk)
begin
	if(!reset)begin
		q<=0;
	end else begin
		q<=d;
	end
end
endmodule
