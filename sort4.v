`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:56 03/19/2019 
// Design Name: 
// Module Name:    sort4 
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
module sort4(a,b,c,d,ra,rb,rc,rd
    );
	input [3:0] a,b,c,d;
	output [3:0] ra,rb,rc,rd;
	reg [3:0] ra,rb,rc,rd;
	reg [3:0] va,vb,vc,vd;
	
	always @ (a,b,c,d)
		begin
			{va,vb,vc,vd} = {a,b,c,d};
			sort2(va,vb);
			sort2(va,vc);
			sort2(va,vd);
			sort2(vb,vc);
			sort2(vb,vd);
			sort2(vc,vd);
			{ra,rb,rc,rd} = {va,vb,vc,vd};
		end
		
	task sort2;
		inout [3:0] x,y;
		reg [3:0] tmp;
		if(x>y)
			begin
				tmp = x;
				x = y;
				y = tmp;
			end
	endtask
		
endmodule
