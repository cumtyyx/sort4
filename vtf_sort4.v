`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:44:12 03/19/2019
// Design Name:   sort4
// Module Name:   C:/myfpga/project/sort4/testbench/vtf_sort4.v
// Project Name:  sort4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sort4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vtf_sort4;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] c;
	reg [3:0] d;

	// Outputs
	wire [3:0] ra;
	wire [3:0] rb;
	wire [3:0] rc;
	wire [3:0] rd;

	// Instantiate the Unit Under Test (UUT)
	sort4 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.ra(ra), 
		.rb(rb), 
		.rc(rc), 
		.rd(rd)
	);

	initial begin
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		repeat(50)
			begin
				#100 a = {$random}%15;
					 b = {$random}%15;
					 c = {$random}%15;
					 d = {$random}%15;
			end
		#100 $stop;
	end
      
endmodule

