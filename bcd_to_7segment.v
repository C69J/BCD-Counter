`timescale 1ns / 1ps

module bcd_to_7segment(
    input [3:0] bcd,
    output reg [6:0] seg,
    output reg [3:0]an
    );
    
always @* begin
    
  an=4'b1110; // Enable only digit 0 (rightmost)
   //seg[6:0] = {g, f, e, d, c, b, a} OFFICIAL Basys-3 segment order
     
  case (bcd)
    0: seg = 7'b1000000;
    1: seg = 7'b1111001;
    2: seg = 7'b0100100;
    3: seg = 7'b0110000;
    4: seg = 7'b0011001;
    5: seg = 7'b0010010;
    6: seg = 7'b0000010;
    7: seg = 7'b1111000;
    8: seg = 7'b0000000;
    9: seg = 7'b0010000;
    default: seg = 7'b1111111;
  endcase
end      
endmodule