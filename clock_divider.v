module clock_divider(
    input clk_in,
    input reset,
    output reg clk_out
);
    reg [26:0] counter;

 always @(posedge clk_in or posedge reset) 
    begin
      if (reset) 
        begin
            counter<=0;
            clk_out<=0;
        end 
      else if (counter==50000000-1)
        begin
            counter<=0;
            clk_out<=~clk_out;
        end 
      else
            counter<=counter+1;
    end
endmodule