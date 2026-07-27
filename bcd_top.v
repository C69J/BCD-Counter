`timescale 1ns / 1ps
module bcd_top(
    input clk,
    input reset,
    input upordown,
    output [3:0] count,
    output [6:0] seg,
    output [3:0] an
);

    wire slow_clk;

    clock_divider cd1 (
        .clk_in(clk),
        .reset(reset),
        .clk_out(slow_clk)
    );

    bcdcounter bc1 (
        .clk(slow_clk),
        .reset(reset),
        .upordown(upordown),
        .count(count)
    );
    
    bcd_to_7segment bcd2 (
         .bcd(count),
         .seg(seg),
         .an(an));

endmodule