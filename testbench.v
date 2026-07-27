`timescale 1ns / 1ps

module testbench( );
   reg clk,upordown,reset;
   wire [3:0]count;
   bcdcounter dut(.clk(clk), .upordown(upordown), .reset(reset), .count(count));
   //clock generation
   always #5 clk=~clk;
   initial
   begin
    //initialize
    clk=0;
    reset=1;
    upordown=1;
    #10 reset=0;
    //count up
    #100;
    
    //switch to down
    upordown=0;
    #100;
    
    //reset again
    reset=1;
    #10; reset=0;
    
    #50;
    $finish;  
   end
endmodule