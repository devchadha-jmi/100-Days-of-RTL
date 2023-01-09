module Day20_SR_FF(input s,
                   input r,
                   input clk,
                   input rst,
                   output reg Q);
  
  always @ (posedge clk)
    begin
      
      if(rst) begin
        Q <= 1'b0;
      end
      
      else begin
        casez ({s,r})
        2'b00: Q <= Q;
        2'b01: Q <= 1'b0;
        2'b10: Q <= 1'b1;
        2'b11: Q <= 1'bz;
      endcase
      end
      end
endmodule
