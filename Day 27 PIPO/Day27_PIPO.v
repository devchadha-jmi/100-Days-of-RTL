// Parallel-In Parallel-Out Shift Register

module Day27_PIPO(input[3:0] Din,
                  input rst,
                  input clk,
                  output reg [3:0] Dout);
  
  always @ (posedge clk)
    begin
      if (rst)
        Dout <= 4'b0000;
      else
        Dout <= Din;
    end
endmodule
  
        