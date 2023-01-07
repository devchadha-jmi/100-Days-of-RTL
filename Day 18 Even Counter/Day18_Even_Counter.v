module Day18_Even_Counter (input clk,
  						   input rst,
  						   output reg [3:0] count);

always @(posedge clk) begin
  if (rst) begin
    count <= 4'b0000;
  end 
  else begin
    count <= count + 2'b10;
  end
end

endmodule