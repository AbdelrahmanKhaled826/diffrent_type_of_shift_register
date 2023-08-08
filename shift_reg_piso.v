`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:30:21 08/08/2023 
// Design Name: 
// Module Name:    shift_reg_piso 
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
module shift_reg_piso
#(parameter W=4)
(
input clk,
	input reset,
	input sdi, // serial data in
	input pl,  // preload
    input [3:0] d,
	output sdo
    );
	
	// Internal 4 bits wide register
	reg [3:0] piso;
	wire [3:0] data_src; // nets after the mux'es
	
	// If pl == 1 uses the parallel input as data source
	assign data_src = pl ? d : {piso[2:0], sdi};
	
	// Async negative reset is used
	always @(posedge clk or negedge reset_n) begin
	    if (!reset)
		    piso <= 4'b0;
	    else
		    piso[3:0] <= data_src;
	end

    // Connect the sdo net to the register MSB
    assign sdo = piso[3];

endmodule
