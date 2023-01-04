// D FF with active high asynchronous reset

module Day15_DFF_Async_Reset(input clk,
                            input rst,
                            input [3:0] d,
                            output reg [3:0] out);
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst) out <= 4'b0000;
      else     out <= d;
    end
endmodule