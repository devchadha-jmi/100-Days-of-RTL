// D FF with active high synchronous reset

module Day14_DFF_Sync_Reset(input clk,
                            input rst,
                            input [3:0] d,
                            output reg [3:0] out);
  
  always @ (posedge clk)
    begin
      if (rst) out <= 4'b0000;
      else     out <= d;
    end
endmodule

