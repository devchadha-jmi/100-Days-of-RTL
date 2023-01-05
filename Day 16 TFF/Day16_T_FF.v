// T Flip Flop

module Day16_T_FF(input clk,
                  input [3:0]in,
                  input rst,            //active high reeset
                  output reg [3:0]t_out);
  
  always @(posedge clk)
    begin
      if(rst)
        t_out <= 4'b0000;
      else
        t_out <= ~in;
    end
endmodule