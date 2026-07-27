`timescale 1ns / 1ps

module bcdcounter(
    input clk,reset,upordown,
    output reg [3:0]count
    );
    always@(posedge(clk) or posedge(reset))
    begin
      if(reset)
        count<=4'd0;
      else if (upordown==1)
      //Up Counter
        if(count==4'd9)
          count<=4'd0;
        else
          count<=count+1'b1;
      else
        if(count==4'd0)
          count<=4'd9;
        else
          count<=count-1'b1;
    end
endmodule